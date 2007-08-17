<?php
// watermark based on status
// this is the postion of the watermark before the rotate

/*if ($supply_status == 'Draft') //print Draft only
{
	$waterMarkPositions=array("50","180");
	// this is the rotate amount (todo)
	$waterMarkRotate=array("45","50","180");
	$pdf->watermark('Status: '.$supply_status, $waterMarkPositions, $waterMarkRotate );
} */

$bottom="130";
$top="80";
// blow a bubble around the table
$Bubble=array("10",$top,"170","$bottom");
$pdf->tableWrapper($Bubble);

/* ************ Begin Table Setup ********************** */
// Each of these arrays needs to have matching keys
// "key" => "Length"
// total of columns needs to be 190 in order to fit the table
// correctly
// alignment of each column


$colsLabel=array( "NO"                  => "#",
				  "Material Name"       => "Material",
                  "Measure"             => "Measure",
                  "Unit"                => "Unit",
                  "Category"            => "Category",
                  "Type"                => "Type",
                  "Price"               => "Price",                   
                  "Description"         => "Description" 

             );
$colsAlign=array( "NO"                  => "C",
				  "Material Name"       => "C",
				  "Measure"             => "C",
                  "Unit"                => "C",
                  "Category"            => "C",
                  "Type"                => "C",
                  "Price"               => "C", 				  
				  "Description"         => "L" 

               );
$prodTable=array("10","60");
$cols=array(      "NO"                  => "8",
				  "Material Name"       => "30",
				  "Measure"             => "15",
                  "Unit"                => "20",
                  "Category"            => "15",
                  "Type"                => "20",
                  "Price"               => "30",                   
                  "Description"         => "51" 
               );

$pdf->addCols( $cols,$prodTable,$bottom );
$pdf->addLineFormat( $colsAlign);

/* ************** End Table Setup *********************** */



/* ************* Begin Product Population *************** */

$ppad=3;
$y    = $top+10;
for($i=0;$i<count($material_name);$i++) {
		$size = $pdf->addProductLine( $y, $line[$i] );
		$y   += $size+$ppad;
}
  
/* ******************* End product population ********* */


/* **************** Begin Description ****************** */
$descBlock=array("10","215","53", "200");
$pdf->addDescBlock($description, "Description", $descBlock);


//$termBlock=array("107","215","53", "200");
//$pdf->addDescBlock($conditions, "Terms & Conditions", $termBlock);

/* ************** End Terms *********************** */

?>