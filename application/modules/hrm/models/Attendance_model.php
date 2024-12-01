<?php
defined('BASEPATH') or exit('No direct script access allowed');
use Jmrashed\Zkteco\Lib\ZKTeco;

class Attendance_model extends CI_Model
{
    public function __construct()
    {
        $ip = '192.168.1.201';
        $port = 4370; // Default ZKTeco port
        try {
            // Check if the IP is reachable within 3 seconds
            if ($this->isIpReachable($ip, $port, 3)) {
                $zk = new ZKTeco($ip);

                // Connect to the ZKTeco device
                if ($zk->connect()) {
                    // Get attendance log from ZKTeco
                    $attendanceLog = $zk->getAttendance();

                    // Process the attendance log
                    $this->processAttendanceRowEntries($attendanceLog);

                    // Disconnect the device
                    $zk->disconnect();
                } else {
                    echo "Failed to connect to the ZKTeco device.<br>";
                }
            } else {
                echo "ZKTeco Device/IP unreachable or connection timed out.<br>";
            }

            $this->processAttEntries();
        } catch (Exception $e) {
            echo 'Error: ' . $e->getMessage() . '<br>';
        }
    }

    private function processAttendanceRowEntries($attendanceLog)
    {
        if (!is_array($attendanceLog)) {
            echo "Failed to retrieve attendance log or no records found.<br>";
            return;
        }

        // Define the date range for the last two days
        $startDate = date('Y-m-d', strtotime('-1 days'));
        $endDate = date('Y-m-d');

        // Retrieve all records from the last 2 days from the database
        $existingRecords = $this->db->select('*')
            ->from('attendance_row_entry')
            ->where('date >=', $startDate)
            ->where('date <=', $endDate)
            ->get()
            ->result_array();

        // Create a map of existing UIDs for quick lookup
        $existingUids = [];
        foreach ($existingRecords as $record) {
            $existingUids[$record['uid']] = true;
        }

        // Filter the attendance log for the last 2 days
        $filteredAttendanceLog = array_filter($attendanceLog, function ($record) use ($startDate, $endDate) {
            $recordDate = date('Y-m-d', strtotime($record['timestamp']));
            return $recordDate >= $startDate && $recordDate <= $endDate;
        });

        // Insert new records into the database
        foreach ($filteredAttendanceLog as $record) {
            if (!isset($existingUids[$record['uid']])) {
                $data = [
                    'employee_zktec_id' => $record['id'],
                    'date' => date('Y-m-d', strtotime($record['timestamp'])),
                    'timestamp' => $record['timestamp'],
                    'type' => $record['type'],
                    'state' => $record['state'],
                    'uid' => $record['uid']
                ];
                $this->db->insert('attendance_row_entry', $data);
            }
        }
    }
    private function processAttEntries()
    {
        // Retrieve all unprocessed attendance records
        $attendanceRecords = $this->db->select('*')
            ->from('attendance_row_entry')
            ->where('processed', 0) // Select only unprocessed rows
            ->where_in('type', [1, 2]) // Select only checkIn and checkOut records (type = 3 and 4)
            ->order_by('date', 'ASC')
            ->order_by('timestamp', 'ASC')
            ->get()
            ->result();

        if (empty($attendanceRecords)) {
            return;
        }

        // Group records by date and employee
        $groupedRecords = [];
        foreach ($attendanceRecords as $record) {
            $groupedRecords[$record->date][$record->employee_zktec_id][] = $record;
        }

        foreach ($groupedRecords as $date => $employees) {
            foreach ($employees as $employeeId => $records) {
                $this->processEmployeeAttendance($employeeId, $records, $date);
            }
        }
    }
    private function processEmployeeAttendance($employeeId, $records, $date)
    {
        // $checkIn = null;

        // foreach ($records as $record) {
        //     if ($record->type == 1) { // att In
        //         // Check if a "sign in" record with the same EmployeeId and NULL "sign out" already exists
        //         $existingSignIn = $this->db->select('*')
        //             ->from('attendance')
        //             ->where('employee_zktec_id', $employeeId)
        //             ->where('date', $date)
        //             ->where('sign_out IS NULL')
        //             ->get()
        //             ->row();

        //         if (!$existingSignIn) {
        //             // Insert new "sign in" record if none exists
        //             $data = [
        //                 'employee_zktec_id' => $employeeId,
        //                 'date' => $date,
        //                 'sign_in' => $record->timestamp,
        //                 'sign_out' => null,
        //                 'staytime' => null
        //             ];
        //             $this->db->insert('attendance', $data);
        //             $checkIn = [
        //                 'att_id' => $this->db->insert_id(),
        //                 'sign_in' => $record->timestamp
        //             ];
        //         } else {
        //             $checkIn = [
        //                 'att_id' => $existingSignIn->att_id,
        //                 'sign_in' => $existingSignIn->sign_in
        //             ];
        //         }
        //     } elseif ($record->type == 2) { // sign Out
        //         if ($checkIn) {
        //             // Calculate stay time
        //             $checkInTime = new DateTime($checkIn['sign_in']);
        //             $signOutTime = new DateTime($record->timestamp);
        //             $stayTime = $checkInTime->diff($signOutTime)->format('%H:%I:%S');

        //             // Update the sign Out record
        //             $this->db->where('att_id', $checkIn['att_id'])
        //                 ->update('attendance', [
        //                     'sign_out' => $record->timestamp,
        //                     'staytime' => $stayTime
        //                 ]);

        //             // Reset sign In for the next cycle
        //             $checkIn = null;
        //         } else {
        //             // Find the nearest "sign in" record with null "sign out"
        //             $checkInRecord = $this->db->select('*')
        //                 ->from('attendance')
        //                 ->where('employee_zktec_id', $employeeId)
        //                 ->where('date', $date)
        //                 ->where('sign_out IS NULL')
        //                 ->order_by('sign_in', 'ASC')
        //                 ->get()
        //                 ->row();

        //             if ($checkInRecord) {
        //                 // Calculate stay time
        //                 $checkInTime = new DateTime($checkInRecord->sign_in);
        //                 $signOutTime = new DateTime($record->timestamp);
        //                 $stayTime = $checkInTime->diff($signOutTime)->format('%H:%I:%S');

        //                 // Update the existing att record
        //                 $this->db->where('att_id', $checkInRecord->att_id)
        //                     ->update('attendance', [
        //                         'sign_out' => $record->timestamp,
        //                         'staytime' => $stayTime
        //                     ]);
        //             }
        //         }
        //     }

        //     // Mark the current record as processed
        //     $this->db->where('uid', $record->uid)
        //         ->update('attendance_row_entry', ['processed' => 1]);
        // }
        try {
            // Ensure records are processed in ascending order of timestamp
            usort($records, function ($a, $b) {
                return strtotime($a->timestamp) - strtotime($b->timestamp); // Fix: Use -> for objects
            });

            foreach ($records as $record) {
                if ($record->type == 1) { // Check In
                    // Insert a new record with check_in and sign_out = NULL
                    $data = [
                        'employee_zktec_id' => $employeeId, // Fix: Use $employeeId passed to the function
                        'date' => $date, // Use $date passed to the function
                        'sign_in' => $record->timestamp,
                        'sign_out' => null,
                        'staytime' => null,
                    ];
                    $this->db->insert('attendance', $data);
                } elseif ($record->type == 2) { // Sign Out
                    // Find the earliest unpaired sign-in (sign_out = NULL)
                    $signInRecord = $this->db->select('*')
                        ->from('attendance')
                        ->where('employee_zktec_id', $employeeId) // Fix: Use $employeeId for filtering
                        ->where('date', $date) // Fix: Use $date for filtering
                        ->order_by('sign_in', 'DESC')
                        ->get()
                        ->row();

                    if ($signInRecord && !$signInRecord->sign_out) {
                        // Pair the break-in with this Sign-out
                        $signInTime = new DateTime($signInRecord->sign_in);
                        $signOutTime = new DateTime($record->timestamp);
                        $stayTime = $signInTime->diff($signOutTime)->format('%H:%I:%S');

                        // Update the existing record
                        $this->db->where('att_id', $signInRecord->att_id)
                            ->update('attendance', [
                                'sign_out' => $record->timestamp,
                                'staytime' => $stayTime,
                            ]);
                    } else {
                        // No unpaired break-in found; create a record with sign_in = NULL
                        $data = [
                            'employee_zktec_id' => $employeeId,
                            'date' => $date,
                            'sign_in' => null,
                            'sign_out' => $record->timestamp,
                            'staytime' => null,
                        ];
                        $this->db->insert('attendance', $data);
                    }
                }

                // Mark the current record as processed
                $this->db->where('uid', $record->uid)
                    ->update('attendance_row_entry', ['processed' => 1]);
            }
        } catch (Exception $e) {
            echo "An error occurred while processing attendance entries: " . $e->getMessage() . "<br>";
        }
    }


    function isIpReachable($ip, $port = 4370, $timeout = 5)
    {
        $connection = @stream_socket_client(
            "tcp://{$ip}:{$port}",
            $errno,
            $errstr,
            $timeout
        );
        if ($connection) {
            fclose($connection);
            return true;
        }
        return false;
    }

    public function atten_create($data = array())
    {
        return $this->db->insert('attendance', $data);
    }

    public function signout($data = [])
    {
        return $this->db->where('att_id', $data['att_id'])
            ->update('attendance', $data);
    }
    public function update_attendance($id, $data)
    {
        return $this->db->where('att_id', $id)->update('attendance', $data);
    }




    public function delete_attendance($id)
    {
        $this->db->where('att_id', $id)
            ->delete("attendance");
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }


    public function attn_updateForm($id)
    {
        $this->db->where('att_id', $id);
        $query = $this->db->get('attendance');
        return $query->result_array();
    }

    public function attendance_list_count()
    {
        $this->db->select('*');
        $this->db->from('attendance');
        $this->db->order_by('att_id', 'DESC');
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;

    }

    public function manage_attendance($per_page = null, $page = null)
    {
        $this->db->select('a.*,b.first_name,b.last_name');
        $this->db->from('attendance a');
        $this->db->join('employee_history b', 'a.employee_zktec_id=b.employee_zktec_id');
        $this->db->order_by('a.modified_on', 'DESC');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }


    public function designation_list()
    {
        return $this->db->select('*')
            ->from('designation')
            ->get()
            ->result_array();
    }

    public function employee_dropdown()
    {
        $this->db->select('*');
        $this->db->from('employee_history');
        $query = $this->db->get();
        $data = $query->result();

        $list = array('' => 'Select One...');
        if (!empty($data)) {
            foreach ($data as $value) {
                $list[$value->employee_zktec_id] = $value->first_name . ' ' . $value->last_name . "(Finger Print Id: " . $value->employee_zktec_id . ")";
            }
        }
        return $list;
    }

    //attendance List
    public function attendance_list()
    {
        // date_default_timezone_set('Asia/Colombo');

        // $date = date('Y-m-d');
        // $query = $this->db->select("count(DISTINCT(e.att_id)) as att_id,e.*,p.id,p.first_name,p.last_name")->join('employee_history p', 'e.employee_id = p.id', 'left')->where('e.date', $date)->group_by('e.att_id')->order_by('e.att_id', 'desc')->get('attendance e');
        // if ($query->num_rows() > 0) {
        //     return $query->result_array();
        // } else {
        //     return FALSE;
        // }

        date_default_timezone_set('Asia/Colombo');
        $query = $this->db->select("e.*,p.id,p.first_name,p.last_name")->join('employee_history p', 'e.employee_zktec_id = p.employee_zktec_id', 'left')->order_by('e.date', 'desc')->get('attendance e');
        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return FALSE;
        }
    }

    public function datewiseReport($format_start_date, $format_end_date)
    {
        // $this->db->select('e.*,count(DISTINCT(p.id)) as emp_his_id,p.id,p.first_name,p.last_name');
        // $this->db->from('attendance e');
        // $this->db->join('employee_history p', 'e.employee_id = p.id', 'left');
        // $this->db->where('e.date >=', $format_start_date);
        // $this->db->where('e.date <=', $format_end_date);
        // $this->db->group_by('e.att_id');
        // $query = $this->db->get();
        // $result = $query->result();
        // return $result;
        $query = $this->db
            ->select("e.*, p.first_name, p.last_name")
            ->from("attendance e")
            ->join("employee_history p", "e.employee_zktec_id = p.employee_zktec_id", "left")
            ->where("e.date >=", $format_start_date)
            ->where("e.date <=", $format_end_date)
            ->order_by("e.date", "desc")
            ->get();

        if ($query->num_rows() > 0) {
            // Fetch result array
            $result = $query->result_array();
            // Return the result array
            return $result;
        } else {
            return FALSE;
        }

    }

    public function check_exist($employee_id, $date)
    {
        $this->db->select('*');
        $this->db->from('attendance');
        $this->db->where('employee_id', $employee_id);
        $this->db->where('date', $date);
        $query = $this->db->get();
        return $query->num_rows();

    }

    public function emp_information($id)
    {
        $this->db->select('a.*,b.designation as emdesignation');
        $this->db->from('employee_history a');
        $this->db->join('designation b', 'a.designation=b.id');
        $this->db->where('a.employee_zktec_id', $id);
        $ab = $this->db->get();
        return $ab->result_array();
    }

    function search($id, $start_date, $end_date)
    {
        if (!empty($id)) {
            $this->db->from('attendance');
            $this->db->where('employee_zktec_id', $id);
            $this->db->where('date >=', $start_date);
            $this->db->where('date <=', $end_date);
            $query = $this->db->get();
            return $query->result();
        } else {
            echo 'Sorry Enter Employee Id';
        }
    }
    function totalWorkHours($id, $start_date, $end_date)
    {
        if (!empty($id)) {
            $this->db->select("SEC_TO_TIME(SUM(TIME_TO_SEC(staytime))) as total_staytime");
            $this->db->from('attendance');
            $this->db->where('employee_zktec_id', $id);
            $this->db->where('date >=', $start_date);
            $this->db->where('date <=', $end_date);
            $query = $this->db->get();

            $result = $query->row();
            return $result ? $result->total_staytime : '00:00:00';
        } else {
            return 'Sorry, please enter Employee ID.';
        }
    }

    //Breakfast allowance report
    public function breakfastAllowanceReport($format_date)
    {
        $query = $this->db
            ->select("e.employee_zktec_id, p.first_name, p.last_name, MIN(e.sign_in) as earliest_sign_in")
            ->from("attendance e")
            ->join("employee_history p", "e.employee_zktec_id = p.employee_zktec_id", "left")
            ->where("e.date", $format_date)
            ->where("TIME(e.sign_in) <=", "09:00:00") // Filter for sign-in time on or before 9:00 AM
            ->group_by("e.employee_zktec_id") // Ensure distinct employees
            ->order_by("earliest_sign_in", "asc") // Order by earliest sign-in time
            ->get();

        if ($query->num_rows() > 0) {
            // Fetch result array
            $result = $query->result_array();
            // Return the result array
            return $result;
        } else {
            return FALSE;
        }
    }
}

