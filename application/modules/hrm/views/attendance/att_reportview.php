<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <!-- Back Button -->
                    <h4>Employee Wise Report </h4>

                </div>
            </div>

            <div class="panel-body">
                <div class="row" id="printableArea">

                    <!-- Attendance Table -->
                    <table class="datatable table table-striped table-bordered table-hover" width="100%">
                        <caption>
                            <center>
                                <?php echo display('from') . ' -'  . $start_date . '&nbsp;&nbsp;&nbsp;' . display('to') . ' -' . $end_date ?>
                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <?php echo display('name'); ?>:
                                <?php
                                echo html_escape($firstname) . " " . html_escape($lastname);
                                ?>
                            </center>
                        </caption>
                        <thead>
                            <tr>
                                <th><?php echo display('sl'); ?></th>
                                <th><?php echo display('date'); ?></th>
                                <th><?php echo display('checkin'); ?></th>
                                <th><?php echo display('checkout'); ?></th>
                                <th><?php echo display('work_hour'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $x = 1;
                            foreach ($query as $qr) { ?>
                                <tr>
                                    <td><?php echo $x++; ?></td>
                                    <td><?php echo html_escape($qr->date); ?></td>
                                    <td><?php echo html_escape($qr->sign_in); ?></td>
                                    <td><?php echo html_escape($qr->sign_out); ?></td>
                                    <td><?php echo html_escape($qr->staytime); ?></td>
                                </tr>
                                <?php
                                // Convert the 'staytime' (hh:mm:ss) into total seconds for easy summation
                                if (!empty($qr->staytime)) {
                                    list($hours, $minutes, $seconds) = explode(":", $qr->staytime);
                                    $total_seconds += ($hours * 3600) + ($minutes * 60) + $seconds;
                                } else {
                                    // If staytime is empty, we add 0 to the total_seconds
                                    $total_seconds += 0;
                                }
                                ?>
                            <?php } ?>
                        </tbody>
                        <tfoot>
                            <td colspan="4" class="text-right"><strong>Total Stay Time:</strong></td>
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

                </div>
            </div>
        </div>
    </div>
</div>