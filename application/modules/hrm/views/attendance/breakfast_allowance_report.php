<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <!-- Back Button -->
               
                <div class="panel-title">
                    <h4><?php echo display('breakfast_allowance_report') ?></h4>
                </div>

            </div>

            <div class="panel-body">
                <div class="row">

                    <table width="100%" class="datatable table table-striped table-bordered table-hover">
                        <caption>
                            <center>
                                <h2><?php echo display('Date') . ' : ' . $date ?></h2>
                            </center>
                        </caption>
                        <thead>
                            <tr>
                                <th><?php echo display('Sl') ?></th>
                                <th><?php echo display('employee_name') ?></th>
                                <th><?php echo display('sign_in') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($records)) { ?>

                                <?php $sl = 1; ?>
                                <?php foreach ($records as $record) {
                                    ?>
                                    <tr class="<?php echo ($sl & 1) ? "odd gradeX" : "even gradeC" ?>">
                                        <td><?php echo $sl; ?></td>
                                        <td><?php echo html_escape($record['first_name']) . ' ' . html_escape($record['last_name']); ?>
                                        </td>
                                        <td><?php echo html_escape($record['earliest_sign_in']); ?></td>
                                    </tr>
                                    <?php $sl++; ?>
                                <?php } ?>
                            <?php } ?>
                        </tbody>
                    </table> <!-- /.table-responsive -->

                </div>
            </div>
        </div>
    </div>

</div>