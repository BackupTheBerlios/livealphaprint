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
        array('widget_class' => 'SubPanelTopButtonCreateEstimateComponent'),
		
	),

	'where' => '',


	'list_fields' => array(
		
		'name'=>array(
		 	'vname' => 'LBL_NAME',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '10%'),
	
        'paper_type'=>array(
		 	'vname' => 'LBL_TYPE',
			'widget_class' => 'SubPanelDetailViewLink',
			'width' => '10%',
		),
	/*	'number'=>array(
		 	'vname' => 'LBL_NUMBER',
			'width' => '10%',
		),*/
        
        'paper'=>array(
             'vname' => 'LBL_PAPER',
            'width' => '10%',
        ),
		
		'colors_a'=>array(
             'vname' => 'LBL_COLOR_SIDE_A_DESCRIPTION',
            'width' => '5%',
        ),
      
        'colors_b'=>array(
             'vname' => 'LBL_COLOR_SIDE_B_DESCRIPTION',
            'width' => '5%',
        ),
         
       /* 'fsize_w'=>array(
        	'width' => '4%',
			'usage' => 'query_only',
		),
		*/
//		'fsize_w'=>array(
//             'width' => '4%',
//             'query' => true,
//        ),
       
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
