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
require_once('modules/Estimates/Estimates.php');
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

$seed_object = new Estimates();


$where = "";
if(isset($_REQUEST['query']))
{
	$search_fields = Array("number", "name", "category");

	$where_clauses = Array();

	append_where_clause($where_clauses, "number", "estimates.number");
	append_where_clause($where_clauses, "name", "estimates.name");
	append_where_clause($where_clauses, "category", "estimates.category");

	$where = generate_where_statement($where_clauses);
	$GLOBALS['log']->info($where);
}


$image_path = 'themes/'.$theme.'/images/';

////////////////////////////////////////////////////////
// Start the output
////////////////////////////////////////////////////////
if (isset($_REQUEST['html']) && ($_REQUEST['html'] == 'quotes')) {
	$form =new XTemplate ('modules/Estimates/Popup_cust.html');
	$GLOBALS['log']->debug("using file modules/Estimates/Popup_cust.html");


$form->assign("MOD", $mod_strings);
$form->assign("APP", $app_strings);

// the form key is required
if(!isset($_REQUEST['form']))
	sugar_die("Missing 'form' parameter");
	
// This code should always return an answer.
// The form name should be made into a parameter and not be hard coded in this file.
//{ESTIMATE.ID}", "{ESTIMATE.NAME}", "{ESTIMATE.NUMBER}", "{ESTIMATE.UNITPRICE}")
/*
sHTML = sHTML.replace('cost_price','cost_price_' + count);
	 sHTML = sHTML.replace('list_price','list_price_' + count);
	 sHTML = sHTML.replace('unit','unit_' + count);
	 sHTML = sHTML.replace('index=0','index=' + count);
	 sHTML = sHTML.replace('estimate_name','estimate_name_' + count);
	 sHTML = sHTML.replace('estimate_id','estimate_id_' + count);
	 sHTML = sHTML.replace('estimate_num','estimate_num_' + count);
*/
if($_REQUEST['form'] == 'EditView')
{
	$index = $_REQUEST['index'];
	$the_javascript  = "<script type='text/javascript' language='JavaScript'>\n";

	
	$the_javascript .= "function set_return(id,name,number,quantity,volume) {\n";

	
	$the_javascript .= "	window.opener.document.EditView.estimateid_$index.value = id;\n";
	$the_javascript .= "	window.opener.document.EditView.estimatename_$index.value = name;\n";
	$the_javascript .= "	window.opener.document.EditView.estimatenum_$index.value = number;\n";
    $the_javascript .= "    window.opener.document.EditView.quantity_$index.value = quantity;\n";
    $the_javascript .= "    window.opener.document.EditView.pages_$index.value = volume;\n";
	$the_javascript .= "}\n";

	$the_javascript .= "function set_null() {\n";
	$the_javascript .= "	window.opener.document.EditView.estimate_id_$index.value = ''; \n";
	$the_javascript .= "	window.opener.document.EditView.estimate_name_$index.value = ''; \n";
	$the_javascript .= "	window.opener.document.EditView.estimate_num_$index.value = ''; \n";
	$the_javascript .= "	window.opener.document.EditView.quantity_$index.value = ''; \n";
    $the_javascript .= "    window.opener.document.EditView.volume_$index.value = ''; \n";
	
	$the_javascript .= "	window.close(); \n";
	$the_javascript .= "}\n";
	$the_javascript .= "</script>\n";
	
	$button  = "<form action='index.php' method='post' name='form' id='form'>\n";
	$button .= "<input title='".$app_strings['LBL_CLEAR_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CLEAR_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"set_null()\" type='submit' name='button' value='  ".$app_strings['LBL_CLEAR_BUTTON_LABEL']."  '>\n";

	$button .= "<input title='".$app_strings['LBL_CANCEL_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CANCEL_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"window.close()\" type='submit' name='button' value='  ".$app_strings['LBL_CANCEL_BUTTON_LABEL']."  '>\n";
	$button .= "</form>";
}

else //contact???
{
        $parent_name_name = 'contact_name';
        $parent_id_name = 'contact_id';
        if ( ! empty($_REQUEST['parent_name']))
        {
          $parent_name_name = $_REQUEST['parent_name'];
        }
        if ( ! empty($_REQUEST['parent_id']))
        {
          $parent_id_name = $_REQUEST['parent_id'];
        }

	$the_javascript  = "<script type='text/javascript' language='JavaScript'>\n";
	$the_javascript .= "function set_return(contact_id, contact_name) {\n";
	$the_javascript .= "	window.opener.document.".$_REQUEST['form'].".{$parent_name_name}.value = contact_name;\n";
	$the_javascript .= "	window.opener.document.".$_REQUEST['form'].".{$parent_id_name}.value = contact_id;\n";
	$the_javascript .= "}\n";
	$the_javascript .= "</script>\n";
	$button  = "<form action='index.php' method='post' name='form' id='form'>\n";
	$button .= "<input title='".$app_strings['LBL_CLEAR_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CLEAR_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"window.opener.document.".$_REQUEST['form'].".contact_name.value = '';window.opener.document.".$_REQUEST['form'].".contact_id.value = ''; window.close()\" type='submit' name='button' value='  ".$app_strings['LBL_CLEAR_BUTTON_LABEL']."  '>\n";
	$button .= "<input title='".$app_strings['LBL_CANCEL_BUTTON_TITLE']."' accessKey='".$app_strings['LBL_CANCEL_BUTTON_KEY']."' class='button' LANGUAGE=javascript onclick=\"window.close()\" type='submit' name='button' value='  ".$app_strings['LBL_CANCEL_BUTTON_LABEL']."  '>\n";
	$button .= "</form>\n";
}	

$form->assign("SET_RETURN_JS", $the_javascript);

require_once('modules/Estimates/EstimateFormBase.php');
$formBase = new EstimateFormBase();
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
<input class='button' type='button' name='showAdd' value='{$mod_strings['LBL_ADD_ESTIMATE']}' onClick='toggleDisplay("addform");'>
EOQ;
$form->assign("CREATEESTIMATE", $createContact);

$form->assign("ADDFORMHEADER", get_form_header($mod_strings['LBL_ADD_ESTIMATE'], $formSave, false));
$form->assign("ADDFORM", $formbody);

$form->assign("THEME", $theme);
$form->assign("IMAGE_PATH", $image_path);
$form->assign("MODULE_NAME", $currentModule);
if (isset($_REQUEST['form_submit'])) $form->assign("FORM_SUBMIT", $_REQUEST['form_submit']);
$form->assign("FORM", $_REQUEST['form']);

insert_popup_header($theme);
// Quick search.
echo get_form_header($mod_strings['LBL_SEARCH_FORM_TITLE'], "", false);

if (isset($_REQUEST['number']))
{
	$last_search['NUMBER'] = $_REQUEST['number']; 	
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
$ListView->setQuery($where, "", "number, name", "ESTIMATE");
$ListView->setModStrings($mod_strings);
$ListView->process_for_popups = true;
$ListView->processListView($seed_object, "main", "ESTIMATE");

insert_popup_footer();
}
else {
	require_once('include/Popups/Popup_picker.php');
	$popup = new Popup_Picker();
	echo $popup->process_page();
}
?>