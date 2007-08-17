<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Layout definition for Project
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



$layout_defs['Paper'] = array(
	// list of what Subpanels to show in the DetailView
	'subpanel_setup' => array(
	
	'prices' => array(
			'top_buttons' => array(
			array('widget_class' => 'SubPanelTopButtonQuickCreate'),
		
			),
         
			'order' => 20,
			'module' => 'Prices',
			'sort_order' => 'asc',
			'sort_by' => 'name',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'prices',
			'add_subpanel_data' => 'paper_id',
			'title_key' => 'LBL_PRICES',
		),

		'suppliers' => array(
            'top_buttons' => array(
			    array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'Suppliers'),
	         ),
			'order' => 30,
			'module' => 'Suppliers',
			'sort_order' => 'asc',
			'sort_by' => 'name',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'suppliers',
			'add_subpanel_data' => 'supplier_id',
			'title_key' => 'LBL_SUPPLIERS_SUBPANEL_TITLE',
		),
			
	'supplies' => array(
         
			'order' => 40,
			'module' => 'SupplyLines',
			'sort_order' => 'asc',
			'sort_by' => 'materialname',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'supplies',
			'add_subpanel_data' => 'paperid',
			'title_key' => 'LBL_SUPPLIES_SUBPANEL_TITLE',
		),
	

      
	


	),
);
?>
