<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo $title ?> </h4>
                </div>
            </div>
            <div class="panel-body">


                <!-- Back Button -->

                <table class="datatable table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('Sl') ?></th>
                            <th><?php echo display('name') ?></th>
                            <th><?php echo display('date') ?></th>
                            <th><?php echo display('break_in') ?></th>
                            <th><?php echo display('break_out') ?></th>
                            <th><?php echo display('stay') ?></th>
                            <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($break_list == FALSE): ?>
                            <tr>
                                <td colspan="7" class="text-center">There are currently No Attendance</td>
                            </tr>
                        <?php else: ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($break_list as $row): ?>
                                <tr class="<?php echo ($sl & 1) ? "odd gradeX" : "even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo html_escape($row['first_name']) . ' ' . html_escape($row['last_name']); ?>
                                    </td>
                                    <td><?php echo html_escape($row['date']); ?></td>
                                    <td><?php echo html_escape($row['break_in']); ?></td>
                                    <td><?php echo html_escape($row['break_out']); ?></td>
                                    <td><?php echo html_escape($row['staytime']); ?></td>
                                    <td class="center">
                                        <?php if ($this->permission1->method('manage_attendance', 'update')->access()): ?>
                                            <a href="<?php echo base_url("edit_break/" . $row['break_id']) ?>"
                                                class="btn btn-s btn-info">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                        <?php endif; ?>
                                        <?php if ($this->permission1->method('manage_attendance', 'delete')->access()): ?>
                                            <a href="<?php echo base_url("hrm/attendance/delete_break/" . $row['break_id']) ?>"
                                                class="btn btn-s btn-danger"
                                                onclick="return confirm('<?php echo display('are_you_sure') ?>')">
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
</div>