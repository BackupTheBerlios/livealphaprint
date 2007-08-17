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
require_once('modules/Quotes/Quote.php');
require_once('modules/Accounts/Account.php');
require_once('modules/Contacts/Contact.php');
require_once('include/database/PearDatabase.php');

//require_once('include/Localization/Localization.php');

global $app_list_strings;
global $mod_strings;
$focus = new Quote();
$quote_id=$_REQUEST['record'];
$focus->retrieve($quote_id);
//$quote_id = $focus->quotenum;
$quote_title = $focus->name;
$quote_num = $focus->quotenum;
$account_id = $focus->account_id;
$account = new Account();
$account->retrieve($account_id);
$account_name = $account->name;
$phone = $account->phone_office." / ".$account->phone_fax;
$contact_name = $focus->billtocontactname;

// Quote Information
$valid_till = $focus->validuntil;
$bill_street = $focus->billtoaddress;
$bill_city = $focus->billtocity;
$bill_state = $focus->billtostate;
$bill_code = $focus->billpostalcode;
$bill_country = $focus->billtocountry;

$ship_street = $account->shipping_address_street;
$ship_city = $account->shipping_address_city;
$ship_state = $account->shipping_address_state;
$ship_code = $account->shipping_address_postalcode;
$ship_country = $account->shipping_address_country;

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
$conditions = "- Payment Method: ".$app_list_strings['payment_method_dom'][$focus->payment_method].
	"\n- Payment Term: ".$app_list_strings['payment_terms'][$focus->payment_term].
	"\n- Shipping Term: ".$app_list_strings['shipping_term_dom'][$focus->shipping_term].
	"\n- Valid till: ".$valid_till;
$description = $focus->description;
//Goodwill
//$quote_status = $app_list_strings['stage_options'][$focus->stage];
$quote_status = $app_list_strings['quote_stage_dom'][$focus->stage];
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

$query="select quotelines.productid, products.name, products.description, products.category, products.pnum, products.type, products.unit, products.quantity, quotelines.price, quotelines.estp, quotelines.pages  from quotelines inner join products on products.id=quotelines.productid where quotelines.quoteid='".$quote_id."' and quotelines.deleted=0";


$adb = & PearDatabase::getInstance();
$result = $adb->query($query);

$num_products=$adb->getRowCount($result);
$i = 0;
while($row = $adb->fetchByAssoc($result)) {
	$product_id[$i] = $row['productid'];
	$product_name[$i] = $row["name"];
	$product_num[$i] = $row['pnum'];
    $category = $row['category'];
    $pages = $row['pages'];
    $quantity[$i] = $row['quantity'];
    $list_price_val[$i]= $row['price'];
    $prod_description[$i] = $row['description'];	
	
   
   // 
    //$productcategory[$i] = $app_list_strings['product_category_dom'][$category];	
	$manufacturer[$i] = $account_name;
    //$manufacturer[$i] = $row['account_name'];
	
	
	$list_price[$i]= $currency_symbol.number_format($row['price'],2,'.',',');	
	
	$prod_no[$i]= $i+1;
   
   	$product_line[] = array( "NO"    => $prod_no[$i],
							 "Product Name" => $product_name[$i],
							 "Product Num" => $product_num[$i],
                             "Category" => $category,
                             "Pages" => $pages,
                             "Quantity"  => $quantity[$i],
                             "Price"   => $list_price[$i],
                             "Description"  => $prod_description[$i]
							); 
	$i ++;
}


?>