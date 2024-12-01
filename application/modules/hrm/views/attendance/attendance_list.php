<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo $title ?> </h4>
                </div>
            </div>
            <div class="panel-body">
                <table  class="datatable table table-striped table-bordered table-hover">
                    <caption><?php echo display('attendance_list') ?></caption>
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('name') ?></th>
                            <th><?php echo display('date') ?></th>
                            <th><?php echo display('checkin') ?></th>
                            <th><?php echo display('checkout') ?></th>
                            <th><?php echo display('stay') ?></th>
                            <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($attendance_list == FALSE): ?>
                            <tr>
                                <td colspan="7" class="text-center">There are currently No Attendance</td>
                            </tr>
                        <?php else: ?>
                            <?php $sl = 1; ?>
                            <?php $total_seconds = 0; // Initialize a variable to hold the total time in seconds 
                            ?>
                            <?php foreach ($attendance_list as $row): ?>
                                <tr class="<?php echo ($sl & 1) ? "odd gradeX" : "even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo html_escape($row['first_name']) . ' ' . html_escape($row['last_name']); ?></td>
                                    <td><?php echo html_escape($row['date']); ?></td>
                                    <td><?php echo html_escape($row['sign_in']); ?></td>
                                    <td><?php echo html_escape($row['sign_out']); ?></td>
                                    <td><?php echo html_escape($row['staytime']); ?></td>
                                    <td class="center">
                                        <?php if ($this->permission1->method('manage_attendance', 'update')->access()): ?>
                                            <a href="<?php echo base_url("edit_attendance/" . $row['att_id']) ?>" class="btn btn-s btn-info">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                        <?php endif; ?>
                                        <?php if ($this->permission1->method('manage_attendance', 'delete')->access()): ?>
                                            <a href="<?php echo base_url("hrm/attendance/bdtask_delete_attendance/" . $row['att_id']) ?>"
                                                class="btn btn-s btn-danger" onclick="return confirm('<?php echo display('are_you_sure') ?>')">
                                                <i class="fa fa-trash" aria-hidden="true"></i>
                                            </a>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php
                                // Convert the 'staytime' (hh:mm:ss) into total seconds for easy summation
                                if (!empty($row['staytime'])) {
                                    list($hours, $minutes, $seconds) = explode(":", $row['staytime']);
                                    $total_seconds += ($hours * 3600) + ($minutes * 60) + $seconds;
                                } else {
                                    // If staytime is empty, we add 0 to the total_seconds
                                    $total_seconds += 0;
                                }
                                ?>
                                <?php $sl++; ?>
                            <?php endforeach; ?>
                            <!-- Display the total staytime at the end of the table -->

                        <?php endif; ?>
                    </tbody>
                    <tfoot>
                        <td colspan="5" class="text-right"><strong>Total Stay Time:</strong></td>
                        <td ><strong>
                                <?php
                                // Convert the total seconds back into hh:mm:ss format
                                $total_hours = floor($total_seconds / 3600);
                                $total_minutes = floor(($total_seconds % 3600) / 60);
                                $total_seconds_left = $total_seconds % 60;

                                echo sprintf("%02d:%02d:%02d", $total_hours, $total_minutes, $total_seconds_left);
                                ?>
                            </strong></td>
                            <td></td>
                    </tfoot>

                </table>



                <div class="text-right"><?php echo $links ?></div>
            </div>
        </div>
    </div>

    <div id="signoutModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <strong>
                        <center><?php echo display('sign_out') ?></center>
                    </strong>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <div class="panel panel-bd">
                                <div class="panel-body">
                                    <?php echo form_open('hrm/attendance/sign_out/', ['id' => 'add_signout']) ?>
                                    <input name="attendance_id" id="att_id" type="hidden" value="">
                                    <div class="form-group row">
                                        <label for="sign_in"
                                            class="col-sm-3 col-form-label"><?php echo display('sign_in') ?></label>
                                        <div class="col-sm-9">
                                            <input type="text" name="sign_in" class="form-control timepicker"
                                                id="sign_inss" readonly="">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="sign_out"
                                            class="col-sm-3 col-form-label"><?php echo display('sign_out') ?></label>
                                        <div class="col-sm-9">
                                            <input type="text" name="sign_out" class="form-control timepicker"
                                                id="sign_out" value="" required="">
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">&times;
                                            Cancel</button>
                                        <button type="submit"
                                            class="btn btn-primary"><?php echo display('confirm') ?></button>
                                    </div>
                                    <?php echo form_close() ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    "use strict";

    function signout(att_id, sign_ins) {
        document.getElementById('att_id').value = att_id;
        document.getElementById('sign_inss').value = sign_ins;
        $("#signoutModal").modal('show');
    }

    $(document).ready(function() {

        "use strict";
        var frm = $("#add_signout");
        frm.on('submit', function(e) {
            e.preventDefault();
            $.ajax({
                url: $(this).attr('action'),
                method: $(this).attr('method'),
                dataType: 'json',
                data: frm.serialize(),
                success: function(data) {
                    if (data.status == true) {
                        toastr["success"](data.message);
                        setTimeout(function() {}, 1000);
                        location.reload();
                    } else {
                        toastr["error"](data.exception);
                    }
                },
                error: function(xhr) {
                    alert('failed!');
                }
            });
        });
    });
</script>