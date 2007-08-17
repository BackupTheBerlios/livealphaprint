<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Layout definition for Accounts
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


$layout_defs['Suppliers'] = array(
	// list of what Subpanels to show in the DetailView 
	'subpanel_setup' => array(

	
		
		'contacts' => array(
			'order' => 30,
			'module' => 'Contacts',
			'sort_order' => 'asc',
			'sort_by' => 'last_name, first_name',
			'subpanel_name' => 'ForAccounts',
			'get_subpanel_data' => 'contacts',
			'add_subpanel_data' => 'contact_id',
			'title_key' => 'LBL_CONTACTS_SUBPANEL_TITLE',
			'top_buttons' => array(
				array('widget_class' => 'SubPanelTopCreateAccountNameButton'),
				array('widget_class' => 'SubPanelTopSelectButton', 'mode'=>'MultiSelect')
			),

		),

	'materials' => array(
			'order' => 40,
			'sort_order' => 'asc',
			'sort_by' => 'name',
			'module' => 'Materials',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'materials',
			'add_subpanel_data' => 'material_id',
			'title_key' => 'LBL_MATERIALS_SUBPANEL_TITLE',
			'top_buttons' => array(
				
				array('widget_class' => 'SubPanelTopSelectButton', 'mode'=>'MultiSelect'),
			),		
		),
	'papers' => array(
			'order' => 50,
			'sort_order' => 'asc',
			'sort_by' => 'pname',
			'module' => 'Paper',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'papers',
			'add_subpanel_data' => 'paper_id',
			'title_key' => 'LBL_PAPERS_SUBPANEL_TITLE',
			'top_buttons' => array(
				
				array('widget_class' => 'SubPanelTopSelectButton', 'mode'=>'MultiSelect'),
			),		
		),
		
        
        'supplies' => array(
            'order' => 60,
            'sort_order' => 'asc',
            'sort_by' => 'supplynum',
            'module' => 'Supplies',
            'subpanel_name' => 'default',
            'get_subpanel_data' => 'supplies',
            'add_subpanel_data' => 'supply_id',
            'title_key' => 'LBL_SUPPLIES_SUBPANEL_TITLE',
            'top_buttons' => array(
                array('widget_class' => 'SubPanelTopButtonQuickCreate'),
                array('widget_class' => 'SubPanelTopSelectButton', 'mode'=>'MultiSelect')
            ),
        ),
        
        'purchaseorders' => array(
            'order' => 70,
            'sort_order' => 'asc',
            'sort_by' => 'num',
            'module' => 'PurchaseOrders',
            'subpanel_name' => 'default',
            'get_subpanel_data' => 'purchaseorders',
            'add_subpanel_data' => 'purchaseorder_id',
            'title_key' => 'LBL_PURCHASEORDERS_SUBPANEL_TITLE',
            'top_buttons' => array(
                array('widget_class' => 'SubPanelTopButtonQuickCreate'),
                array('widget_class' => 'SubPanelTopSelectButton', 'mode'=>'MultiSelect')
            ),
        ),

        
      
	),	
	
);
?>