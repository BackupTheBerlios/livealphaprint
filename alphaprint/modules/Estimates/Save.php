<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for Estimates
 *
 * The contents of this file are subject to the SugarCRM Public License Version
 * 1.1.3 ("License"); You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied.  See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *    (i) the "Powered by SugarCRM" logo and
 *    (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * The Original Code is: SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) 2004-2006 SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 */

require_once('modules/Estimates/Estimates.php');
require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('modules/ProductStatus/ProductStatus.php');
require_once('include/formbase.php');


$sugarbean = new Estimates();
$sugarbean = populateFromPost('', $sugarbean);
$estimatecomponents = new EstimateComponents();


if(isset($_REQUEST['email_id'])) $sugarbean->email_id = $_REQUEST['email_id'];

if(!$sugarbean->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}
if(!isset($sugarbean->product_id) || is_null($sugarbean->product_id) || empty($sugarbean->product_id)){
	$product = new Products();
	$product->account_id = $_REQUEST['account_id'];
	$product->account_name = $_REQUEST['account_name'];
	$product->contact_id = $_REQUEST['contact_id'];
	$product->contact_name = $_REQUEST['contact_name'];
	$product->name = $_REQUEST['product_name'];
	$product->number = 'PRD'.$product->generate_number('number',$product->table_name);
	//TO DO GENERATE NUMBER 
	$product->save($GLOBALS['check_notify']);
	$sugarbean->product_id = $product->id;
}
else{
	$product = new Products();
	$product->retrieve($sugarbean->product_id);
	
}

$sugarbean->save($GLOBALS['check_notify']);

$product->estimate_id = $sugarbean->id;
$product->save($GLOBALS['check_notify']);


########### Update Estimate Log ############
//if ($sugarbean->id){
//    $query = "SELECT id from estimatelog where deleted=0 AND estimate_id='$sugarbean->id'";
//    $result = $sugarbean->db->query($query,true," Error filling in additional detail fields: ");
//    $n = $sugarbean->db->getRowCount($result);
//    
//    if ($n>0){
//    $id = $sugarbean->db->fetchByAssoc($result);
//    $estimatelog->id = $id['id'];
//    }
//}
############################################

$sugarbean->save($GLOBALS['check_notify']);

if (isset($_REQUEST['add_component']) && ($_REQUEST['add_component'] != "")){
	$_REQUEST['return_url'] = 'index.php?module=EstimateComponents&action=EditView&return_module='.$_REQUEST['parent_bean'].'&add_component=true&return_id='.$sugarbean->id.'&return_action=EditView&parent_id='.$sugarbean->id.'&parent_name='.$sugarbean->name.'&parent_bean='.$_REQUEST['parent_bean'];

}

//$sugarbean->status_update('',$sugarbean->id);

$return_id = $sugarbean->id;

$productstatus = new ProductStatus();
if(isset($_REQUEST['status_action']) && !empty($_REQUEST['status_action'])){
	$productstatus->update_product_status($_REQUEST['status_action'], $sugarbean);	
}
else{
	$productstatus->update_product_status($_REQUEST['status'], $sugarbean);
}



handleRedirect($return_id,'Estimates');

?>