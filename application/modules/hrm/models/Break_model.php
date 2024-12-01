<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Break_model extends CI_Model
{
    public function __construct()
    {
        try {
            $this->processBreakEntries();
        } catch (Exception $e) {
            echo '' . $e->getMessage() . '<br>';
        }
    }

    private function processBreakEntries()
    {
        // Retrieve all unprocessed attendance records
        $attendanceRecords = $this->db->select('*')
            ->from('attendance_row_entry')
            ->where('processed', 0) // Select only unprocessed rows
            ->where_in('type', [3, 4]) // Select only break records (type = 3 and 4)
            ->order_by('date', 'ASC')
            ->order_by('timestamp', 'ASC')
            ->get()
            ->result();

        if (empty($attendanceRecords)) {
            return;
        }

        // Group records by date and employee ID
        $groupedRecords = [];
        foreach ($attendanceRecords as $record) {
            $groupedRecords[$record->date][$record->employee_zktec_id][] = $record;
        }

        foreach ($groupedRecords as $date => $employees) {
            foreach ($employees as $employeeId => $records) {
                $this->processEmployeeBreaks($employeeId, $records, $date);
            }
        }
    }

    private function processEmployeeBreaks($employeeId, $records, $date)
    {
        try {
            // Ensure records are processed in ascending order of timestamp
            usort($records, function ($a, $b) {
                return strtotime($a->timestamp) - strtotime($b->timestamp); // Fix: Use -> for objects
            });

            foreach ($records as $record) {
                if ($record->type == 3) { // Break In
                    // Insert a new record with break_in and break_out = NULL
                    $data = [
                        'employee_zktec_id' => $employeeId, // Fix: Use $employeeId passed to the function
                        'date' => $date, // Use $date passed to the function
                        'break_in' => $record->timestamp,
                        'break_out' => null,
                        'staytime' => null,
                    ];
                    $this->db->insert('break_employee', $data);
                } elseif ($record->type == 4) { // Break Out
                    // Find the earliest unpaired break-in (break_out = NULL)
                    $breakInRecord = $this->db->select('*')
                        ->from('break_employee')
                        ->where('employee_zktec_id', $employeeId) // Fix: Use $employeeId for filtering
                        ->where('date', $date) // Fix: Use $date for filtering
                        ->order_by('break_in', 'DESC')
                        ->get()
                        ->row();

                    if ($breakInRecord && !$breakInRecord->break_out) {
                        // Pair the break-in with this break-out
                        $breakInTime = new DateTime($breakInRecord->break_in);
                        $breakOutTime = new DateTime($record->timestamp);
                        $stayTime = $breakInTime->diff($breakOutTime)->format('%H:%I:%S');

                        // Update the existing record
                        $this->db->where('break_id', $breakInRecord->break_id)
                            ->update('break_employee', [
                                'break_out' => $record->timestamp,
                                'staytime' => $stayTime,
                            ]);
                    } else {
                        // No unpaired break-in found; create a record with break_in = NULL
                        $data = [
                            'employee_zktec_id' => $employeeId,
                            'date' => $date,
                            'break_in' => null,
                            'break_out' => $record->timestamp,
                            'staytime' => null,
                        ];
                        $this->db->insert('break_employee', $data);
                    }
                }

                // Mark the current record as processed
                $this->db->where('uid', $record->uid)
                    ->update('attendance_row_entry', ['processed' => 1]);
            }
        } catch (Exception $e) {
            echo "An error occurred while processing break entries: " . $e->getMessage() . "<br>";
        }
    }

    public function delete_break($id)
    {
        $this->db->where('break_id', $id)
            ->delete("break_employee");
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }
    public function update_break($id, $data)
    {
        return $this->db->where('break_id', $id)->update('break_employee', $data);
    }


    public function break_updateForm($id)
    {
        $this->db->where('break_id', $id);
        $query = $this->db->get('break_employee');
        return $query->result_array();
    }

    public function break_list_count()
    {
        $this->db->select('*');
        $this->db->from('break_employee');
        $this->db->order_by('break_id', 'DESC');
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;

    }

    public function manage_break($per_page = null, $page = null)
    {
        $this->db->select('a.*,b.first_name,b.last_name');
        $this->db->from('break_employee a');
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
                $list[$value->employee_zktec_id] = $value->first_name . ' ' . $value->last_name . " (Finger Print Id: " . $value->employee_zktec_id . ")";
            }
        }
        return $list;
    }

    //attendance List
    public function break_list()
    {
        date_default_timezone_set('Asia/Colombo');
        $query = $this->db->select("e.*,p.id,p.first_name,p.last_name")->join('employee_history p', 'e.employee_zktec_id = p.employee_zktec_id', 'left')->order_by('e.break_in', 'desc')->get('break_employee e');
        if ($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return FALSE;
        }
    }

    public function datewiseReport($format_start_date, $format_end_date)
    {
        $query = $this->db
            ->select("e.*, p.first_name, p.last_name")
            ->from("break_employee e")
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
            $this->db->from('break_employee');
            $this->db->like('employee_zktec_id', $id);
            $this->db->where('date >=', $start_date);
            $this->db->where('date <=', $end_date);
            $query = $this->db->get();
            return $query->result();
        } else {
            echo 'Please Select an Employee';
        }
    }
    function searchTotals($id, $start_date, $end_date)
    {
        if (!empty($id)) {
            $this->db->select('date, SEC_TO_TIME(SUM(TIME_TO_SEC(staytime))) as total_staytime');
            $this->db->from('break_employee');
            $this->db->where('employee_zktec_id', $id);
            $this->db->where('date >=', $start_date);
            $this->db->where('date <=', $end_date);
            $this->db->group_by('date'); // Group by date to get totals per day
            $this->db->order_by("date", "desc");

            $query = $this->db->get();
            return $query->result();
        } else {
            echo 'Sorry, please enter an Employee ID';
        }
    }


}

