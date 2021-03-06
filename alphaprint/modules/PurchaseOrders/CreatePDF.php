<?php
/*
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, write to the Free Software
 *   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 *   (c) 2005 Matthew Brichacek <mmbrich@fosslabs.com>
 *
 *
 *   Changes/Additions:
 *
 *   (c) 2005 OpenCRM
 *    - Improved currency support
 *    - Fixed IE download bug
 *
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 */

require_once('include/database/PearDatabase.php');

global $adb;
global $app_strings;
global $max_desc_size;
global $max_prod_desc_size;
global $products_per_page;

$id = $_REQUEST['record'];

//$sql="select currency_symbol from currency_info";
//$result = $adb->query($sql);
//$currency_symbol = $adb->query_result($result,0,'currency_symbol');
global $sugar_config;
$currency_symbol = $sugar_config['default_currency_symbol'];

/* ************* BEGIN USER CONFIG **************** */
$endpage="0";
$products_per_page="10";
$max_prod_desc_size="75";
$max_desc_size="175";
/* ************ END USER CONFIG ******************* */

require_once('include/CRMPDF.php');
require_once('pdf_data.php');

$page_num='1';
$pdf = new PDF( 'P', 'mm', 'A4' );
$pdf->Open();

$num_pages=ceil(($num_products/$products_per_page));
$current_product=0;

for($l=0;$l<$num_pages;$l++)
{
	$line=array();
	if($num_pages == $page_num)
		$lastpage=1;
	
	while($current_product != $num_products) // PP 17.12.2006 Fixed Logic Error 
	{
		$line[]=$product_line[$current_product];
		$current_product++;
	}
       
	$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN)); 
	$pdf->AddPage();
	include("pdf_templates/header.php");
	include("pdf_templates/body.php");
	include("pdf_templates/footer.php");

	$page_num++;

	if (($endpage) && ($lastpage))
	{
		$pdf->AddPage();
		include("pdf_templates/header.php");
		include("pdf_templates/lastpage/body.php");
		include("pdf_templates/lastpage/footer.php");
	}

}


$pdf->Output('PurchaseOrder.pdf','D'); //added file name to make it work in IE, also forces the download giving the user the option to save

?>