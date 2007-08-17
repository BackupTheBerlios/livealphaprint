<?php
// watermark based on status
// this is the postion of the watermark before the rotate

if ($quote_status == 'Draft') //print Draft only
{
	$waterMarkPositions=array("50","180");
	// this is the rotate amount (todo)
	$waterMarkRotate=array("45","50","180");
	$pdf->watermark('Status: '.$quote_status, $waterMarkPositions, $waterMarkRotate );
}

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
				  "Product Name"        => "Product",
                  "Product Num"         => "PNum",
                  "Category"            => "Category",
                  "Pages"               => "Pages",
				  "Quantity"            => "Quantity",
                  "Price"               => "Price",                   
                  "Description"         => "Description" 

             );
$colsAlign=array( "NO"                  => "C",
				  "Product Name"        => "C",
				  "Product Num"         => "C",
                  "Category"            => "C",
                  "Pages"               => "C",
                  "Quantity"            => "C",
                  "Price"               => "C", 				  
				  "Description"         => "L" 

               );
$prodTable=array("10","60");
$cols=array(      "NO"                  => "8",
				  "Product Name"        => "30",
				  "Product Num"         => "20",
                  "Category"            => "20",
                  "Pages"               => "15",
                  "Quantity"            => "20",
                  "Price"               => "25",                   
                  "Description"         => "51" 
               );

$pdf->addCols( $cols,$prodTable,$bottom );
$pdf->addLineFormat( $colsAlign);

/* ************** End Table Setup *********************** */



/* ************* Begin Product Population *************** */

$ppad=3;
$y    = $top+10;
for($i=0;$i<count($product_name);$i++) {
		$size = $pdf->addProductLine( $y, $line[$i] );
		$y   += $size+$ppad;
}
  
/* ******************* End product population ********* */


/* **************** Begin Description ****************** */
$descBlock=array("10","215","53", "200");
$pdf->addDescBlock($description, "Description", $descBlock);


$termBlock=array("107","215","53", "200");
$pdf->addDescBlock($conditions, "Terms & Conditions", $termBlock);

/* ************** End Terms *********************** */

?>