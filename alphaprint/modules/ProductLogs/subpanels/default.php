<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Subpanel Layout definition for Projects
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
				
	),

	'where' => '',
	
	
	'fill_in_additional_fields'=>true,
	'list_fields' => array(
		'product_name'=>array(
	 		'vname' => 'LBL_LIST_NAME',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '20%',
		),
		
		'bean_name'=>array(
	 		'vname' => 'LBL_BEAN_NAME',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '15%',
			'custom' => true
			
		),
		
		'bean_id'=>array(
			'name'=>'bean_id',
		 	'usage' => 'query_only',
		),
		
		'from_status'=>array(
	 		'vname' => 'LBL_FROM_STATUS',
			//'widget_class' => 'SubPanelDetailViewLink',
			'width' => '12%',
		),
		
		'to_status'=>array(
	 		'vname' => 'LBL_TO_STATUS',
			//'widget_class' => 'SubPanelDetailViewLink',
			'width' => '12%',
		),
		
		'action'=>array(
	 		'vname' => 'LBL_ACTION',
			//'widget_class' => 'SubPanelDetailViewLink',
			'width' => '12%',
		),
		
		'date_entered'=>array(
	 		'vname' => 'LBL_DATE_CHANGED',
			//'widget_class' => 'SubPanelDetailViewLink',
			'width' => '12%',
		),
		
		'created_by_name'=>array(
	 		'vname' => 'LBL_CHANGED_BY',
			//'widget_class' => 'SubPanelDetailViewLink',
			'width' => '32%',
		),
		
//		'created_by'=>array(
//	 		'vname' => 'LBL_CREATED_BY',
//			'widget_class' => 'SubPanelDetailViewLink',
//	 		'module' => 'Users',
//	 		'target_record_key' => 'created_by',
// 		 	'target_module' => 'Users',
//			'width' => '15%',
//			 'sortable'=>false,	
//		),
		
//		'assigned_user_name'=>array(
//	 		'vname' => 'LBL_LIST_ASSIGNED_USER_ID',
//			'widget_class' => 'SubPanelDetailViewLink',
//	 		'module' => 'Users',
//	 		'target_record_key' => 'assigned_user_id',
// 		 	'target_module' => 'Users',
//			'width' => '15%',
//			 'sortable'=>false,	
//		),
		
	),
);

?>