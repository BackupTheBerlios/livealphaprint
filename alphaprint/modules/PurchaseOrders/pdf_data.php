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
 *   Additions/Changes
 *
 *   (c) 2005 OpenCRM
 *    - Total and Tax labels taken from language files
 *
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 */
require_once('modules/PurchaseOrders/PurchaseOrder.php');
require_once('modules/Suppliers/Supplier.php');
require_once('modules/Contacts/Contact.php');
require_once('include/database/PearDatabase.php');



global $app_list_strings;
global $mod_strings;
$focus = new PurchaseOrder();
$purchaseorder_id=$_REQUEST['record'];
$focus->retrieve($purchaseorder_id);

$purchaseorder_title = $focus->name;
$supplier_id = $focus->supplier_id;
$supplier = new Supplier();
$supplier->retrieve($supplier_id);
$supplier_name = $supplier->name;
$phone = $supplier->phone_office." / ".$supplier->phone_fax;
$contact_name = $focus->supplier_contact_name;

// PurchaseOrder Information
$order_date = $focus->order_date;
$delivery_date = $focus->delivery_date;
$delivered_date = $focus->delivered_date;
$supplier_address = $focus->supplier_address;
$shipping_address = $focus->shipping_address;

//Company Information - edit what you want here
$org_name = "Alphaprint";
$org_address = "Sofia";
$org_city = "Sofia";
$org_state = "Sofia";
$org_country = "Bulgaria";
$org_code = "+666";
$org_phone = "666-666-666";
$org_fax = "666-666-666";
$org_website = "www.Alphaprint.org";
$logo_name = "company_logo.jpg";
//

$sales_rep = $focus->assigned_user_name;
$conditions = "- Payment Method: ".$app_list_strings['payment_terms'][$focus->payment_term];
$description = $focus->note;
//Goodwill
//$quote_status = $app_list_strings['stage_options'][$focus->stage];
//$quote_status = $app_list_strings['quote_stage_dom'][$focus->stage];
//End Goodwill

 //$focus = new QuoteLine();
//getting the Total Array
///$price = $focus->price;
//$total_print = $focus->total_print;

//$price_subtotal = $currency_symbol.number_format($focus->subtotal,2,'.',',');
//$price_tax = $currency_symbol.number_format($focus->tax,2,'.',',');
//$price_adjustment = $currency_symbol.number_format($focus->adjustment,2,'.',',');
//Goodwill
//$price_total = $currency_symbol.number_format($focus->subtotal,2,'.',',');
//$price_total = $currency_symbol.number_format($focus->total,2,'.',',');
//End Goodwill

//getting the Product Data

$query="select purchaseorderlines.materialid, purchaseorderlines.materialname, purchaseorderlines.measure, purchaseorderlines.unit, purchaseorderlines.price, purchaseorderlines.singlep, materials.description, materials.category, materials.type from purchaseorderlines inner join materials on materials.id=purchaseorderlines.materialid where purchaseorderlines.purchaseorderid='".$purchaseorder_id."' and purchaseorderlines.deleted=0";


$adb = & PearDatabase::getInstance();
$result = $adb->query($query);

$num_products=$adb->getRowCount($result);
$i = 0;
while($row = $adb->fetchByAssoc($result)) {
	$material_id[$i] = $row['materialid'];
    $material_name[$i] = $row["materialname"];
    $measure[$i] = $row['measure'];
    $unit[$i] = $row['unit'];
    $category = $row['category'];
    $type = $row['type'];
    $price[$i]= $row['price'];
    $description[$i] = $row['description'];	
	
   $manufacturer[$i] = $supplier_name;
    
	
    $list_price[$i]= $currency_symbol.number_format($row['price'],2,'.',',');	
	
	$prod_no[$i]= $i+1;
   
   	$product_line[] = array( "NO"    => $prod_no[$i],
							 "Material Name" => $material_name[$i],
                             "Measure" => $measure[$i],
                             "Unit" => $unit[$i],
                             "Category" => $category,
                             "Type"  => $type[$i],
                             "Price"   => $list_price[$i],
                             "Description"  => $description[$i]
							); 
	$i ++;
}


?>