<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for ClientOrders
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

require_once('modules/ClientOrders/ClientOrders.php');
require_once('modules/ClientorderComponents/ClientorderComponents.php');
require_once('modules/ClientRequest/ClientRequest.php');
require_once('modules/ProductStatus/ProductStatus.php');

require_once('include/formbase.php');
$ClientOrders = new ClientOrders();
if(isset($_REQUEST['clientrequest_id']) && !empty($_REQUEST['clientrequest_id'])){
	$ClientRequest = new ClientRequest();
	$ClientRequest->retrieve($_REQUEST['clientrequest_id']);
	$ClientOrders->product_id = $ClientRequest->product_id;
	$ClientOrders->name = $ClientRequest->name;
	$ClientOrders->number = 'PTR'.$ClientOrders->generate_number('number', $ClientOrders->table_name);
	$ClientOrders->clientrequest_id = $ClientRequest->id;
	$ClientOrders->deadline = $ClientRequest->due_date;
	$ClientOrders->quantity = $ClientRequest->quantity;
	$ClientOrders->status = $ClientRequest->status;
	$ClientOrders->period	 = $ClientRequest->periodic;
	$ClientOrders->samples = $ClientRequest->samples;
	$ClientOrders->file = $ClientRequest->files;
	$ClientOrders->note = $ClientRequest->special_requirements;
	$ClientOrders->description = $ClientRequest->description;
	$ClientOrders->operation_description = $ClientRequest->operation_description;
	//To Do: add operations
	//Transport
	//Pack
	
	$ClientOrders->save($GLOBALS['check_notify']);
	
	
	$Components = new ClientorderComponents();
	$components_array = $Components->get_full_list("id","parent_id='".$ClientRequest->id."'");
	for ($i = 0; $i < count($components_array); $i++) {
		$ClientorderComponents = new ClientorderComponents();
		$fields = $components_array[$i]->column_fields;
		foreach($fields as $field){
			$ClientorderComponents->$field = $components_array[$i]->$field;	
		}
		$ClientorderComponents->id = null;
		$ClientorderComponents->date_entered = null;
		$ClientorderComponents->date_modified = null;	
		$ClientorderComponents->created_by = null;	
		$ClientorderComponents->modified_user_id = null;	
		$ClientorderComponents->assigned_user_id = null;
		$ClientorderComponents->assigned_user_name = null;
		$ClientorderComponents->parent_bean = 'ClientOrders';
		$ClientorderComponents->parent_id = $ClientOrders->id;	
		$ClientorderComponents->parent_name = $ClientOrders->name;
		$ClientorderComponents->number = $ClientorderComponents->generate_number('number','clientorders_components', $ClientOrders->id, $ClientOrders->table_name);
		$ClientorderComponents->save($GLOBALS['check_notify']);
								
	}
}

$productstatus = new ProductStatus();
if(isset($_REQUEST['status_action']) && !empty($_REQUEST['status_action'])){
	$productstatus->update_product_status($_REQUEST['status_action'], $ClientOrders);	
}



handleRedirect($ClientOrders->id,'ClientOrders');

?>