<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.1.1/crypto-js.min.js"></script>
<!-- Sales report -->
<style>
    input[type="password"]::-ms-reveal,
    input[type="password"]::-ms-clear {
        display: none;
    }
</style>
<div class="row">
    <div class="col-sm-15">
        <div class="panel panel-default">
            <h3 style="margin-left: 30px;">Employee Sales Report</h3>
            <br />
            <div class="panel-body" style="margin-left: 120px;">


                <?php
                date_default_timezone_set('Asia/Colombo');

                $today = date('Y-m-d');
                ?>
                <div class="form-group">
                    <label for="employee">Employee</label>
                    <div class="input-group mr-4" style="width: 200px;">

                        <select name="employee_id" class="form-control" id="employeeid"  style="width: 200px;">
                            <option value=""></option>
                            <?php foreach ($employee_list as $employee) { ?>
                                <option value="<?php echo  $employee['id'] ?>"
                                    <?php if ($employee['id'] == $employee_id) {
                                        echo 'selected';
                                    } ?>>
                                    <?php echo  $employee['first_name'] . ' ' . $employee['last_name'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group" style="margin-bottom: 10px;">
                    <input type="checkbox" id="single_date_checkbox" name="single_date_checkbox">
                    <label for="single_date_checkbox">Single Date</label>
                </div>
                <div class="form-group" style="display: flex; gap: 20px;">
                    <div>
                        <label for="from_date">From Date: </label>
                        <input type="text" name="from_date" class="form-control datepicker" id="from_date"
                            placeholder="<?php echo display('start_date') ?>" value="<?php echo $today ?>" style="width: 200px;">
                    </div>
                    <div id="to_date_container">
                        <div>
                            <label for="to_date">To Date:</label>
                            <input type="text" name="to_date" class="form-control datepicker" id="to_date"
                                placeholder="<?php echo display('end_date') ?>" value="<?php echo $today ?>" style="width: 200px;">
                        </div>
                    </div>
                </div>


                <div class="form-group">
                <?php if ($this->permission1->method('sales_report_employee_wise', 'view')->access()) { ?>
                    <label for="empid" class="mr-2 mb-0">Emp Id</label>
                        <div class="input-group mr-4" style="width: 200px;">
                            <select tabindex="4" class="form-control" name="empid" id="empid" style="width: 100%;">
                                <option value="">Select Employee ID</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="All">All</option>
                            </select>
                        </div>
                    <?php } else { ?>
                        <input type="hidden" tabindex="4" class="form-control" name="empid" id="empid" value="A">
                    <?php } ?>
                </div>


                <button type="button" id="btn-filter" class="btn btn-success" onclick="onFilterButtonClick()">
                   Generate Report
                </button>
            </div>
        </div>
    </div>
</div>

<input type="hidden" name="baseUrl2" id="baseUrl2" class="baseUrl" value="<?php echo base_url(); ?>" />

<script src="<?php echo base_url('my-assets/js/admin_js/sales_report.js') ?>" type="text/javascript"></script>
<script>
    function onFilterButtonClick() {
        $.ajax({
            type: "post",
            url: $('#baseUrl2').val() + 'report/report/employeewisereport',
            data: {
                from_date: $('#from_date').val(),
                to_date: document.getElementById('single_date_checkbox').checked ? $('#from_date').val() : $('#to_date').val(),
                empid: $('#empid').val(),
                employeeid:$('#employeeid').val(),
                istype: document.getElementById('single_date_checkbox').checked

            },
            success: function(data1) {
                datas = JSON.parse(data1);
                if (datas.length !=0) {
                    window.open(`generate_employeesales`, '_blank');

                } else {
                    alert("There is no data available for the selected parameters.")
                }

              

            }
        });
        //window.open(`generate_employeesales`, '_blank');


    }
</script>
<script>
    document.getElementById('single_date_checkbox').addEventListener('change', function() {
        let fromDate = document.getElementById('from_date');
        let toDate = document.getElementById('to_date');
        let toDateContainer = document.getElementById('to_date_container');
        if (this.checked) {
            toDate.value = fromDate.value;
            toDateContainer.style.display = 'none';
        } else {
            toDateContainer.style.display = 'block';
        }
    });
</script>