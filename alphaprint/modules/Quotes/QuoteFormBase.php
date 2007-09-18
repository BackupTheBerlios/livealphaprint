<?PHP
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

class QuoteFormBase {

function handleSave($prefix,$redirect=true, $useRequired=false){
	require_once('modules/Quotes/Quote.php'); 
	require_once('modules/QuoteLines/QuoteLine.php');
	require_once('log4php/LoggerManager.php');
	require_once('include/formbase.php');
	require_once('include/TimeDate.php');
    $timedate = new TimeDate();

	$focus = new Quote();
	if($useRequired &&  !checkRequired($prefix, array_keys($focus->required_fields))){
		return null;
	}
	
	$focus = populateFromPost($prefix, $focus);
	if( !ACLController::checkAccess($focus->module_dir, 'edit', $focus->isOwner($current_user->id))){
		ACLController::displayNoAccess(true);
	}
	if(empty($_REQUEST['status']) || $_REQUEST['status'] == 'off'){
		$focus->status = 0;	
	}else{
		$focus->status= 1;
	}
	
	//echo "post length:".count($_POST); 
    //echo "product_count:".$count."<br>";
	//echo "cost_price num:".count($_POST["cost_price"])."<br";

	$return_id = $focus->save();
	$quoteLine1 = new QuoteLine();
	$quoteLine1->mark_deletedByQuoteid($return_id);
	$count = count($_POST);
	$keys = array_keys($_POST);
	$sum = 0;
	for($i = 0;$i< $count; $i++) {
		//echo $keys[$i]."<br>";
		if(substr_count($keys[$i],"productid_") > 0) {
			$index = substr($keys[$i],strpos($keys[$i],"_")+1);
			$product_id = $_POST["productid_".$index];
			
			if(!isset($product_id) || empty($product_id))
				continue;
			
			$product_name = $_POST["productname_".$index];
			$product_num = $_POST["productnum_".$index];
            $pages = $_POST["pages_".$index];
 			$quantity = $_POST["quantity_".$index];
            $estp = $_POST["estp_".$index];
            $price = $_POST["price_".$index];     
            
			$quoteLine = new QuoteLine();
            $quoteLine->price = $price;
            $quoteLine->estp = $estp;
            $quoteLine->productid = $product_id;
            $quoteLine->productname = $product_name;
            $quoteLine->productnum = $product_num;
            $quoteLine->pages = $pages;
			$quoteLine->quantity = $quantity;
			$quoteLine->quoteid = $return_id;
			$quoteLine->save();
		}
	}
	$count = $_POST["product_count"];
	$component = new ProductComponents;
	$component->retrieve($sugarbean->component_id);
	$component->status_update('quoted', $component->id);

//	$GLOBLES['log']->debug("Saved record with id of ".$return_id);
	if($redirect){
		$this->handleRedirect($return_id);
	}else{
		return $focus;
	}
}

function handleRedirect($return_id){
	if(isset($_POST['return_module']) && $_POST['return_module'] != "") $return_module = $_POST['return_module'];
	else $return_module = "Quotes";
	if(isset($_POST['return_action']) && $_POST['return_action'] != "") $return_action = $_POST['return_action'];
	else $return_action = "index";
	header("Location: index.php?action=$return_action&module=$return_module&record=$return_id");
}

}
?>