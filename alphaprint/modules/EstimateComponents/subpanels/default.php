<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Subpanel Layout definition for Estimates
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
        array('widget_class' => 'SubPanelTopQuickCreateButton'),
		array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'EstimateComponents'),
	),

	'where' => '',


	'list_fields' => array(
		
		'name'=>array(
		 	'vname' => 'LBL_NAME',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '10%'),
	
        'type'=>array(
		 	'vname' => 'LBL_TYPE',
			'widget_class' => 'SubPanelActivitiesStatusField',
			'width' => '10%',
		),
		'number'=>array(
		 	'vname' => 'LBL_NUMBER',
			'width' => '10%',
		),
        
        'paper'=>array(
             'vname' => 'LBL_PAPER',
            'width' => '10%',
        ),
		
		/*'color'=>array(
             'vname' => 'LBL_COLOR',
            'width' => '10%',
        ),
      
        'fsize_h'=>array(
             'vname' => 'LBL_FORMAT',
            'width' => '4%',
        ),
         
        'fsize_w'=>array(
         'vname' => '',
             'width' => '4%',
        ),*/
       
        'machine'=>array(
             'vname' => 'LBL_MACHINE',
            'width' => '10%',
            ),
       
        'edit_button' => array(
            'widget_class' => 'SubPanelEditButton',
            'module' => 'EstimateComponents', 
            'width' => '4%',
        ),
        'remove_button' => array(
            'widget_class' => 'SubPanelRemoveButton',
            'module' => 'EstimateComponents', 
            'width' => '4%',
        ),
        
       
	),
);

?>
