<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * EditView for Email
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



$GLOBALS['log']->info("Email edit view");

require_once('modules/Emails/Email.php');
require_once('modules/EmailTemplates/EmailTemplate.php');
require_once('XTemplate/xtpl.php');

global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');

global $app_strings;
global $app_list_strings;
global $mod_strings;
global $current_user;
global $sugar_version, $sugar_config;
global $timedate;

///////////////////////////////////////////////////////////////////////////////
////	PREPROCESS BEAN DATA FOR DISPLAY
$focus = new Email();
$email_type = 'out';


$focus->type = $email_type;

//needed when creating a new email with default values passed in

// user's email, go through 3 levels of precedence:
$from = $current_user->getEmailInfo();
////	END PREPROCESSING
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
////	XTEMPLATE ASSIGNMENT
/*
if($email_type == 'archived') {
	echo get_module_title('Emails', $mod_strings['LBL_ARCHIVED_MODULE_NAME'].":", true);
	$xtpl=new XTemplate('modules/Emails/EditViewArchive.html');
} else {
	echo get_module_title('Emails', $mod_strings['LBL_COMPOSE_MODULE_NAME'].":", true);
	*/
	$xtpl=new XTemplate('modules/Emails/UserNotify.html');
//}
echo "\n</p>\n";

// CHECK USER'S EMAIL SETTINGS TO ENABLE/DISABLE 'SEND' BUTTON


// CHECK THAT SERVER HAS A PLACE TO PUT UPLOADED TEMP FILES SO THAT ATTACHMENTS WILL WORK
// cn: Bug 5995



///////////////////////////////////////////////////////////////////////////////
////	INBOUND EMAIL HANDLING
if(isset($_REQUEST['email_name'])) {
	$name = str_replace('_',' ',$_REQUEST['email_name']);	
}
if(isset($_REQUEST['inbound_email_id'])) {
	$quoted = '';
	$quotedHtml = '';
	$ieMail = new Email();
	$ieMail->retrieve($_REQUEST['inbound_email_id']);
	
	$desc		= nl2br(trim($ieMail->description));
	$forwardHeader	= $ieMail->getForwardHeader();

	$quotedHtml	= $forwardHeader.$focus->quoteHtmlEmail();
	
	$exDesc = explode('<br />', $desc);
	foreach($exDesc as $k => $line) {
		$quoted .= '> '.trim($line)."\r";
	}

	// prefill empties with the other's contents
	if(empty($quotedHtml) && !empty($quoted)) {
		$quotedHtml = $focus->quoteHtmlEmail($desc);
	}
	if(empty($quoted) && !empty($quotedHtml)) {
		$quoted = strip_tags(br2nl($quotedHtml));
	}

	if($_REQUEST['type'] != 'forward') {
		$ieMailName = 'RE: '.$ieMail->name;
	} else {
		$ieMailName = $ieMail->name;
	}

	$focus->id					= null; // nulling this to prevent overwriting a replied email(we're basically doing a "Duplicate" function)
	$focus->to_addrs			= $ieMail->from_addr;
	$focus->description 		= $quoted; // don't know what i was thinking: ''; // this will be filled on save/send
	$focus->description_html	= $quotedHtml; // cn: bug 7357 - htmlentities() breaks FCKEditor
	$focus->parent_type			= $ieMail->parent_type;
	$focus->parent_id			= $ieMail->parent_id;
	$focus->parent_name			= $ieMail->parent_name;
	$focus->name				= $ieMailName;
	$xtpl->assign('INBOUND_EMAIL_ID',$_REQUEST['inbound_email_id']);
	// un/READ flags
	if(!empty($ieMail->status)) {
		// "Read" flag for InboundEmail
		if($ieMail->status == 'unread') {
			// creating a new instance here to avoid data corruption below
			$e = new Email();
			$e->retrieve($ieMail->id);
			$e->status = 'read';
			$e->save();
			$email_type = $e->status;
		}
	}
	
	
	// setup for my/mailbox email switcher
	$mbox = $ieMail->getMailboxDefaultEmail();
	$user = $current_user->getPreferredEmail();
	$useGroup = '&nbsp;<input id="use_mbox" name="use_mbox" type="checkbox" CHECKED onClick="switchEmail()" > 
				<script type="text/javascript">
				function switchEmail() {
					var mboxName = "'.$mbox['name'].'";
					var mboxAddr = "'.$mbox['email'].'";
					var userName = "'.$user['name'].'";
					var userAddr = "'.$user['email'].'";
				
					if(document.getElementById("use_mbox").checked) {
						document.getElementById("from_addr_field").value = mboxName + " <" + mboxAddr + ">";
						document.getElementById("from_addr_name").value = mboxName;
						document.getElementById("from_addr_email").value = mboxAddr;
					} else {
						document.getElementById("from_addr_field").value = userName + " <" + userAddr + ">";
						document.getElementById("from_addr_name").value = userName;
						document.getElementById("from_addr_email").value = userAddr;
					}
				 
				}
				
				</script>';
	$useGroup .= $mod_strings['LBL_USE_MAILBOX_INFO'];
	
	$xtpl->assign('FROM_ADDR_GROUP', $useGroup);
}
////	END INBOUND EMAIL HANDLING
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
////	SUBJECT FIELD MANIPULATION
$name = '';
	if(empty($focus->name)) {
		$name = '';
	} else {
		$name = $focus->name;
	}

if($email_type == 'forward') {
	$name = 'FW: '.$name;	
}
////	END SUBJECT FIELD MANIPULATION
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
////	GENERAL TEMPLATE ASSIGNMENTS
$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);

if(!isset($focus->id)) $xtpl->assign('USER_ID', $current_user->id);
if(!isset($focus->id) && isset($_REQUEST['contact_id'])) $xtpl->assign('CONTACT_ID', $_REQUEST['contact_id']);

if(isset($_REQUEST['return_module']) && !empty($_REQUEST['return_module'])) {
	$xtpl->assign('RETURN_MODULE', $_REQUEST['return_module']);
} else {
	$xtpl->assign('RETURN_MODULE', 'Emails');
}
if(isset($_REQUEST['return_action']) && !empty($_REQUEST['return_action'])) {
	$xtpl->assign('RETURN_ACTION', $_REQUEST['return_action']);
} else {
	$xtpl->assign('RETURN_ACTION', 'DetailView');
}
if(isset($_REQUEST['return_id']) && !empty($_REQUEST['return_id'])) {
	$xtpl->assign('RETURN_ID', $_REQUEST['return_id']);
}
// handle Create $module then Cancel
if(empty($_REQUEST['return_id']) && !isset($_REQUEST['type'])) {
	$xtpl->assign('RETURN_ACTION', 'index');
}

$xtpl->assign('THEME', $theme);
$xtpl->assign('IMAGE_PATH', $image_path);$xtpl->assign('PRINT_URL', 'index.php?'.$GLOBALS['request_string']);


$xtpl->assign('ID', $focus->id);

if(isset($_REQUEST['parent_type']) && !empty($_REQUEST['parent_type']) && isset($_REQUEST['parent_id']) && !empty($_REQUEST['parent_id'])) {
	$xtpl->assign('OBJECT_ID', $_REQUEST['parent_id']);
	$xtpl->assign('OBJECT_TYPE', $_REQUEST['parent_type']);
}
$xtpl->assign('FROM_ADDR', $focus->from_addr);
//// prevent TO: prefill when type is 'forward'
if($email_type != 'forward') {
	$xtpl->assign('TO_ADDRS', $focus->get_calculant_email($_REQUEST['calculant_id']));
	$xtpl->assign('TO_ADDRS_IDS', $focus->to_addrs_ids);
	$xtpl->assign('TO_ADDRS_NAMES', $focus->to_addrs_names);
	$xtpl->assign('TO_ADDRS_EMAILS', $focus->to_addrs_emails);

}
$xtpl->assign('FROM_ADDR', $from['name'].' <'.$from['email'].'>');
$xtpl->assign('FROM_ADDR_NAME', $from['name']);
$xtpl->assign('FROM_ADDR_EMAIL', $from['email']);

$xtpl->assign('NAME', $focus->get_component_name());
$xtpl->assign('calculant_id', $_REQUEST['calculant_id']);
$xtpl->assign('DESCRIPTION_HTML', $focus->description_html);
$xtpl->assign('DESCRIPTION', $focus->description);
$xtpl->assign('TYPE',$email_type);

// Unimplemented until jscalendar language files are fixed
// $xtpl->assign('CALENDAR_LANG',((empty($cal_codes[$current_language])) ? $cal_codes[$default_language] : $cal_codes[$current_language]));
$xtpl->assign('CALENDAR_LANG', 'en');
$xtpl->assign('CALENDAR_DATEFORMAT', $timedate->get_cal_date_format());
$xtpl->assign('DATE_START', $focus->date_start);
$xtpl->assign('TIME_FORMAT', '('. $timedate->get_user_time_format().')');
$xtpl->assign('TIME_START', substr($focus->time_start,0,5));
$xtpl->assign('TIME_MERIDIEM', $timedate->AMPMMenu('',$focus->time_start));

$parent_types = $app_list_strings['record_type_display'];
$disabled_parent_types = ACLController::disabledModuleList($parent_types,false, 'list');

foreach($disabled_parent_types as $disabled_parent_type){
	if($disabled_parent_type != $focus->parent_type){
		unset($parent_types[$disabled_parent_type]);
	}
}

$xtpl->assign('TYPE_OPTIONS', get_select_options_with_id($parent_types, $focus->parent_type));
$xtpl->assign('USER_DATEFORMAT', '('. $timedate->get_user_date_format().')');
$xtpl->assign('PARENT_NAME', $focus->parent_name);
$xtpl->assign('PARENT_ID', $focus->parent_id);
if(empty($focus->parent_type)) {
	$xtpl->assign('PARENT_RECORD_TYPE', '');
} else {
	$xtpl->assign('PARENT_RECORD_TYPE', $focus->parent_type);
} 

if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])){
	$record = '';
	if(!empty($_REQUEST['record'])){
		$record = 	$_REQUEST['record'];
	}
	$xtpl->assign('ADMIN_EDIT',"<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$record. "'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");
}

////	END GENERAL TEMPLATE ASSIGNMENTS
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////

$change_parent_button = '<input type="button" name="button" tabindex="2" class="button" '
	. 'title="' . $app_strings['LBL_SELECT_BUTTON_TITLE'] . '" '
	. 'accesskey="' . $app_strings['LBL_SELECT_BUTTON_KEY'] . '" '
	. 'value="'	. $app_strings['LBL_SELECT_BUTTON_LABEL'] . '" '
	. "onclick='open_popup(document.EditView.parent_type.value,600,400,\"&tree=ProductsProd\",true,false,$encoded_popup_request_data);' />\n";
$xtpl->assign("CHANGE_PARENT_BUTTON", $change_parent_button);

$button_attr = '';
if(!ACLController::checkAccess('Contacts', 'list', true)){
	$button_attr = 'disabled="disabled"';
}

$change_to_addrs_button = '<input type="button" name="to_button" tabindex="3" class="button" '
	. 'title="' . $app_strings['LBL_SELECT_BUTTON_TITLE'] . '" '
	. 'accesskey="' . $app_strings['LBL_SELECT_BUTTON_KEY'] . '" '
	. 'value="'	. $mod_strings['LBL_EMAIL_SELECTOR'] . '" '
	. "onclick='button_change_onclick(this);' $button_attr />\n";
$xtpl->assign("CHANGE_TO_ADDRS_BUTTON", $change_to_addrs_button);

$change_cc_addrs_button = '<input type="button" name="cc_button" tabindex="3" class="button" '
	. 'title="' . $app_strings['LBL_SELECT_BUTTON_TITLE'] . '" '
	. 'accesskey="' . $app_strings['LBL_SELECT_BUTTON_KEY'] . '" '
	. 'value="'	. $mod_strings['LBL_EMAIL_SELECTOR'] . '" '
	. "onclick='button_change_onclick(this);' $button_attr />\n";
$xtpl->assign("CHANGE_CC_ADDRS_BUTTON", $change_cc_addrs_button);

$change_bcc_addrs_button = '<input type="button" name="bcc_button" tabindex="3" class="button" '
	. 'title="' . $app_strings['LBL_SELECT_BUTTON_TITLE'] . '" '
	. 'accesskey="' . $app_strings['LBL_SELECT_BUTTON_KEY'] . '" '
	. 'value="'	. $mod_strings['LBL_EMAIL_SELECTOR'] . '" '
	. "onclick='button_change_onclick(this);' $button_attr />\n";
$xtpl->assign("CHANGE_BCC_ADDRS_BUTTON", $change_bcc_addrs_button);


///////////////////////////////////////
////	USER ASSIGNMENT
global $current_user;
if(is_admin($current_user) && $_REQUEST['module'] != 'DynamicLayout' && !empty($_SESSION['editinplace'])) {
	$record = '';
	if(!empty($_REQUEST['record'])) {
		$record = $_REQUEST['record'];
	}
	$xtpl->assign('ADMIN_EDIT',"<a href='index.php?action=index&module=DynamicLayout&from_action=".$_REQUEST['action'] ."&from_module=".$_REQUEST['module'] ."&record=".$record. "'>".get_image($image_path."EditLayout","border='0' alt='Edit Layout' align='bottom'")."</a>");
}

if(empty($focus->assigned_user_id) && empty($focus->id))
	$focus->assigned_user_id = $current_user->id;
if(empty($focus->assigned_name) && empty($focus->id))
	$focus->assigned_user_name = $current_user->user_name;
$xtpl->assign('ASSIGNED_USER_OPTIONS', get_select_options_with_id(get_user_array(TRUE, 'Active', $focus->assigned_user_id), $focus->assigned_user_id));
$xtpl->assign('ASSIGNED_USER_NAME', $focus->assigned_user_name);
$xtpl->assign('ASSIGNED_USER_ID', $focus->assigned_user_id);	
$xtpl->assign('DURATION_HOURS', $focus->duration_hours);
$xtpl->assign('TYPE_OPTIONS', get_select_options_with_id($parent_types, $focus->parent_type));

if(isset($focus->duration_minutes)) {
	$xtpl->assign('DURATION_MINUTES_OPTIONS', get_select_options_with_id($focus->minutes_values,$focus->duration_minutes));
}
////	END USER ASSIGNMENT
///////////////////////////////////////



//Add Custom Fields
require_once('modules/DynamicFields/templates/Files/EditView.php');



///////////////////////////////////////////////////////////////////////////////
////	DOCUMENTS
$popup_request_data = array(
	'call_back_function' => 'document_set_return',
	'form_name' => 'EditView',
	'field_to_name_array' => array(
		'id' => 'related_doc_id',
		'document_name' => 'related_document_name',
		),
	);
$json = getJSONobj();
$xtpl->assign('encoded_document_popup_request_data', $json->encode($popup_request_data));
////	END DOCUMENTS
///////////////////////////////////////////////////////////////////////////////

$parse_open = true;
















if($parse_open) {
	$xtpl->parse('main.open_source_1');
}
///////////////////////////////////////////////////////////////////////////////
////	EMAIL TEMPLATES
if(ACLController::checkAccess('EmailTemplates', 'list', true) && ACLController::checkAccess('EmailTemplates', 'view', true)) {
	$et = new EmailTemplate();
	$etResult = $focus->db->query($et->create_list_query('','',''));
	$email_templates_arr[] = '';
	while($etA = $focus->db->fetchByAssoc($etResult)) {
		$email_templates_arr[$etA['id']] = $etA['name'];
	}
} else {
	$email_templates_arr = array('' => $app_strings['LBL_NONE']);
}

$xtpl->assign('EMAIL_TEMPLATE_OPTIONS', get_select_options_with_id($email_templates_arr, ''));
////	END EMAIL TEMPLATES
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////
////	TEXT EDITOR
// cascade from User to Sys Default
$editor = '';
if(!isset($sugar_config['email_default_editor'])) { $current_user->setDefaultsInConfig(); }
$userEditor = $current_user->getPreference('email_editor_option');
$systemEditor = $sugar_config['email_default_editor'];
if($userEditor != '') {
	$editor = $userEditor;	
} else {
	$editor = $systemEditor;
}
if($editor != 'plain') {
	// this box is checked by Javascript on-load.
	$xtpl->assign('EMAIL_EDITOR_OPTION', 'CHECKED');
}
$description_html = $focus->description_html;
$description = $focus->description;

/////////////////////////////////////////////////
// signatures
if($sig = $current_user->getDefaultSignature()) {
	// Bug 7754: add signature if we not detected (coming from a draft or something)
	$htmlSig = (strpos($description_html, $sig['signature_html']) !== false) ? true : false;
	$textSig = (strpos($description, $sig['signature']) !== false) ? true : false;
	
	if($htmlSig == false && $textSig == false) {
		if($current_user->getPreference('signature_prepend')) {
			$description_html = '<br />'.$sig['signature_html'].'<br /><br />'.$description_html;
			$description = "\n".$sig['signature']."\n\n".$description;	
		} else {
			$description_html .= '<br /><br />'.$sig['signature_html'];
			$description = $description."\n\n".$sig['signature'];
		}
	}
}
$xtpl->assign('DESCRIPTION', $description);
// sigs
/////////////////////////////////////////////////

if(file_exists('include/FCKeditor/fckeditor.php')) {
	include('include/FCKeditor_Sugar/FCKeditor_Sugar.php') ;
	ob_start();
		$instancename = 'description_html';
		$oFCKeditor = new FCKeditor_Sugar($instancename) ;
		if(!empty($description_html)) {
	//		$oFCKeditor->Value = $description_html;
		}
		$oFCKeditor->Create() ;
		$htmlarea_src = ob_get_contents();
		$xtpl->assign('HTML_EDITOR', $htmlarea_src);
		$xtpl->parse('main.htmlarea');
	ob_end_clean();
} else {
  $xtpl->parse('main.textarea');
}
////	END TEXT EDITOR
///////////////////////////////////////
///////////////////////////////////////
////	SPECIAL INBOUND LANDING SCREEN ASSIGNS
if(!empty($_REQUEST['inbound_email_id'])) {
	if(!empty($_REQUEST['start'])) {
		$parts = $focus->getStartPage(base64_decode($_REQUEST['start']));
		$xtpl->assign('RETURN_ACTION', $parts['action']);
		$xtpl->assign('RETURN_MODULE', $parts['module']);
		$xtpl->assign('GROUP', $parts['group']);
	}
		$xtpl->assign('ASSIGNED_USER_ID', $current_user->id);
		$xtpl->assign('MYINBOX', 'this.form.type.value=\'inbound\';');
}
////	END SPECIAL INBOUND LANDING SCREEN ASSIGNS
///////////////////////////////////////

echo '<script>var disabledModules='. $json->encode($disabled_parent_types) . ';</script>';
$jsVars = 'var lbl_send_anyways = "'.$mod_strings['LBL_SEND_ANYWAYS'].'";';
$xtpl->assign('JS_VARS', $jsVars);
$xtpl->parse("main");
$xtpl->out("main");
////	END XTEMPLATE ASSIGNMENT
///////////////////////////////////////////////////////////////////////////////

require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$skip_fields = array();
if($email_type == 'out') {
	$skip_fields['name'] = 1;
	$skip_fields['date_start'] = 1;
}
$javascript->addAllFields('',$skip_fields);
$javascript->addToValidateBinaryDependency('parent_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $mod_strings['LBL_MEMBER_OF'], 'false', '', 'parent_id');




$javascript->addToValidateBinaryDependency('user_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $app_strings['LBL_ASSIGNED_TO'], 'false', '', 'assigned_user_id');
if($email_type == 'archived') {
	$javascript->addFieldGeneric('date_start', 'alpha', $mod_strings['ERR_DATE_START'], true);
	$javascript->addFieldGeneric('time_start', 'alpha', $mod_strings['ERR_TIME_START'], true);
}
echo $javascript->getScript();
?>
