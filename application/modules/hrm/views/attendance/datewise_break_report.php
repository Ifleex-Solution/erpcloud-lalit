<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <!-- Back Button -->

                <div class="panel-title">
                    <h4><?php echo display('datewise_report'); ?></h4>
                </div>

            </div>
            <div class="panel-body">
                <div class="row">
                    <table width="100%" class="datatable table table-striped table-bordered table-hover">
                        <caption>

                            <center>
                                <?php echo display('from') . ' -' . $from_date .'&nbsp;&nbsp;&nbsp;'.  ' ' . display('to') . ' -' . $to_date ?>
                            </center>
                        </caption>
                        <thead>
                            <tr>
                                <th><?php echo display('Sl') ?></th>
                                <th><?php echo display('employee_name') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('break_in') ?></th>
                                <th><?php echo display('break_out') ?></th>
                                <th><?php echo display('stay') ?></th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($records)) { ?>
                                <?php $sl = 1; ?>
                                <?php foreach ($records as $record) { ?>
                                    <tr class="<?php echo ($sl & 1) ? "odd gradeX" : "even gradeC" ?>">
                                        <td><?php echo $sl; ?></td>
                                        <td><?php echo html_escape($record['first_name']) . ' ' . html_escape($record['last_name']); ?>
                                        </td>
                                        <td><?php echo html_escape($record['date']); ?></td>
                                        <td><?php echo html_escape($record['break_in']); ?></td>
                                        <td><?php echo html_escape($record['break_out']); ?></td>
                                        <td><?php echo html_escape($record['staytime']); ?></td>
                                    </tr>
                                    <?php
                                    // Convert the 'staytime' (hh:mm:ss) into total seconds for easy summation
                                    if (!empty($record['staytime'])) {
                                        list($hours, $minutes, $seconds) = explode(":", $record['staytime']);
                                        $total_seconds += ($hours * 3600) + ($minutes * 60) + $seconds;
                                    } else {
                                        // If staytime is empty, we add 0 to the total_seconds
                                        $total_seconds += 0;
                                    }
                                    ?>
                                    <?php $sl++; ?>
                                <?php } ?>
                            <?php } ?>
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
                    </table> <!-- /.table-responsive -->

                </div>
            </div>
        </div>
    </div>

</div>