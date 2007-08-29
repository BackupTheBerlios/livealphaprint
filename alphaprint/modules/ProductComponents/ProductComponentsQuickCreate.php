<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
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
 ********************************************************************************/
 
require_once('include/EditView/QuickCreate.php');
require_once('modules/ProductComponents/ProductComponents.php');
require_once('modules/ProductComponents/Forms.php');
require_once('include/javascript/javascript.php');
require_once('modules/Format/Format.php'); 
require_once('modules/Layoutline/Layoutline.php');
require_once('XTemplate/xtpl.php');

class ProductComponentsQuickCreate extends QuickCreate {
    
    var $javascript;
    
    function process() {
        global $current_user, $timedate, $app_list_strings, $current_language, $mod_strings;
        $mod_strings = return_module_language($current_language, 'ProductComponents');
        $format = new Format();
        
        
        parent::process();
        
        if($this->viaAJAX) { // override for ajax call
            $this->ss->assign('saveOnclick', "onclick='if(check_form(\"productComponentsQuickCreate\")) return SUGAR.subpanelUtils.inlineSave(this.form.id, \"productcomponents\"); else return false;'");
            $this->ss->assign('cancelOnclick', "onclick='return SUGAR.subpanelUtils.cancelCreate(\"subpanel_productcomponents\")';");
        }
        
        $this->ss->assign('viaAJAX', $this->viaAJAX);

        $this->javascript = new javascript();
        $this->javascript->setFormName('productComponentsQuickCreate');
        
        $focus = new ProductComponents();
        $this->javascript->setSugarBean($focus);
        $this->javascript->addAllFields('');
    
        $app_list_strings['products_format_options'] = $format->Get_Dropdown_Data();
		
        $this->ss->assign('additionalScripts', $this->javascript->getScript(false));
        $this->ss->assign('run_style_options', get_select_options_with_id($app_list_strings['layout_type_options'], ''));
        $this->ss->assign('type_options', get_select_options_with_id($app_list_strings['type_options'], $focus->type));
        $this->ss->assign('color_side_a', get_select_options_with_id($app_list_strings['color_side_a'], $focus->color_side_a));
        $this->ss->assign('color_side_b', get_select_options_with_id($app_list_strings['color_side_b'], $focus->color_side_b));
		$this->ss->assign("STATUS_OPTIONS", get_select_options_with_id($app_list_strings['project_task_status_options'], $focus->status));
		$this->ss->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));
	    $this->ss->assign("RUN_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));
	    $this->ss->assign("BLEED_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));
	    
		
		$ppref = 'PRD';
		$pnumber = $focus->get_pnum();
		$number_suf = $focus->generate_number();
		
		$this->ss->assign('number_pref', $ppref);
		$this->ss->assign('pnum', $pnumber);
		$this->ss->assign('number_suf', $number_suf);
		
    	$this->ss->assign("LAYOUTROWS", $focus->getLayoutRow(new Layoutline(),0,true,true));
		//$this->ss->parse("main.row1");		
		
	
		$json = getJSONobj();
        
///////////////////////////////////////
///
/// SETUP PARENT POPUP

	$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'projectTypeQuickCreate',
		'field_to_name_array' => array(
			'id' => 'parent_id',
			'name' => 'parent_name',
			),
		);

	$encoded_parent_popup_request_data = $json->encode($popup_request_data);
	
	
	
	$this->ss->assign('encoded_parent_popup_request_data', $encoded_parent_popup_request_data);        
    
    $popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'productComponentsQuickCreate',
	'field_to_name_array' => array(
		'id' => 'paperid',
		'pname' => 'paper',

		),
	);
	$this->ss->assign('encoded_paper_popup_request_data', $json->encode($popup_request_data));
      

	//machines popup
	/*	$popup_request_data = array(
			'call_back_function' => 'set_return',
			'form_name' => 'productComponentsQuickCreate',
			'field_to_name_array' => array(
				'id' => 'machine_id',
				'name' => 'machine',
			),
		);
	
		$encoded_popup_request_data = $json->encode($popup_request_data);
		$this->ss->assign('encoded_machine_popup_request_data', $encoded_popup_request_data);        
		*/











        
    }   
}
?>