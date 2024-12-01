<style>
    .panel-heading {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .button-group {
        display: flex;
        gap: 10px;
        /* Optional: Adds space between buttons */
    }
</style>

<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading d-flex justify-content-between align-items-center">
                <h4><?php echo display('break_report') ?></h4>
                <div class="button-group">
                    <?php
                    $add0 = [
                        'type' => 'button',
                        'class' => "btn btn-primary btn-md",
                        'data-target' => "#add0",
                        'data-toggle' => "modal",
                        'value' => display('datewise_report')
                    ];
                    $add = [
                        'type' => 'button',
                        'class' => "btn btn-primary btn-md",
                        'data-target' => "#add",
                        'data-toggle' => "modal",
                        'value' => display('employee_wise_report')
                    ];

                    echo form_input($add0);
                    echo form_input($add);
                    ?>
                </div>
            </div>

            <div class="panel-body">
                <div class="row">


                    <!-- Table Area -->
                    <table class="datatable table table-striped table-bordered table-hover">
                        <caption><?php echo display('report_view') ?></caption>
                        <thead>
                            <tr>
                                <th><?php echo display('Sl') ?></th>
                                <th><?php echo display('name') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('break_in') ?></th>
                                <th><?php echo display('break_out') ?></th>
                                <th><?php echo display('stay') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if ($attendance_list == FALSE): ?>
                                <tr>
                                    <td colspan="7" class="text-center">There are currently No Information</td>
                                </tr>
                            <?php else: ?>
                                <?php $sl = 1; ?>
                                <?php foreach ($attendance_list as $row): ?>
                                    <tr class="<?php echo ($sl & 1) ? "odd gradeX" : "even gradeC" ?>">
                                        <td><?php echo $sl; ?></td>
                                        <td><?php echo html_escape($row['first_name']) . ' ' . html_escape($row['last_name']); ?>
                                        </td>
                                        <td><?php echo html_escape($row['date']); ?></td>
                                        <td><?php echo html_escape($row['break_in']); ?></td>
                                        <td><?php echo html_escape($row['break_out']); ?></td>
                                        <td><?php echo html_escape($row['staytime']); ?></td>
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
                            <?php endif; ?>
                        </tbody>
                        <tfoot>
                            <td colspan="5" class="text-right"><strong>Total Stay Time:</strong></td>
                            <td><strong>
                                    <?php
                                    // Convert the total seconds back into hh:mm:ss format
                                    $total_hours = floor($total_seconds / 3600);
                                    $total_minutes = floor(($total_seconds % 3600) / 60);
                                    $total_seconds_left = $total_seconds % 60;

                                    echo sprintf("%02d:%02d:%02d", $total_hours, $total_minutes, $total_seconds_left);
                                    ?>
                                </strong></td>
                        </tfoot>
                    </table>

                    <!-- Modals -->
                    <div id="add" class="modal fade" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <strong><?php echo display('employee_wise_report') ?></strong>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <?php echo form_open('userwise_break_report', ['name="myForm"']) ?>
                                                    <div class="form-group row">
                                                        <label for="employee_id"
                                                            class="col-sm-3 col-form-label"><?php echo display('employee_name') ?>
                                                            <span class="text-danger">*</span></label>
                                                        <div class="col-sm-9">
                                                            <?php echo form_dropdown('employee_id', $dropdownatn, (!empty($employee_id) ? $employee_id : null), 'class="form-control" id="employee_id" required') ?>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="date"
                                                            class="col-sm-3 col-form-label"><?php echo display('start_date') ?>
                                                            <span class="text-danger">*</span></label>
                                                        <div class="col-sm-9">
                                                            <input name="s_date" class="datepicker form-control"
                                                                type="text"
                                                                placeholder="<?php echo display('start_date') ?>"
                                                                id="a_date" value="<?php echo date("Y-m-d") ?>" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="end_date"
                                                            class="col-sm-3 col-form-label"><?php echo display('end_date') ?>
                                                            <span class="text-danger">*</span></label>
                                                        <div class="col-sm-9">
                                                            <input name="e_date" class="datepicker form-control"
                                                                type="text"
                                                                placeholder="<?php echo display('end_date') ?>"
                                                                id="b_date" value="<?php echo date("Y-m-d") ?>" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group text-right">
                                                        <button type="submit"
                                                            class="btn btn-success w-md m-b-5">Generate Report</button>
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

                    <div id="add0" class="modal fade" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <strong>Datewise Report</strong>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <?php echo form_open('datewise_break_report') ?>
                                                    <div class="form-group row">
                                                        <label for="date"
                                                            class="col-sm-3 col-form-label"><?php echo display('start_date') ?>
                                                            <span class="text-danger">*</span></label>
                                                        <div class="col-sm-9">
                                                            <input name="start_date" class="datepicker form-control"
                                                                type="text"
                                                                placeholder="<?php echo display('start_date') ?>"
                                                                id="start_date" value="<?php echo date("Y-m-d") ?>" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="end_date"
                                                            class="col-sm-3 col-form-label"><?php echo display('end_date') ?>
                                                            <span class="text-danger">*</span></label>
                                                        <div class="col-sm-9">
                                                            <input name="end_date" class="datepicker form-control"
                                                                type="text"
                                                                placeholder="<?php echo display('end_date') ?>"
                                                                id="end_date" value="<?php echo date("Y-m-d") ?>" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group text-right">
                                                        <button type="submit"
                                                            class="btn btn-success w-md m-b-5">Generate Report</button>
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
                    <!-- /.table-responsive -->
                </div>
            </div>
        </div>
    </div>
</div>