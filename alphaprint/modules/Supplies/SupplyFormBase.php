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

class SupplyFormBase {

function handleSave($prefix,$redirect=true, $useRequired=false){
	require_once('modules/Supplies/Supply.php'); 
	require_once('modules/SupplyLines/SupplyLine.php');
	require_once('log4php/LoggerManager.php');
	require_once('include/formbase.php');
	require_once('include/TimeDate.php');
    $timedate = new TimeDate();

	$focus = new Supply();
	if($useRequired &&  !checkRequired($prefix, array_keys($focus->required_fields))){
		return null;
	}
	
	$focus = populateFromPost($prefix, $focus);
	if( !ACLController::checkAccess($focus->module_dir, 'edit', $focus->isOwner($current_user->id))){
		ACLController::displayNoAccess(true);
	}
	

	$return_id = $focus->save();
	$supplyLine1 = new SupplyLine();
	$supplyLine1->mark_deletedBySupplyid($return_id);
	$count = count($_POST);
	$keys = array_keys($_POST);
	$sum = 0;
	for($i = 0;$i< $count; $i++) {
		//echo $keys[$i]."<br>";
		if(substr_count($keys[$i],"materialname_") > 0) {
			$index = substr($keys[$i],strpos($keys[$i],"_")+1);
			$materialid = $_POST["materialid_".$index];
			$paperid = $_POST["paperid_".$index];
			
			if(!isset($materialid) && empty($materialid) && !isset($paperid) && empty($paperid))
				continue;
			
			$materialname = $_POST["materialname_".$index];
			$number = $_POST["number_".$index];
            $measure = $_POST["measure_".$index];
            $unit = $_POST["unit_".$index];
            $singlep = $_POST["singlep_".$index];
            $price = $_POST["price_".$index]; 
            
            $supplynum = $_POST["supplynum"];
            $status = $_POST["status"];
            $delivery_date = $_POST["delivery_date"];
            $delivered_date = $_POST["delivered_date"];
                                                  
            $supplyLine = new SupplyLine();
            
            
            
            $supplyLine->number = $number;
            $supplyLine->materialid = $materialid;
            $supplyLine->paperid = $paperid;
            $supplyLine->materialname = $materialname;
            $supplyLine->measure = $measure;
            $supplyLine->unit = $unit;
            $supplyLine->singlep = $singlep;
            $supplyLine->price = $price;
            
            $supplyLine->supplynum = $supplynum;
            $supplyLine->supplyid = $return_id;
            $supplyLine->status = $status;
			$supplyLine->delivery_date = $delivery_date;
            $supplyLine->delivered_date = $delivered_date;
            $supplyLine->save();
		}
	}
	$count = $_POST["product_count"];
//	$GLOBLES['log']->debug("Saved record with id of ".$return_id);
	if($redirect){
		$this->handleRedirect($return_id);
	}else{
		return $focus;
	}
}

function handleRedirect($return_id){
	if(isset($_POST['return_module']) && $_POST['return_module'] != "") $return_module = $_POST['return_module'];
	else $return_module = "Supplies";
	if(isset($_POST['return_action']) && $_POST['return_action'] != "") $return_action = $_POST['return_action'];
	else $return_action = "index";
	header("Location: index.php?action=$return_action&module=$return_module&record=$return_id");
}

}
?>