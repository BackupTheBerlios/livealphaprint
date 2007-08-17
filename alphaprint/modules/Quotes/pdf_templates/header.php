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

// Quote title/*
$titleBlock=array("163","10");
$pdf->title("Quote No:", $quote_num, $titleBlock );

// ************** Begin Customer Info **************
// Customer
$acctBlock=array("147","25","12");
$pdf->addRecBlock($account_name, "Customer Name", $acctBlock);

//Contact
$contactBlock=array("147","40","12");
$pdf->addRecBlock($contact_name, "Contact Name", $contactBlock);

// billing Address
$billPositions = array("147","55","60");
$billText=$bill_street."\n".$bill_city.", ".$bill_state." ".$bill_code."\n".$bill_country;
$pdf->addTextBlock("Billing Address:",$billText, $billPositions);

// shipping Address
//$shipLocation = array("147","60","60");
//$shipText=$ship_street."\n".$ship_city.", ".$ship_state." ".$ship_code."\n".$ship_country;
//$pdf->addTextBlock( "Shipping Address:", $shipText, $shipLocation );
// ********** End Customer Info  ******************


?>
