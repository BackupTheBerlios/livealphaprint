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
	if(!ACLController::checkAccess('Presspricelist', 'edit', true))return '';
	global $app_strings;
	global $mod_strings;
	global $currentModule;
	global $current_user;

	$the_form = get_left_form_header($mod_strings['LBL_QUICK_NEW_PRESSPRICELIST']);
	$form = new XTemplate ('modules/Presspricelist/Forms.html');

	$module_select = empty($_REQUEST['module_select']) ? ''
		: $_REQUEST['module_select'];
	$form->assign('mod', $mod_strings);
	$form->assign('app', $app_strings);
	$form->assign('module', $currentModule);

	$json = getJSONobj();
	$popup_request_data = array(
		'call_back_function' => 'set_return',
		'form_name' => 'quick_save',
		'field_to_name_array' => array(
			'id' => 'assigned_user_id',
			'user_name' => 'assigned_user_name',
			),
		);
	$form->assign('encoded_users_popup_request_data', $json->encode($popup_request_data));
	
	$form->parse('main');
	$the_form .= $form->text('main');
	
	require_once('modules/Presspricelist/Presspricelist.php');
   $focus = new Presspricelist();
   
   require_once('include/QuickSearchDefaults.php');
	$qsd = new QuickSearchDefaults();
	$sqs_objects = array('assigned_user_name' => $qsd->getQSUser());
	$quicksearch_js = $qsd->getQSScripts();
	$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';
	echo $quicksearch_js;



   require_once('include/javascript/javascript.php');
   $javascript = new javascript();
   $javascript->setFormName('quick_save');
   $javascript->setSugarBean($focus);
   $javascript->addRequiredFields('');
   $javascript->addToValidateBinaryDependency('assigned_user_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $app_strings['LBL_ASSIGNED_TO'], 'false', '', 'assigned_user_id');
   $jscript = $javascript->getScript();

   $the_form .= $jscript . get_left_form_footer();

	return $the_form;
}
function get_pricelist_js () {
	
    global $mod_strings;
	global $app_strings;
	
	$err_invalidnumber = $app_strings['ERR_INVALIDNUMBER'];
	//$err_invalid_count = $mod_strings['ERR_INVALID_COUNT'];
	$err_duplicated = $app_strings['ERR_DUPLICATED'];
	//$no_product_selected = $mod_strings['ERR_NO_PRODUCT_SELECTED'];
	$err_one_material_required = $app_strings['ERR_ONE_MATERIAL_REQUIRED'];
	
	$the_script  = <<<EOQ
	<SCRIPT language="Javascript" type="text/javascript" >
	
	<!--
	
    var i=0
    var count = document.getElementById("producttableid2").rows.length;
    document.getElementById("id_num").value = count;
    
    
    function add(form)
    { 
         count ++;
         var temp = document.getElementById("producttableid2");
         temp.insertRow(temp.rows.length);
         temp.rows.item(temp.rows.length - 1).insertCell(0);
         var xx=temp.rows.length -1 ;//-1
         var id_num = document.getElementById("id_num").value;
         var sHTML = document.getElementById("product_row_id").innerHTML;
         sHTML = sHTML.replace('product_row_table','product_row_table_' + count);
         
         
         sHTML = sHTML.replace('impressions_number','impressions_number_' + count ); 
         sHTML = sHTML.replace('base_price','base_price_' + count ); 
         sHTML = sHTML.replace('step_price','step_price_' + count );
 		 
		 sHTML = sHTML.replace('impressionsnumberid','impressions_number_' + count );
		 sHTML = sHTML.replace('basepriceid','base_price_' + count );
		 sHTML = sHTML.replace('steppriceid','step_price_' + count );
         
         sHTML = sHTML.replace('removeRow(0)','Delete(EditView,rowIndexId_'+count+')');
         sHTML = sHTML.replace('rowIndexId','rowIndexId_'+count);
         sHTML = sHTML.replace('order_id','order_id_'+count);
         sHTML = sHTML.replace('rowIdx',temp.rows.length-1);
		 
		 document.getElementById("id_num").value = (id_num + 1);
         temp.rows.item(temp.rows.length-1).cells.item(0).innerHTML=sHTML;
         
    }
	
	function Delete(form,x)
    { 
         var temp = document.getElementById("producttableid2");
         var id_num_decrease = document.getElementById("id_num").value;
         if(temp.rows.length == 1)
         {
             alert('Error');
             return;
         }
         
         var curIdxId = x.id
         var curCount = eval(curIdxId.substr(curIdxId.indexOf("_")+1));
         var curIdx = x.value;
         document.getElementById("id_num").value = (id_num_decrease - 1);
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
            var temp = document.getElementById("producttable2");
            var table1 = document.getElementById('product_row_table_' + count);
            temp.deleteRow(index);
            count--;
        }
    }
	

	

	
	
	
	

	

	//-->
	</script>

EOQ;

	return $the_script;
}

/**
 * Create javascript to validate the data entered into a record.
 */

function get_validate_record_js ()
{
	return '';
}

?>