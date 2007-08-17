<?php
global $theme;
require_once('modules/Suppliers/Supplier.php');
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

$seed_object = new Supplier();
 
 require_once('modules/Prices/Price.php');
$price = new Price();

$where = "";
if(isset($_REQUEST['query']))
{
	$search_fields = Array("num", "name");

	$where_clauses = Array();

	append_where_clause($where_clauses, "num", "supplier.num");
	append_where_clause($where_clauses, "name", "supplier.name");
    
	$where = generate_where_statement($where_clauses);
	$GLOBALS['log']->info($where);
}




$image_path = 'themes/'.$theme.'/images/';

////////////////////////////////////////////////////////
// Start the output
////////////////////////////////////////////////////////
if (isset($_REQUEST['html']) && ($_REQUEST['html'] == 'supplier' )) {
	$form = new XTemplate ('modules/Suppliers/Popup_cust.html');
	$GLOBALS['log']->debug("using file modules/Suppliers/Popup_cust.html");


$form->assign("MOD", $mod_strings);
$form->assign("APP", $app_strings);

// the form key is required
if(!isset($_REQUEST['form']))
	sugar_die("Missing 'form' parameter");
	

if($_REQUEST['form'] == 'form')
{
	$index = $_REQUEST['index'];
	$the_javascript  = "<script type='text/javascript' language='JavaScript'>\n";

	
	$the_javascript .= "function set_return(id, name) {\n";

	
	$the_javascript .= "	window.opener.document.getElementById('supplier_id').value = id;\n";
	$the_javascript .= "	window.opener.document.getElementById('supplier_name').value = name;\n";
  $the_javascript .= "}\n";

	$the_javascript .= "function set_null() {\n";
	$the_javascript .= "	window.opener.document.getElementById('supplier_id').value = ''; \n";
	$the_javascript .= "	window.opener.document.getElementById('supplier_name').value = ''; \n";
	$the_javascript .= "	window.close(); \n";
	$the_javascript .= "}\n";
	$the_javascript .= "</script>\n";
	
	$button  = "<form action='index.php' method='post' name='form' id='form'>\n";
	$button .= "<input title='".$app_strings['LBL_CLEAR_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CLEAR_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"set_null()\" type='submit' name='button' value='  ".$app_strings['LBL_CLEAR_BUTTON_LABEL']."  '>\n";

	$button .= "<input title='".$app_strings['LBL_CANCEL_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CANCEL_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"window.close()\" type='submit' name='button' value='  ".$app_strings['LBL_CANCEL_BUTTON_LABEL']."  '>\n";
	$button .= "</form>";
}



$form->assign("SET_RETURN_JS", $the_javascript);
$form->assign("THEME", $theme);
$form->assign("IMAGE_PATH", $image_path);
$form->assign("MODULE_NAME", $currentModule);
if (isset($_REQUEST['form_submit'])) $form->assign("FORM_SUBMIT", $_REQUEST['form_submit']);
$form->assign("FORM", $_REQUEST['form']);

insert_popup_header($theme); 

// Quick search.
echo get_form_header($mod_strings['LBL_SEARCH_FORM_TITLE'], "", false);

if (isset($_REQUEST['num']))
{
	$last_search['NUM'] = $_REQUEST['num']; 	
}

if (isset($_REQUEST['name']))
{
	$last_search['NAME'] = $_REQUEST['name']; 	
}


if (isset($last_search)) 
{
	$form->assign("LAST_SEARCH", $last_search);
}

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
$ListView->setQuery($where, "", "num, name", "SUPPLIER");
$ListView->setModStrings($mod_strings);
$ListView->process_for_popups = true;
$ListView->processListView($seed_object, "main", "SUPPLIER");

insert_popup_footer();
}


else { 
	require_once('include/Popups/Popup_picker.php');
	$popup = new Popup_Picker();
	echo $popup->process_page();
}   
?>
