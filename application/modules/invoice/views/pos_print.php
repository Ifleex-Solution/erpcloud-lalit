<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print Page Example</title>
    <style>
        @media print {
            button {
                display: none;
            }

            body {

                line-height: 1.2;


            }
        }

        td {
            width: 5px;
            height: 14px;
            overflow: hidden;
            padding: 0;
            border: 1px solid rgba(255, 255, 255, 0);
            /* border: 1px solid #000; */
        }

        .fixed-width2 {
            display: inline-block;
            width: 38px;
            height: 15px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: 13px;
            text-align: center;
            font-weight: bold;
            font-family: 'Calibri';

        }

        .fixed-width1 {
            display: inline-block;
            width: 135px;
            height: 15px;
            overflow: hidden;
            /* text-overflow: ellipsis; */
            /* white-space: nowrap; */
            font-size: 13px;
            text-align: left;
            font-weight: bold;
            font-family: 'Calibri';


        }

        .fixed-width3 {
            display: inline-block;
            width: 54px;
            height: 15px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: 13px;
            text-align: right;
            font-weight: bold;
            font-family:'Calibri';



        }
		
		   .fixed-width4 {
            display: inline-block;
            width: 58px;
            height: 15px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: 13px;
            text-align: right;
            font-weight: bold;
            font-family:'Calibri';



        }


        .text-item {
            display: block;
            margin-left: 356px;
            /* Left margin for all items */
            font-size: 13px;
            /* Font size for all items */
            letter-spacing: 1px;
            /* Letter spacing for all items */
            margin-bottom: 1px;
            /* Bottom margin for spacing */
            font-family: 'Calibri';
        }
         .text-item2 {
            display: block;
                       /* Left margin for all items */
            font-size: 12px;
            /* Font size for all items */
                      /* Letter spacing for all items */
            margin-bottom: 1px;
            /* Bottom margin for spacing */
            font-family: 'Calibri';
        }
		
		 .text-item3 {
            display: block;
                       /* Left margin for all items */
            font-size: 14px;
            /* Font size for all items */
                      /* Letter spacing for all items */
            margin-bottom: 1px;
            /* Bottom margin for spacing */
            font-family: 'Calibri';
        }
    </style>

</head>

<body>
    <button onclick="window.print()">Print This Page</button>

    <!-- <p
        style="margin-top: 112px; margin-left: 60px;  font-size: 10px; line-height: 1.2; letter-spacing: 1px; font-family: 'Verdana', sans-serif;">
        <b>0123456789</b>
    </p> -->
    <table style="margin-left: 60px;margin-top:93px;">
        <tr>
            <td style="font-family: 'Calibri';width: 154px;"><span
                    style=" font-size: 14px; line-height: 1.2; letter-spacing: 1px; "><b><?php echo  str_pad( $invoice_id, 9, '0', STR_PAD_LEFT); ?></b></span></td>
            <td style="font-family: 'Calibri';width: 120px;"><span
                    style=" font-size:12px; line-height: 1.2; letter-spacing: 1px; "><b>
                        <?php echo date('d/m/Y', strtotime($final_date)); ?> </b></span></td>
            <td style="font-family: 'Calibri';width: 40px;"><span
                    style=" font-size:13px; line-height: 1.2; letter-spacing: 1px; "><b>
                      ST-01 </b></span></td>

        </tr>
    </table>
    <!-- <span style="margin-left: 270px; font-size: 10px; letter-spacing: 1px;"><b>18/11/2024</b></span> -->
    <br />
    <div style="height: 272px;margin-top:10px;">
        <?php
        $sl = 1;
        $s_total = 0;
        $itemrow = 0;
        $total_price_with_dis = 0;
        $total_discount = 0;
        foreach ($invoice_all_data as $invoice_data) { ?>
            <table>
                <tbody>
                    <tr>

                        <td style="width: 135px;height:15px;">
                            <span class="fixed-width1" ><?php echo $invoice_data['product_id']; ?> <?php echo $invoice_data['category_name']; ?></span>
                        </td>
                        <td style="width: 38px;height:15px;">
                            <span class="fixed-width2"><?php echo $invoice_data['first_name']; ?></span>
                        </td>
                        <td style="width: 38px;height:15px;">
                            <span class="fixed-width2"><?php echo number_format($invoice_data['quantity'], 0); ?></span>
                        </td>
                        <td style="width: 38px;height:15px;">
                            <span class="fixed-width2"><?php echo $invoice_data['meter']; ?></span>
                        </td>
                        <td style="width: 6px;height:15px;">
                            <span class="fixed-width3"><?php echo number_format($invoice_data['rate'], 2, '.', ','); ?></span>
                        </td>
                        <td style="width: 62px;height:15px;">
                            <span class="fixed-width4"><?php echo number_format($invoice_data['total_price'], 2, '.', ','); ?></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        <?php
            $dis = is_numeric($invoice_data['discount_per']) ? $invoice_data['discount_per'] : 0;
            $total_discount = $total_discount + (float)$dis;
            $sl++;
        }
        $total_am = $total_discount + $grand_total;
        ?>
    </div>

    <footer>

      <span  >
    <table style="display: inline-table; margin-left: 10px;height:0.3px;border-collapse:collapse">
 <tr>
            <th style="width:283px; text-align: left; "></th>
            <th style="width:100px; text-align: right;"><span class="text-item2"><?php echo number_format($total_am, 2, '.', ','); ?></span></th>
        </tr>
        <tr>
            <th style="width:283px; text-align: left; "></th>
            <th style="width:100px; text-align: right;"><span class="text-item2"><?php echo number_format($total_discount, 2, '.', ','); ?></span></th>
        </tr>
 <tr>
            <th style="width:283px; text-align: left; "></th>
            <th style="width:100px; text-align: right;"><b><span class="text-item3"><?php echo number_format($grand_total, 2, '.', ','); ?></span></b></th>
        </tr>
    </table>
</span>
   
    </footer>


</body>

</html>