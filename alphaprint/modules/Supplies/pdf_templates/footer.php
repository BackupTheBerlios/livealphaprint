<?php
$top="215";

$desc=explode("\n",$description);
//$cond=explode("\n",$conditions);
$num=230;

//footer
$companyBlockPositions15=array( "10","265","200" );
$org_name15 = "";
$companyText15="Page ".$page_num." of ".$num_pages."";
$pdf->addTextBlock( $org_name15, $companyText15 ,$companyBlockPositions15 );
?>