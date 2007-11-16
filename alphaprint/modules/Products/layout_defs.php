<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Layout definition for Products
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



$layout_defs['Products'] = array(
	'subpanel_setup' => array(
		
		/*'productclientrequests' => array(
            'order' => 30,
            'sort_order' => 'desc',
            'sort_by' => 'name',
            'module' => 'ClientReqeust',
            'subpanel_name' => 'default',
            'title_key' => 'LBL_PRODUCTCLIENTREQUESTS_SUBPANEL_TITLE',
            'get_subpanel_data' => 'productclientrequests',
        ),*/
        
		'productestimates' => array(
            'order' => 20,
            'sort_order' => 'desc',
            'sort_by' => 'name',
            'module' => 'Estimates',
            'subpanel_name' => 'default',
            'title_key' => 'LBL_PRODUCTESTIMATES_SUBPANEL_TITLE',
            'get_subpanel_data' => 'productestimates',
        ),
        
        'productlog' => array(
            'order' => 90,
            'sort_order' => 'asc',
            'sort_by' => 'date_entered',
            'module' => 'ProductLogs',
            'subpanel_name' => 'default',
            'title_key' => 'LBL_PRODUCTLOG_SUBPANEL_TITLE',
            'get_subpanel_data' => 'productlog',
            'custom' => true
        ),
        
        'productquotes' => array(
            'order' => 40,
            'sort_order' => 'desc',
            'sort_by' => 'name',
            'module' => 'Quotes',
            'subpanel_name' => 'default',
            'title_key' => 'LBL_QUOTES_SUBPANEL_TITLE',
            'get_subpanel_data' => 'productquotes',
        ),
		
		'activities' => array(
			'order' => 50,
			'sort_order' => 'desc',
			'sort_by' => 'date_start',
			'title_key' => 'LBL_ACTIVITIES_SUBPANEL_TITLE',
			'type' => 'collection',
			'subpanel_name' => 'activities',   //this values is not associated with a physical file.
			'module'=>'Activities',

			'top_buttons' => array(
				array('widget_class' => 'SubPanelTopScheduleMeetingButton'),
				array('widget_class' => 'SubPanelTopScheduleCallButton'),
				array('widget_class' => 'SubPanelTopComposeEmailButton'),
			),

			'collection_list' => array(	
				'meetings' => array(
					'module' => 'Meetings',
					'subpanel_name' => 'ForActivities',
					'get_subpanel_data' => 'meetings',
				),
				'calls' => array(
					'module' => 'Calls',
					'subpanel_name' => 'ForActivities',
					'get_subpanel_data' => 'calls',
				),	
			)			
		),

		'history' => array(
			'order' => 60,
			'sort_order' => 'desc',
			'sort_by' => 'date_modified',
			'title_key' => 'LBL_HISTORY_SUBPANEL_TITLE',
			'type' => 'collection',
			'subpanel_name' => 'history',   //this values is not associated with a physical file.
			'module'=>'History',

			'top_buttons' => array(
			array('widget_class' => 'SubPanelTopCreateNoteButton'),
			array('widget_class' => 'SubPanelTopArchiveEmailButton'),
            array('widget_class' => 'SubPanelTopSummaryButton'),
			),

			'collection_list' => array(	
				'meetings' => array(
					'module' => 'Meetings',
					'subpanel_name' => 'ForHistory',
					'get_subpanel_data' => 'meetings',
				),
				'calls' => array(
					'module' => 'Calls',
					'subpanel_name' => 'ForHistory',
					'get_subpanel_data' => 'calls',
				),	
				'notes' => array(
					'module' => 'Notes',
					'subpanel_name' => 'ForHistory',
					'get_subpanel_data' => 'notes',
				),	
				'emails' => array(
					'module' => 'Emails',
					'subpanel_name' => 'ForHistory',
					'get_subpanel_data' => 'emails',
				),	
			)			
		),
        'contacts' => array(
            'top_buttons' => array(
			    array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'Contacts'),
	         ),
			'order' => 70,
			'module' => 'Contacts',
			'sort_order' => 'asc',
			'sort_by' => 'last_name, first_name',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'contacts',
			'add_subpanel_data' => 'contact_id',
			'title_key' => 'LBL_CONTACTS_SUBPANEL_TITLE',
		),

      /*'accounts' => array(
            'top_buttons' => array(
			    array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'Accounts'),
	         ),
			'order' => 70,
			'module' => 'Accounts',
			'sort_order' => 'asc',
			'sort_by' => 'name',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'accounts',
			'add_subpanel_data' => 'account_id',
			'title_key' => 'LBL_ACCOUNTS_SUBPANEL_TITLE',
		),	*/
     
		'opportunities' => array(
            'top_buttons' => array(
			    array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'Opportunities'),
	         ),
			'order' => 80,
			'module' => 'Opportunities',
			'sort_order' => 'desc',
			'sort_by' => 'date_closed',
			'subpanel_name' => 'default',
			'get_subpanel_data' => 'opportunities',
			'add_subpanel_data' => 'opportunity_id',
			'title_key' => 'LBL_OPPORTUNITIES_SUBPANEL_TITLE',
		),
        
        /*'productlogs' => array(
         'top_buttons' => array(
           ),
            'order' => 90,
            'sort_order' => 'desc',
            'sort_by' => 'product_name',
            'module' => 'ProductLogs',
            'subpanel_name' => 'default',
            'title_key' => 'LBL_PRODUCTLOGS_SUBPANEL_TITLE',
            'get_subpanel_data' => 'productlogs',
        ),*/
        
        
		
         














	),
);
?>