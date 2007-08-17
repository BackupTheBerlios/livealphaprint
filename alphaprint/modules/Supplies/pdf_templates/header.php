<?php

// ************** Begin company information *****************
$imageBlock=array("10","10","51","10");
$pdf->addImage( $logo_name, $imageBlock);

// x,y,width
$companyBlockPositions=array( "10","23","60" );
$companyText= $org_address."\n".$org_city.", ".$org_state." ".$org_country.
	"\nPhone:".$org_code."-".$org_phone." - Fax:".$org_fax."\n".$org_website;
$pdf->addTextBlock( $org_name, $companyText ,$companyBlockPositions );

$salesRepBlockPositions=array( "10","55","60" );
$pdf->addTextBlock("Sales Rep: ", $sales_rep ,$salesRepBlockPositions );
// ************** End company information *******************

// supply title/*
$titleBlock=array("163","10");
$pdf->title("Supply No:", $supply_num, $titleBlock );

// ************** Begin Customer Info **************
// Supplier
$acctBlock=array("147","25","12");
$pdf->addRecBlock($supplier_name, "Supplier's Name", $acctBlock);

//Purchase Order
$contactBlock=array("147","40","12");
$pdf->addRecBlock($purchaseorder_num, "Purchase Order Number", $contactBlock);

/*/ Delivery Date
$dateBlock=array("147","40","12");
$pdf->addRecBlock($delivery_date, "Delivery Date", $dateBlock);
*/
// shipping Address
//$shipLocation = array("147","60","60");
//$shipText=$ship_street."\n".$ship_city.", ".$ship_state." ".$ship_code."\n".$ship_country;
//$pdf->addTextBlock( "Shipping Address:", $shipText, $shipLocation );
// ********** End Customer Info  ******************


?>