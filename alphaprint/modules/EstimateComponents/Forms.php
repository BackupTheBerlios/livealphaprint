<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Forms
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



global $theme;
require_once('themes/'.$theme.'/layout_utils.php');

require_once('XTemplate/xtpl.php');
require_once('include/utils.php');

$image_path = 'themes/'.$theme.'/images/';

function get_new_record_form()
{
	if(ACLController::checkAccess('EstimateComponents', 'edit', true))return '';
	global $app_strings;
	global $mod_strings;
	global $currentModule;
	global $current_user;
	global $sugar_version, $sugar_config;
	

	$the_form = get_left_form_header($mod_strings['LBL_NEW_FORM_TITLE']);
	$form = new XTemplate ('modules/EstimateComponents/Forms.html');

	$module_select = empty($_REQUEST['module_select']) ? ''
		: $_REQUEST['module_select'];
	$form->assign('mod', $mod_strings);
	$form->assign('app', $app_strings);
	$form->assign('module', $currentModule);

	$options = get_select_options_with_id(get_user_array(), $current_user->id);
	$form->assign('ASSIGNED_USER_OPTIONS', $options);

	///////////////////////////////////////
	///
	/// SETUP ACCOUNT POPUP
	
	$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => "quick_save",
		'field_to_name_array' => array(
			'id' => 'parent_id',
			'name' => 'project_name',
			),
		);
	
	$json = getJSONobj();
	$encoded_popup_request_data = $json->encode($popup_request_data);
	
	//
	///////////////////////////////////////
	
	$form->assign('encoded_popup_request_data', $encoded_popup_request_data);


	$form->parse('main');
	$the_form .= $form->text('main');

   require_once('modules/EstimateComponents/EstimateComponents.php');
   $focus = new EstimateComponents();

   require_once('include/javascript/javascript.php');
   $javascript = new javascript();
   $javascript->setFormName('quick_save');
   $javascript->setSugarBean($focus);
   $javascript->addRequiredFields('');
   $jscript = $javascript->getScript();

   $the_form .= $jscript . get_left_form_footer();
	return $the_form;
}

/**
 * Create javascript to validate the data entered into a record.
 */
function get_validate_record_js () {
	return '';
}

function prepress_js () {
	
	$the_script  = <<<EOQ
	
	<SCRIPT language="Javascript" type="text/javascript" >

	toggleDisplay('screen');
	toggleDisplay('manual_mode');
	</script>
EOQ;

	return $the_script;
}

function get_layout_js () {
	
    global $mod_strings;
	global $app_strings;
	
	$err_invalidnumber = $app_strings['ERR_INVALIDNUMBER'];
	
	$err_duplicated = $app_strings['ERR_DUPLICATED'];
	$err_one_estimate_required = $app_strings['ERR_ONE_ESTIMATE_REQUIRED'];
	
	$the_script  = <<<EOQ
	
	<SCRIPT language="Javascript" type="text/javascript" >
	
	<!--
	
	var i=0
	if(document.getElementById("estimatetableid2")){
		var count = document.getElementById("estimatetableid2").rows.length; 
	}
    function add(form)
	{ 
	    
		
		 count ++;
		 var temp = document.getElementById("estimatetableid2");
		 temp.insertRow(temp.rows.length);
		 temp.rows.item(temp.rows.length - 1).insertCell(0);
		 var xx=temp.rows.length -1 ;//-1
		 
		 var sHTML = document.getElementById("estimate_row_id").innerHTML;
		 sHTML = sHTML.replace('estimate_row_table','estimate_row_table_' + count);
		
         
         sHTML = sHTML.replace('number_lots','number_lots_' + count);
		 sHTML = sHTML.replace('number_units','number_units_' + count );
         sHTML = sHTML.replace('run_style','run_style_' + count);
         
		 sHTML = sHTML.replace('removeRow(0)','Delete(EditView,rowIndexId_'+count+')');
	 	 sHTML = sHTML.replace('rowIndexId','rowIndexId_'+count);
	 	 sHTML = sHTML.replace('order_id','order_id_'+count);
		 sHTML = sHTML.replace('rowIdx',temp.rows.length-1);   

		 temp.rows.item(temp.rows.length-1).cells.item(0).innerHTML=sHTML;
		 
	}
	
	function Delete(form,x)
	{ 
		 var temp = document.getElementById("estimatetableid2");
		 
		 if(temp.rows.length == 1)
		 {
		 	alert('$err_one_estimate_required');
		 	return;
		 }
		 
		 var curIdxId = x.id
		 var curCount = eval(curIdxId.substr(curIdxId.indexOf("_")+1));
		 var curIdx = x.value;
		 temp.deleteRow(x.value)
	
	 	 while (curCount <= count)
		 {
		 	curCount++;
		 	var rowIdx = document.getElementById("rowIndexId_" + curCount);
		 	if(rowIdx != null && rowIdx != undefined)
		 	{
		 		rowIdx.value=curIdx++;
		 	}
		 }
		
	}
	
	function removeRow(form,count,index) {
		if(count > 1) {
			var temp = document.getElementById("estimatetable2");
			var table1 = document.getElementById('estimate_row_table_' + count);
			temp.deleteRow(index);
			count--;
		}
		form.estimate_count.value = count;
		
	}

	
	
	
	

	
	function check_estimate(form)
	{
		var temp = document.getElementById("estimatetableid2");
		var hasEstimate = false;
		for(var i = 1; i <= count ; i++)
		{
			
			var estimateid = form.elements['estimateid_' + i];
			
			if(estimateid != undefined)
			{
				if(estimateid.value != '')
				{
				
					hasEstimate = true;
				}
			}
		}
		
		if(!hasEstimate)alert('$err_one_estimate_required');
		return hasEstimate;
	}
	//-->

	</script>
EOQ;

	return $the_script;
}

?>
