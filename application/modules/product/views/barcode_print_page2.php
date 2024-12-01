<style>
.no-margin {
    margin-top: 0 !important; /* Removes any top margin */
}
.barcode-image{
	display: block;margin-left: auto;
	margin-right: auto;height: 40px !important;
	width: 143px;
}
.barcode-price2{
	font-weight: 200;
	line-height: 10px;
	 margin-top: 5px;
    font-weight: 500;
    line-height: 10px;
    margin-top: 5px;
}
.barcode-productdetails2{
	font-size: 9px;letter-spacing: 0.5px;
	font-weight: 600;
	text-transform: uppercase;
	line-height: 10px;
}
</style>


<?php echo form_open_multipart('Cproduct/insert_product') ?>
<div class="panel-body no-margin">
    <div class="table-responsive">
        <?php
        $cqty =  (int)$_SESSION['cqty'];
        ?>
        <div id="printableArea">
            <!-- <div class="paddin5ps"> -->
                <table id="" class="table-bordered1 no-margin" style="width:240px;height:300px;border:none ">
                    <?php
                    $counter = 0;
                    foreach ($_SESSION['barcodelabels'] as $label) {
                        $noOfLabel = (int)$label['noOfLabel'];

                        for ($i = 0; $i < $noOfLabel; $i++) {
                    ?>
                            <?php if ($counter ==  $cqty) { ?>
                                <tr>
                                    <?php $counter = 0; ?>
                                <?php } ?>
                                <td class="barcode-toptd" style="border:none">

                                    <div class="barcode-inner barcode-innerdiv">
                                        <span class="model-name barcode-modelname"><?php echo $product_model ?></span>
                                        <img style="height:65px;width: 170px;" alt="" src="<?= base_url('vendor/barcode.php?size=35&text=' . $label['productId'] . '&print=true') ?>">
                                        <div class="product-name-details barcode-productdetails"><span style="font-size:13px"><?php echo $label['productName']; ?></span></div>
                                        <div style="margin-top:5px;"></div>
                                       <div class="product-name-details barcode-productdetails"><span style="font-size:13px"><?php echo date('Ymd'); ?></span></div>
                                        <div style="margin-top:8px;"></div>
                                        <div class="price barcode-price">
                                            <span style="font-size:27px"><b> <?php echo "Rs. " . number_format((float)$label['price'], 2); ?></b></span>
                                        </div>

                                    </div>

                                </td>
                                <?php if ($counter == 5) { ?>
                                </tr>
                                <?php $counter = 0; ?>
                            <?php } ?>
                            <?php $counter++; ?>
                    <?php
                        }
                    }
                    ?>
                </table>
            <!-- </div> -->
        </div>
        <?php
        ?>
    </div>

</div>
<?php

?>
<div class="text-center">
    <a class="btn btn-info" href="#" onclick="printDiv1('printableArea')"><?php echo display('print') ?></a>
    <a class="btn btn-danger" href="<?php echo base_url('labelprint'); ?>"><?php echo display('cancel') ?></a>
</div>
<?php

?>
<?php echo form_close() ?>

<script>
    function printDiv1(divName) {
  $("#reportlist_paginate,#reportlist_info,.dataTables_filter,#reportlist_length").attr("hidden", true);
  $("#todays_report_paginate,#todays_report_info,#todays_report_length").attr("hidden", true);
  $(".dt-buttons").css("display", "none");
  $(".print-font-size").css({
    fontSize: "9px",

  });
  var printContents = document.getElementById(divName).innerHTML;
  var originalContents = document.body.innerHTML;
  document.body.innerHTML = printContents;
  document.body.style.marginTop = "0px";

  window.print();
  document.body.innerHTML = originalContents;

  window.location.reload(true);

}

</script>