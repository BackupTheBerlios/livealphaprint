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
require_once('modules/Supplies/Supply.php');
require_once('modules/Suppliers/Supplier.php');
require_once('modules/PurchaseOrders/PurchaseOrder.php');
require_once('include/database/PearDatabase.php');

//require_once('include/Localization/Localization.php');

global $app_list_strings;
global $mod_strings;
$focus = new Supply();
$supply_id=$_REQUEST['record'];
$focus->retrieve($supply_id);
$supply_title = $focus->name;
$supply_num = $focus->supplynum;

$supplier_id = $focus->supplier_id;
$supplier = new Supplier();
$supplier->retrieve($supplier_id);
$supplier_name = $supplier->name;
$phone = $supplier->phone_office." / ".$supplier->phone_fax;

$purchaseorder_id = $focus->purchaseorder_id;
$purchaseorder = new PurchaseOrder();
$purchaseorder_num = $purchaseorder->num;


// Supply Information



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
/*$conditions = "- Payment Method: ".$app_list_strings['payment_method_dom'][$focus->payment_method].
	"\n- Payment Term: ".$app_list_strings['payment_terms'][$focus->payment_term].
	"\n- Shipping Term: ".$app_list_strings['shipping_term_dom'][$focus->shipping_term].
	"\n- Valid till: ".$valid_till;*/

$description = $focus->note;


//$focus = new SupplyLine();
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

//getting the Material Data

$query="select supplylines.materialid, supplylines.materialname, supplylines.measure, supplylines.unit, supplylines.price, supplylines.singlep, materials.description, materials.category, materials.type from supplylines inner join materials on materials.id=supplylines.materialid where supplylines.supplyid='".$supply_id."' and supplylines.deleted=0";


$adb = & PearDatabase::getInstance();
$result = $adb->query($query);

$num_materials=$adb->getRowCount($result);
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
	
	$material_no[$i]= $i+1;
   
   	$material_line[] = array( "NO"    => $material_no[$i],
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