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
require_once('modules/ClientRequest/ClientRequest.php');

require_once('include/formbase.php');
$Estimates = new Estimates();
if(isset($_REQUEST['clientrequest_id']) && !empty($_REQUEST['clientrequest_id'])){
	$ClientRequest = new ClientRequest();
	$ClientRequest->retrieve($_REQUEST['clientrequest_id']);
	$Estimates->product_id = $ClientRequest->product_id;
	$Estimates->name = $ClientRequest->name;
	$Estimates->pnum = $Estimates->generate_number();
	$Estimates->clientrequest_id = $ClientRequest->id;
	$Estimates->deadline = $ClientRequest->due_date;
	$Estimates->quantity = $ClientRequest->quantity;
	$Estimates->status = $ClientRequest->status;
	$Estimates->period	 = $ClientRequest->periodic;
	$Estimates->samples = $ClientRequest->samples;
	$Estimates->file = $ClientRequest->files;
	$Estimates->note = $ClientRequest->special_requirements;
	$Estimates->description = $ClientRequest->description;
	//To Do add operations
	//Transport
	//Pack
	
	$Estimates->save($GLOBALS['check_notify']);
	
	
	$Components = new EstimateComponents();
	$components_array = $Components->get_full_list("id","parent_id='".$ClientRequest->id."'");
	for ($i = 0; $i < count($components_array); $i++) {
		$EstimateComponents = new EstimateComponents();
		$fields = $components_array[$i]->column_fields;
		foreach($fields as $field){
			$EstimateComponents->$field = $components_array[$i]->$field;	
		}
		$EstimateComponents->id = null;
		$EstimateComponents->date_entered = null;
		$EstimateComponents->date_modified = null;	
		$EstimateComponents->created_by = null;	
		$EstimateComponents->modified_user_id = null;	
		$EstimateComponents->assigned_user_id = null;
		$EstimateComponents->assigned_user_name = null;
		$EstimateComponents->parent_bean = 'Estimates';
		$EstimateComponents->parent_id = $Estimates->id;	
		$EstimateComponents->parent_name = $Estimates->name;
		$EstimateComponents->number = $Estimates->generate_number('number','estimates_components', $Estimates->id, $Estimates->table_name);
		$EstimateComponents->save($GLOBALS['check_notify']);
								
	}
}


handleRedirect($Estimates->id,'Estimates');

?>