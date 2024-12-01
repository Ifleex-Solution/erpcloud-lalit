<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo $title ?> </h4>
                </div>
            </div>

            <div class="panel-body">


                <?php echo form_open('edit_break/' . $data[0]['break_id']) ?>

                <input name="att_id" type="hidden" value="<?php echo html_escape($data[0]['break_id']) ?>">

                <div class="form-group row">
                    <label for="emp_id" class="col-sm-3 col-form-label"><?php echo display('employee_name') ?> <span
                            class="text-danger"> * </span></label>
                    <div class="col-sm-9">
                        <?php echo form_dropdown('employee_id', $dropdownatn, (!empty($data[0]['employee_zktec_id']) ? $data[0]['employee_zktec_id'] : null), 'class="form-control" id="employee_id" disabled') ?>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?> <span
                            class="text-danger"> * </span></label>
                    <div class="col-sm-9">
                        <input name="date" class="form-control datepicker" type="text" id="date"
                            value="<?php echo html_escape($data[0]['date']) ?>">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="break_in" class="col-sm-3 col-form-label"><?php echo display('break_in') ?> <span
                            class="text-danger"> * </span></label>
                    <div class="col-sm-9">
                        <input name="break_in"
                            value="<?php echo @$sign_in = html_escape(date("H:i", strtotime($data[0]['break_in']))) ?>"
                            class="form-control timepicker" type="text" id="break_in" required>
                    </div>
                </div>


                <div class="form-group row">
                    <label for="break_out" class="col-sm-3 col-form-label"><?php echo display('break_out') ?> </label>
                    <div class="col-sm-9">
                        <input type="text" name="break_out"
                            value="<?php echo @$sign_out = html_escape(date("H:i", strtotime($data[0]['break_out']))) ?>"
                            class="form-control timepicker" id="break_out">
                    </div>
                </div>

                <div class="form-group text-right">

                    <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('update') ?></button>
                </div>

                <?php echo form_close() ?>
            </div>
        </div>
    </div>
</div>