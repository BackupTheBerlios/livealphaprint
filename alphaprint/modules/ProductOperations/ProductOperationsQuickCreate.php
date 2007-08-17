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
require_once('modules/ProductOperations/ProductOperation.php');
require_once('include/javascript/javascript.php');

class ProductOperationsQuickCreate extends QuickCreate {
    
    var $javascript;
    
    function process() {
        global $current_user, $timedate, $app_list_strings, $current_language, $mod_strings, $db;
        $mod_strings = return_module_language($current_language, 'ProductOperations');
        
        parent::process();
  
        if($this->viaAJAX) { // override for ajax call
            $this->ss->assign('saveOnclick', "onclick='if(check_form(\"productoperationsQuickCreate\")) return SUGAR.subpanelUtils.inlineSave(this.form.id, \"productoperations\"); else return false;'");
            $this->ss->assign('cancelOnclick', "onclick='return SUGAR.subpanelUtils.cancelCreate(\"subpanel_productoperations\")';");
        }
        
        $this->ss->assign('viaAJAX', $this->viaAJAX);
        
        $this->javascript = new javascript();
        $this->javascript->setFormName('productoperationsQuickCreate');
        
        $focus = new ProductOperation();
        $this->javascript->setSugarBean($focus);
        $this->javascript->addAllFields('');
       
        $component_id = $_REQUEST['return_id'];
        $query = 'SELECT parent_id';
        $query.= ' FROM products_components';
        $query.= " WHERE deleted=0";
        $query.= " AND id='$component_id' ";
        
        $result = $focus->db->query($query,true," Error filling in additional detail fields: ");
        $product_id = $focus->db->fetchByAssoc($result);
    
        
       
         
        $this->ss->assign('product_id_value', $product_id['parent_id']); 
		//$this->ss->assign("STATUS_OPTIONS", get_select_options_with_id($app_list_strings['project_status_dom'], $focus->status));
        $this->ss->assign('additionalScripts', $this->javascript->getScript(false));
        
        $json = getJSONobj();
        
		$popup_request_data = array(
			'call_back_function' => 'set_return',
			'form_name' => 'projectsQuickCreate',
			'field_to_name_array' => array(
				'id' => 'account_id',
				'name' => 'account_name',
			),
		);
	
		$encoded_popup_request_data = $json->encode($popup_request_data);
		$this->ss->assign('encoded_popup_request_data', $encoded_popup_request_data);        

		//machines popup
		$popup_request_data = array(
			'call_back_function' => 'set_return',
			'form_name' => 'productoperationsQuickCreate',
			'field_to_name_array' => array(
				'id' => 'machine_id',
				'name' => 'machine_name',
			),
		);
	
		$encoded_popup_request_data = $json->encode($popup_request_data);
		$this->ss->assign('encoded_machine_popup_request_data', $encoded_popup_request_data);        
		
		//Operation popup
		
		$popup_request_data = array(
			'call_back_function' => 'set_return',
			'form_name' => 'productoperationsQuickCreate',
			'field_to_name_array' => array(
				'id' => 'operation_id',
				'name' => 'operation_name',
			),
		);
	
		$encoded_popup_request_data = $json->encode($popup_request_data);
		$this->ss->assign('encoded_operations_popup_request_data', $encoded_popup_request_data);        
		








        
    }   
}
?>