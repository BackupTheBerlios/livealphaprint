<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Subpanel Layout definition for Prices
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


$subpanel_layout = array(
	'top_buttons' => array(
		array('widget_class' => 'SubPanelTopButtonQuickCreate'),
	),

	'where' => '',
	
	
	'fill_in_additional_fields'=>true,
	'list_fields' => array(
		'name'=>array(
	 		'vname' => 'LBL_LIST_NAME',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '15%',
		),
		'assigned_user_name'=>array(
	 		'vname' => 'LBL_LIST_SUBPNANEL_ASSIGNED_USER_ID',
			'widget_class' => 'SubPanelDetailViewLink',
	 		'module' => 'Users',
	 		'target_record_key' => 'assigned_user_id',
 		 	'target_module' => 'Users',
			'width' => '15%',
			 'sortable'=>false,	
		),
		
		'supplier_name'=>array(
	 		'vname' => 'LBL_LIST_SUBPNANEL_SUPPLIER_NAME',
	 		//'widget_class' => 'SubPanelDetailViewLink',
	 		//'module' => 'Prices',
	 		//'target_record_key' => 'supplier_id',
 		 	//'target_module' => 'Suppliers',
			'width' => '15%',
			 'sortable'=>true,	
		),
		
		'isvalid'=>array(
	 		'vname' => 'LBL_LIST_SUBPNANEL_ISVALID',
			'width' => '15%',
			 'sortable'=>true,	
		),
		'due_date'=>array(
	 		'vname' => 'LBL_LIST_SUBPNANEL_DUE_DATE',
			'width' => '15%',
			 'sortable'=>true,	
		),
		
		'price'=>array(
	 		'vname' => 'LBL_LIST_SUBPNANEL_PRICE',
			'width' => '15%',
			'sortable'=>true,	
		),
		'price_usdollar'=>array(
	 		'usage'=>'query_only',
		),
	
	),
);

?>