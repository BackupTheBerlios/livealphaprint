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


require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/ProductComponents/ProductComponents.php');
require_once('modules/ProductOperations/ProductOperation.php');
require_once('modules/ProductComponents/Forms.php');
require_once('modules/Layoutline/Layoutline.php');
require_once('include/time.php');
require_once('modules/Format/Format.php');

global $timedate;
global $app_strings;
global $app_list_strings;
global $current_language;
global $current_user;
global $sugar_version, $sugar_config;

// Unimplemented until jscalendar language files are fixed
// global $current_language;
// global $default_language;
// global $cal_codes;

$focus = new ProductComponents();

if(!empty($_REQUEST['record'])) {
    $focus->retrieve($_REQUEST['record']);
}

echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";
global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');

$GLOBALS['log']->info("ProductComponents detail view");

$xtpl=new XTemplate ('modules/ProductComponents/EditView.html');
$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);

///
/// Populate the fields with existing data
///
$prefillArray = array('name' 	 	 => 'name',
					  'description'  => 'description',
					  'product_name'	 => 'parent_name',
					  'parent_id' 	 => 'parent_id',
					  'percent_complete' => 'percent_complete', 
					  'status' 		 => 'status'					  
 					);
 					
foreach($prefillArray as $requestKey => $focusVar) {
    if (isset($_REQUEST[$requestKey]) && is_null($focus->$focusVar)) {
        $focus->$focusVar = urldecode($_REQUEST[$requestKey]);
    }
} 					

if(isset($_REQUEST['email_id'])) { $xtpl->assign('EMAIL_ID', $_REQUEST['email_id']); }
$xtpl->assign('name', $focus->name);
if (empty($focus->assigned_user_id) && empty($focus->id))  $focus->assigned_user_id = $current_user->id;
if (empty($focus->assigned_name) && empty($focus->id))  $focus->assigned_user_name = $current_user->user_name;
$xtpl->assign("ASSIGNED_USER_OPTIONS", get_select_options_with_id(get_user_array(TRUE, "Active", $focus->assigned_user_id), $focus->assigned_user_id));
$xtpl->assign("ASSIGNED_USER_NAME", $focus->assigned_user_name);
$xtpl->assign("ASSIGNED_USER_ID", $focus->assigned_user_id );














if(isset($_REQUEST['isDuplicate']) && $_REQUEST['isDuplicate'] == 'true') {
	$focus->id = "";
}

$the_status = empty($_REQUEST['status']) ? $focus->status
	: $_REQUEST['status'];

///////////////////////////////////////
///
/// SETUP DEPENDS ON POPUP

$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'depends_on_id',
		'name' => 'depends_on_name',
		),
	);

$json = getJSONobj();
$encoded_depends_on_popup_request_data = $json->encode($popup_request_data);
$xtpl->assign('encoded_depends_on_popup_request_data', $encoded_depends_on_popup_request_data);

//
///////////////////////////////////////

///////////////////////////////////////
///
/// SETUP PARENT POPUP

$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'parent_id',
		'name' => 'parent_name',
		),
	);

$encoded_parent_popup_request_data = $json->encode($popup_request_data);
$xtpl->assign('encoded_parent_popup_request_data', $encoded_parent_popup_request_data);

/// Users Popup
$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'assigned_user_id',
		'user_name' => 'assigned_user_name',
		),
	);
$xtpl->assign('encoded_users_popup_request_data', $json->encode($popup_request_data));


$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'calculant_id',
		'user_name' => 'calculant_name',
		),
	);
$xtpl->assign('encoded_calculant_popup_request_data', $json->encode($popup_request_data));




$popup_request_data = array(
	'call_back_function' => 'AddComponentGridRow',
	'form_name' => 'EditView',
	/*'field_to_name_array' => array(
		'id' => 'assigned_user_id',
		'user_name' => 'assigned_user_name',
		),*/
	);
$xtpl->assign('encoded_operations_popup_request_data', $json->encode($popup_request_data));

$popup_request_data = array(
	'call_back_function' => 'AddInkGridRow',
	'form_name' => 'EditView',
	/*'field_to_name_array' => array(
		'id' => 'assigned_user_id',
		'user_name' => 'assigned_user_name',
		),*/
	);
$xtpl->assign('encoded_ink_popup_request_data', $json->encode($popup_request_data));

$popup_request_data = array(
	'call_back_function' => 'AddPrepressGridRow',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => '',
		'name' => '',
		'size_x' => '',
		'size_y' => '',
		'gauge' => '',
		),
	);
$xtpl->assign('encoded_ctp_popup_request_data', $json->encode($popup_request_data));

$popup_request_data = array(
	'call_back_function' => 'AddPrepressGridRow',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => '',
		'name' => '',
		'size_x' => '',
		'size_y' => '',
		),
	);
$xtpl->assign('encoded_film_popup_request_data', $json->encode($popup_request_data));

$popup_request_data = array(
	'call_back_function' => 'set_return',
	'popup_return' => 'getPaperInfo',
	'custom_callback_fucntion' => 'cleanPaperRate_and_supplier',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'paperid',
		'pname' => 'paper',

		),
	);
$xtpl->assign('encoded_paper_popup_request_data', $json->encode($popup_request_data));

$popup_request_data = array(
	'call_back_function' => 'set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'paper_rate_id',
		'name' => 'paper_rate',
		'supplier_name' => 'supplier_name',
		'supplier_id' => 'supplier_id',
		'price' => 'rate_price',
		'price_usdollar' => 'price',
		),
	);
$xtpl->assign('encoded_paper_price_popup_request_data', $json->encode($popup_request_data));


$popup_request_data = array(
	'call_back_function' => 'set_return',
	'custom_callback_fucntion' => 'cleanPaperRate',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'supplier_id',
		'name' => 'supplier_name',
		),
	);
$xtpl->assign('encoded_supplier_popup_request_data', $json->encode($popup_request_data));

//
///////////////////////////////////////
if (isset($_REQUEST['stat_action']) && !empty($_REQUEST['stat_action']) && !is_null($_REQUEST['stat_action'])){
	$xtpl->assign('stat_action', $_REQUEST['stat_action']);		
}
else{
	$xtpl->assign('stat_action', '');	
}


//$options = get_select_options_with_id($app_list_strings['products_components_status_options'], $the_status);
//$xtpl->assign('status_options', $options);
$xtpl->assign('id', $focus->id);


$xtpl->assign('parent_id', $focus->parent_id);
$xtpl->assign('parent_name', $focus->parent_name);

$xtpl->assign('number', $focus->number);
$xtpl->assign('paper', $focus->paper);
$xtpl->assign('paperid', $focus->paperid);
$paper = $focus->get_paper_info($focus->paperid);

$xtpl->assign('papersize_x', $paper['size_h']);
$xtpl->assign('papersize_y', $paper['size_w']);
$xtpl->assign('paper_type', $paper['chrome']);
$xtpl->assign('paper_texture', $paper['texture']);
$xtpl->assign('paper_weight', $paper['weight']);
$xtpl->assign('paper_color', $paper['color']);
$xtpl->assign('paper_absorbtion', $paper['absorbtion']);
$xtpl->assign('paper_print_type', $paper['side']);


$xtpl->assign('volume', $focus->volume);
if (!is_null($focus->quantity) && !empty($focus->quantity)){
	$xtpl->assign('quantity', $focus->quantity);
}
else {
	$xtpl->assign('quantity', $focus->get_quantity($focus->parent_id));
}
$xtpl->assign('machine', $focus->machine);
$xtpl->assign('paper_rate_id', $focus->paper_rate_id);
$xtpl->assign('paper_rate', $focus->paper_rate);
$xtpl->assign('rate_price', $focus->rate_price);
$xtpl->assign('price', $focus->price);
$xtpl->assign('supplier_id', $focus->supplier_id);
$xtpl->assign('supplier_name', $focus->supplier_name);
$xtpl->assign('calculant_id', $focus->calculant_id);
$xtpl->assign('calculant_name', $focus->calculant_name);
$xtpl->assign('machine', $focus->machine);

$xtpl->assign('type_options', get_select_options_with_id($app_list_strings['type_options'], $focus->type));
//$xtpl->assign('type_options', get_select_options_with_id($app_list_strings['type_options'], $focus->type));
$xtpl->assign('color_side_a', get_select_options_with_id($app_list_strings['color_side_a'], $focus->color_side_a));
$xtpl->assign('color_side_b', get_select_options_with_id($app_list_strings['color_side_b'], $focus->color_side_b));
$xtpl->assign('description', $focus->description);
$xtpl->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));
$xtpl->assign('run_style_options', get_select_options_with_id($app_list_strings['layout_type_options'], ''));
$xtpl->assign("client_paper_options", get_select_options_with_id($app_list_strings['client_paper_options'], $focus->client_paper));

$xtpl->assign("client_paper_options", get_select_options_with_id($app_list_strings['client_paper_options'], $focus->client_paper));

if (empty($focus->status) || is_null($focus->status)){
	$xtpl->assign('status', get_select_options_with_id($app_list_strings['product_component_status_draft'], $focus->status));
}
else{
	$xtpl->assign('status', get_select_options_with_id($app_list_strings['product_component_status_'.$focus->status], $focus->status));
}
$format = new Format();
$app_list_strings['products_format_options'] = $format->Get_Dropdown_Data();
$xtpl->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));
$xtpl->assign("RUN_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->run_format));
$xtpl->assign("BLEED_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->bleed_format));
$xtpl->assign("PAPERPRESS_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->paperpress_format));
$xtpl->assign("PRESS_FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->press_format));

$xtpl->assign("fsize_h", $focus->fsize_h);
$xtpl->assign("fsize_w", $focus->fsize_w);
$xtpl->assign("run_size_x", $focus->run_size_x);
$xtpl->assign("run_size_y", $focus->run_size_y);
$xtpl->assign("bleed_size_x", $focus->bleed_size_x);
$xtpl->assign("bleed_size_y", $focus->bleed_size_y);
$xtpl->assign("paperpress_size_x", $focus->paperpress_size_x);
$xtpl->assign("paperpress_size_y", $focus->paperpress_size_y);
$xtpl->assign("press_size_x", $focus->press_size_x);
$xtpl->assign("press_size_y", $focus->press_size_y);


$app_list_strings['products_format_options'] = $format->Get_Dropdown_Data();   
$xtpl->assign("prepress_options", get_select_options_with_id($app_list_strings['dom_prepress_options'], ''));

$validation_script = '<script type="text/javascript"> ';
/*$validation_script = $validation_script.'var formname = "EditView"; ';
$validation_script = $validation_script.'if(typeof validate[formname] == "undefined") {';
$validation_script = $validation_script.'	addForm(formname); }';*/


//Assign Layout list
$layoutlines = $focus->getLayoutRows();
if(count($layoutlines) == 0)
{
	$xtpl->assign("LAYOUTROWS",$focus->getLayoutRow(new Layoutline(),0,true));
	$xtpl->parse("main.row1");		
}
for ($i=0;$i<count($layoutlines);$i++) {
	    $fieldcount = count($layoutlines[$i]);
		$xtpl->assign("LAYOUTROWS",$focus->getLayoutRow($layoutlines[$i],$i, true));
		$xtpl->parse("main.row1");		
}


//Assign Operations list
$operationlines = $focus->getOperationsRows();
if(count($operationlines) == 0)
{
	$xtpl->assign("CUTTING_OPERATIONS","");
	$xtpl->assign("OTHER_OPERATIONS","");
}
for ($i=0;$i<count($operationlines);$i++) {
	
		$operation_type = $focus->getOperationtype($operationlines[$i]->operation_id);
		if ($operation_type == "Книговезане"){
			$validation_script = $validation_script.' addToValidate("EditView", "CutngOperations_count_'.$i.'", "int",true, ""); '; 
			
			$xtpl->assign("CUTTING_OPERATIONS",$focus->getOperationsRow($operationlines[$i],$i, true));	
			$xtpl->parse("main.cuttingoperation_row1");
		}
		else{
			$validation_script = $validation_script.' addToValidate("EditView", "OtherOperations_count_'.$i.'", "int",true, ""); '; 
	
			$xtpl->assign("OTHER_OPERATIONS",$focus->getOperationsRow($operationlines[$i],$i, true));		
			$xtpl->parse("main.otheroperation_row1");
		}
		//		
}

//Assign Prepress

$prepresslines = $focus->getPrepressRows();
if(count($prepresslines) == 0)
{
	$xtpl->assign("ctp_a","");
	$xtpl->assign("ctp_b","");
	$xtpl->assign("film_a","");
	$xtpl->assign("film_b","");
	$xtpl->assign("prepress_js","");
}
else{
	$xtpl->assign("prepress_js", prepress_js());
	$x=-1;
	$prepressrows = array();
	$prepressrownum = array();
	$index = array("ctp_a" => $q=0, "ctp_b" => $p=0, "flm_a" => $r=0, "flm_b" => $t=0);
}

for ($i=0;$i<count($prepresslines);$i++) {
		$type = $prepresslines[$i]->type."_".$prepresslines[$i]->side;
        if (empty($prepressrows[$type]) || is_null($prepressrows[$type])){
            $prepressrows[$type] = "";
        }
        	$index[$type]++;
		    $prepressrows[$type] = $prepressrows[$type].$focus->getPrepressRow($prepresslines[$i],$index[$type], true);
            $x=$x+1;
            $prepressrownum[$x]=$type;
            
            $validation_script = $validation_script.' addToValidate("EditView", "'.$prepresslines[$i]->type.'_count_'.$prepresslines[$i]->side.'_'.$index[$type].'", "int",true, ""); '; 
		     	
}
if($index['ctp_a']>0 || $index['ctp_b']>0){
	$validation_script .= 'toggleDisplay("ctp");';
}
if($index['flm_a']>0 || $index['flm_b']>0){
	$validation_script .= 'toggleDisplay("film");';
}
for ($i=0;$i<count($prepressrownum);$i++) {
      $type = $prepressrownum[$i];
      $xtpl->assign($prepressrownum[$i],$prepressrows[$type]);    
        
}

//Assign Ink
$inklines = $focus->getInkRows();
if(count($prepresslines) == 0)
{
	$xtpl->assign("inks_names_side_a","");
	$xtpl->assign("inks_names_side_b","");
	$xtpl->assign("inkId_side_a","");
	$xtpl->assign("inkId_side_b","");
	$x=-1;
}
else {
    $x=-1; 
    $inktypes = array();
    $index_inktypes = array();
}

for ($i=0;$i<count($inklines);$i++) {
		$type = "side_".$inklines[$i]->side;
        if (empty($inktypes[$type]) || is_null($inktypes[$type])){
            $inktypes[$type] = "";
        }
		if (empty($inktypes[$type]['id']) || is_null($inktypes[$type]['id'])){
		            $inktypes[$type]['id'] = "";
		        }
		if (empty($inktypes[$type]['name']) || is_null($inktypes[$type]['name'])){
		            $inktypes[$type]['name'] = "";
		        }
        	//$index[$type]++;
		    $inktypes[$type]['id'] = $inktypes[$type]['id'].$focus->getInkRow($inklines[$i],$i, true);
            $inktypes[$type]['name'] = $inktypes[$type]['name'].$focus->getInkNames($inklines[$i]->color_id,$i, true).',';
			$x=$x+1;
            $index_inktypes[$x]=$type;
		     	
}

for ($i=0;$i<count($index_inktypes);$i++) {
      $type = $index_inktypes[$i];
      $xtpl->assign("inks_names_".$index_inktypes[$i],$inktypes[$type]['name']);    
      $xtpl->assign("inkId_".$index_inktypes[$i],$inktypes[$type]['id']);   
}


if (isset($_REQUEST['return_module'])) $xtpl->assign("RETURN_MODULE", $_REQUEST['return_module']);
if (isset($_REQUEST['return_action'])) $xtpl->assign("RETURN_ACTION", $_REQUEST['return_action']);
if (isset($_REQUEST['return_id'])) $xtpl->assign('RETURN_ID', $_REQUEST['return_id']);
// handle Create $module then Cancel
if (empty($_REQUEST['return_id'])) {
	$xtpl->assign("RETURN_ACTION", 'index');
}
if (isset($_REQUEST['parent_id'])) $xtpl->assign('parent_id', $_REQUEST['parent_id']);
if (isset($_REQUEST['parent_name'])) $xtpl->assign('parent_name', $_REQUEST['parent_name']);


$xtpl->assign("CALENDAR_DATEFORMAT", $timedate->get_cal_date_format());
$xtpl->assign("THEME", $theme);

require_once('include/QuickSearchDefaults.php');
$qsd = new QuickSearchDefaults();
$sqs_objects = array('parent_name' => $qsd->getQSParent(), 
					'assigned_user_name' => $qsd->getQSUser(),



					);
$sqs_objects['parent_name']['modules'] = array('Products');
$quicksearch_js = $qsd->getQSScripts();
$quicksearch_js .= '<script type="text/javascript" language="javascript">sqs_objects = ' . $json->encode($sqs_objects) . '</script>';

$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js(). get_layout_js() . $quicksearch_js);
$xtpl->assign("IMAGE_PATH", $image_path);$xtpl->assign("PRINT_URL", "index.php?".$GLOBALS['request_string']);
$xtpl->assign("id", $focus->id);
if (isset($focus->name)) $xtpl->assign("NAME", $focus->name);
else $xtpl->assign("NAME", "");

//Add Custom Fields
require_once('modules/DynamicFields/templates/Files/EditView.php');

global $current_user;
if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){	
	$record = '';
	if(!empty($_REQUEST['record'])){
		$record = 	$_REQUEST['record'];
	}
	$xtpl->assign("ADMIN_EDIT","<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$record. "'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");	
}




$xtpl->parse("main.open_source");


$validation_script = $validation_script.'</script>';

//$xtpl->assign("validation_script", $validation_script);

$xtpl->parse("main");

$xtpl->out("main");
require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');
$javascript->addToValidateBinaryDependency('parent_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $mod_strings['LBL_PARENT_ID'], 'false', '', 'parent_id');




$javascript->addToValidateBinaryDependency('assigned_user_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $app_strings['LBL_ASSIGNED_TO'], 'false', '', 'assigned_user_id');
echo $javascript->getScript();
echo $validation_script;
require_once('modules/SavedSearch/SavedSearch.php');
$savedSearch = new SavedSearch();
$json = getJSONobj();
$savedSearchSelects = $json->encode(array($GLOBALS['app_strings']['LBL_SAVED_SEARCH_SHORTCUT'] . '<br>' . $savedSearch->getSelect('ProductComponents')));
$str = "<script>
YAHOO.util.Event.addListener(window, 'load', SUGAR.util.fillShortcuts, $savedSearchSelects);
</script>";
echo $str;

?>