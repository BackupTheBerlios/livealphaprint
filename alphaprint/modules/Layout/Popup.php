<?php

global $theme;
require_once('modules/Press/Press.php');
require_once('themes/'.$theme.'/layout_utils.php');
require_once('log4php/LoggerManager.php');
require_once('XTemplate/xtpl.php');
require_once('include/utils.php');
require_once('include/ListView/ListView.php');

global $app_strings;
global $app_list_strings;
global $mod_strings;

global $urlPrefix;
global $currentModule;

$seed_object = new Press();


$where = "";
if(isset($_REQUEST['query']))
{
	$search_fields = Array("name");
	$where_clauses = Array();
	append_where_clause($where_clauses, "name", "press.name");
	$where = generate_where_statement($where_clauses);
	$GLOBALS['log']->info($where);

	$image_path = 'themes/'.$theme.'/images/';
}

////////////////////////////////////////////////////////
// Start the output
////////////////////////////////////////////////////////
if (isset($_REQUEST['html']) && ($_REQUEST['html'] == 'layout')) {
	$form =new XTemplate ('modules/Layout/Popup_cust.html');
	$GLOBALS['log']->debug("using file modules/Layout/Popup_cust.html");


$form->assign("MOD", $mod_strings);
$form->assign("APP", $app_strings);

// the form key is required
if(!isset($_REQUEST['form']))
	sugar_die("Missing 'form' parameter");

if($_REQUEST['form'] == 'EditView')
{
	$index = $_REQUEST['index'];
	$the_javascript  = "<script type='text/javascript' language='JavaScript'>\n";

	
	$the_javascript .= "function set_return(id,name) {\n";

	
	$the_javascript .= "	window.opener.document.EditView.layout_id_$index.value = id;\n";
	$the_javascript .= "	window.opener.document.EditView.layout_name_$index.value = name;\n";

	$the_javascript .= "}\n";

	$the_javascript .= "function set_null() {\n";
	$the_javascript .= "	window.opener.document.EditView.layout_id_$index.value = '';\n";
	$the_javascript .= "	window.opener.document.EditView.layout_name_$index.value = '';\n";
	
	$the_javascript .= "	window.close(); \n";
	$the_javascript .= "}\n";
	$the_javascript .= "</script>\n";
	
	$button  = "<form action='index.php' method='post' name='form' id='form'>\n";
	$button .= "<input title='".$app_strings['LBL_CLEAR_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CLEAR_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"set_null()\" type='submit' name='button' value='  ".$app_strings['LBL_CLEAR_BUTTON_LABEL']."  '>\n";

	$button .= "<input title='".$app_strings['LBL_CANCEL_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CANCEL_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"window.close()\" type='submit' name='button' value='  ".$app_strings['LBL_CANCEL_BUTTON_LABEL']."  '>\n";
	$button .= "</form>";
}

$form->assign("SET_RETURN_JS", $the_javascript);

/*require_once('modules/Products/ProductFormBase.php');
$formBase = new ProductFormBase();
if(isset($_REQUEST['doAction']) && $_REQUEST['doAction'] == 'save'){
        $formBase->handleSave('', false, true);
}
$lbl_save_button_title = $app_strings['LBL_SAVE_BUTTON_TITLE'];
$lbl_save_button_key = $app_strings['LBL_SAVE_BUTTON_KEY'];
$lbl_save_button_label = $app_strings['LBL_SAVE_BUTTON_LABEL'];
$formbody = $formBase->getFormBody('','',$_REQUEST['form']);
$formbody = '<table><tr><td nowrap valign="top">'.str_replace('<br>', '</td><td nowrap valign="top">&nbsp;', $formbody). '</td></tr></table>';
$formSave= <<<EOQ
<input title='$lbl_save_button_title' accessKey='$lbl_save_button_key' class='button' type='submit' name='button' value='  $lbl_save_button_label  ' >&nbsp;<input title='{$app_strings['LBL_CANCEL_BUTTON_TITLE']}' accessKey='{$app_strings['LBL_CANCEL_BUTTON_KEY']}' class='button'  onClick="toggleDisplay('addform');" type='button' name='button' value='{$app_strings['LBL_CANCEL_BUTTON_LABEL']}' >
EOQ;

$createContact = <<<EOQ
<input class='button' type='button' name='showAdd' value='{$mod_strings['LBL_ADD_PRODUCT']}' onClick='toggleDisplay("addform");'>
EOQ;
$form->assign("CREATEPRODUCT", $createContact);

$form->assign("ADDFORMHEADER", get_form_header($mod_strings['LBL_ADD_PRODUCT'], $formSave, false));
$form->assign("ADDFORM", $formbody);

$form->assign("THEME", $theme);
$form->assign("IMAGE_PATH", $image_path);
*/
$form->assign("MODULE_NAME", $currentModule);
if (isset($_REQUEST['form_submit'])) $form->assign("FORM_SUBMIT", $_REQUEST['form_submit']);
$form->assign("FORM", $_REQUEST['form']);

insert_popup_header($theme);
// Quick search.
echo get_form_header($mod_strings['LBL_SEARCH_FORM_TITLE'], "", false);

/*if (isset($_REQUEST['pnum']))
{
	$last_search['PNUM'] = $_REQUEST['pnum']; 	
}

if (isset($_REQUEST['name']))
{
	$last_search['NAME'] = $_REQUEST['name']; 	
}

if (isset($_REQUEST['category'])) 
{
	$last_search['CATEGORY'] = $_REQUEST['category']; 	
}

if (isset($last_search)) 
{
	$form->assign("LAST_SEARCH", $last_search);
}
*/
$form->parse("main.SearchHeader");
$form->out("main.SearchHeader");

echo get_form_footer();

$form->parse("main.SearchHeaderEnd");
$form->out("main.SearchHeaderEnd");

// Reset the sections that are already in the page so that they do not print again later.
$form->reset("main.SearchHeader");
$form->reset("main.SearchHeaderEnd");

// Stick the form header out there.



$ListView = new ListView();
$ListView->setXTemplate($form);
$ListView->setHeaderTitle($mod_strings['LBL_LIST_FORM_TITLE']);
$ListView->setHeaderText($button);
$ListView->setQuery($where, "", "name", "PRESS");
$ListView->setModStrings($mod_strings);
$ListView->process_for_popups = true;
$ListView->processListView($seed_object, "main", "PRESS");

insert_popup_footer();
}

else {
	require_once('include/Popups/Popup_picker.php');
	$popup = new Popup_Picker();
	echo $popup->process_page();
}
?>