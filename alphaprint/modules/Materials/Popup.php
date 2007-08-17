<?php
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

global $theme;
require_once('modules/Materials/Material.php');
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

$seed_object = new Material();
 
/* require_once('modules/Prices/Price.php');
$price = new Price();*/

$where = "";
//$where2 = "";
if(isset($_REQUEST['query']))
{
	$search_fields = Array("num", "name", "category", "measure");

	$where_clauses = Array();
	$where_clauses2 = Array();

	append_where_clause($where_clauses, "num", "materials.num");
	append_where_clause($where_clauses, "name", "materials.name");
	append_where_clause($where_clauses, "category", "materials.category");
    append_where_clause($where_clauses, "measure", "materials.measure");
    //append_where_clause($where_clauses2, "price", "prices.price");
    
	$where = generate_where_statement($where_clauses);
	//$where2 = generate_where_statement($where_clauses2);
	$GLOBALS['log']->info($where);
}




$image_path = 'themes/'.$theme.'/images/';

////////////////////////////////////////////////////////
// Start the output
////////////////////////////////////////////////////////
if (isset($_REQUEST['html'])){
if (($_REQUEST['html'] == 'supplies' ) || ($_REQUEST['html'] == 'purchaseorders')) {
	$form = new XTemplate ('modules/Materials/Popup_cust.html');
	$GLOBALS['log']->debug("using file modules/Materials/Popup_cust.html");


$form->assign("MOD", $mod_strings);
$form->assign("APP", $app_strings);

// the form key is required
if(!isset($_REQUEST['form']))
	sugar_die("Missing 'form' parameter");
	

if($_REQUEST['form'] == 'EditView')
{
	$index = $_REQUEST['index'];
	$the_javascript  = "<script type='text/javascript' language='JavaScript'>\n";

	
	$the_javascript .= "function set_return(id, name, measure, price) {\n";

	
	$the_javascript .= "	window.opener.document.EditView.materialid_$index.value = id;\n";
	$the_javascript .= "	window.opener.document.EditView.materialname_$index.value = name;\n";
    $the_javascript .= "    window.opener.document.EditView.measure_$index.value = measure;\n";
    $the_javascript .= "    window.opener.document.EditView.price_$index.value = price;\n";
	$the_javascript .= "}\n";

	$the_javascript .= "function set_null() {\n";
	$the_javascript .= "	window.opener.document.EditView.materialid_$index.value = ''; \n";
	$the_javascript .= "	window.opener.document.EditView.materialname_$index.value = ''; \n";
	$the_javascript .= "    window.opener.document.EditView.measure_$index.value = '';\n";
    
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

if (isset($_REQUEST['category'])) 
{
	$last_search['CATEGORY'] = $_REQUEST['category']; 	
}

if (isset($_REQUEST['measure'])) 
{
    $last_search['MEASURE'] = $_REQUEST['measure'];     
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
$ListView->setQuery($where, "", "num, name, measure", "MATERIAL");
$ListView->setModStrings($mod_strings);
$ListView->process_for_popups = true;
$ListView->processListView($seed_object, "main", "MATERIAL");
/*
$ListView->setQuery($where2, "", "price", "PRICE");
$ListView->setModStrings($mod_strings);
$ListView->process_for_popups = true;
$ListView->processListView($price, "price", "PRICE");*/
insert_popup_footer();
    }
}

elseif (isset($_REQUEST['html']) && ($_REQUEST['html'] == 'prices' )) {
	$form = new XTemplate ('modules/Materials/Popup_cust.html');
	$GLOBALS['log']->debug("using file modules/Materials/Popup_cust.html");


$form->assign("MOD", $mod_strings);
$form->assign("APP", $app_strings);

// the form key is required
if(!isset($_REQUEST['form']))
	sugar_die("Missing 'form' parameter");
	

if($_REQUEST['form'] == 'EditView')
{
	$index = $_REQUEST['index'];
	$the_javascript  = "<script type='text/javascript' language='JavaScript'>\n";

	
	$the_javascript .= "function set_return(id, name) {\n";

	
	$the_javascript .= "	window.opener.document.EditView.material_id.value = id;\n";
	$the_javascript .= "	window.opener.document.EditView.name.value = name;\n";
	$the_javascript .= "}\n";

	$the_javascript .= "function set_null() {\n";
	$the_javascript .= "	window.opener.document.EditView.material_id.value = ''; \n";
	$the_javascript .= "	window.opener.document.EditView.name.value = ''; \n";
	
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

if (isset($_REQUEST['category'])) 
{
	$last_search['CATEGORY'] = $_REQUEST['category']; 	
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
$ListView->setQuery($where, "", "num, name", "MATERIAL");
$ListView->setModStrings($mod_strings);
$ListView->process_for_popups = true;
$ListView->processListView($seed_object, "main", "MATERIAL");

insert_popup_footer();
}
else { 
	require_once('include/Popups/Popup_picker.php');
	$popup = new Popup_Picker();
	echo $popup->process_page();
}   
?>