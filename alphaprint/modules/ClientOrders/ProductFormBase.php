<?PHP
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


require_once('include/JSON.php');

class ClientorderFormBase {

//Goodwill
function checkForDuplicates($prefix){
	global $local_log;
    require_once('include/formbase.php');
	require_once('modules/ClientOrders/Clientorder.php');
	$focus = new Clientorder();
	$query = '';
	$baseQuery = 'select id, number from clientorders where deleted!=1 and ';
	if(!empty($_POST[$prefix.'number'])){
		$query = $baseQuery ." number = '". $_POST[$prefix.'number'] . "'";
	}
	if(!empty($query)){
		$rows = array();
		global $db;
		$result = $db->query($query);
		$i=-1;
		while (($row= $db->fetchByAssoc($result)) != null) {
			++$i;
			$rows[$i]=$row;
		}		
		if ($i==-1) return null;
		else return $rows;
	}
	return null;
}
//End Goodwill

function getFormBody($prefix, $mod='', $formname=''){
	//Goodwill
	if(!ACLController::checkAccess('ClientOrders', 'edit', true)){
		return '';
	}
	//End Goodwill
	global $mod_strings;
	$temp_strings = $mod_strings;
	if(!empty($mod)){
		global $current_language;
		$mod_strings = return_module_language($current_language, $mod);
	}
	    global $mod_strings;
			global $app_strings;			
			global $current_user;
			//Goodwill
			global $app_list_strings;
			$unit_options = get_select_options_with_id($app_list_strings['unit_of_measure'],"Each");
			//End Goodwill
			$lbl_required_symbol = $app_strings['LBL_REQUIRED_SYMBOL'];
			$lbl_number = $mod_strings['LBL_NUMBER'];
			$lbl_name = $mod_strings['LBL_NAME'];
		    $user_id = $current_user->id;

$form = <<<EOQ
			<input type="hidden" name="${prefix}record" value="">
			<input type="hidden" name="${prefix}status" value="New">
	<p>		$lbl_number<span class="required">$lbl_required_symbol</span><br>
			<input name="${prefix}number" type="text" value=""><br>
			$lbl_name <span class="required">$lbl_required_symbol</span><br>
			
EOQ;
	require_once('include/javascript/javascript.php');
	require_once('modules/ClientOrders/ClientOrders.php');
	$javascript = new javascript();
	$javascript->setFormName($formname);
	$javascript->setSugarBean(new ClientOrders());
	$javascript->addField('number','true',$prefix);
	$javascript->addField('name','true',$prefix);
	$javascript->addField('unit','false',$prefix);
	$javascript->addField('limit_price','false',$prefix);
	$javascript->addRequiredFields($prefix);
	$form .=$javascript->getScript();
	$mod_strings = $temp_strings;
	return $form;

}

function getForm($prefix, $mod='ClientOrders'){
	
	if(!ACLController::checkAccess('ClientOrders', 'edit', true, ''))return '';
		
	global $app_list_strings;
	global $app_strings;
	if(!empty($mod)){
		global $current_language;
		$mod_strings = return_module_language($current_language, $mod);
	} else {
		global $mod_strings;
	}	
	$lbl_save_button_title = $app_strings['LBL_SAVE_BUTTON_TITLE'];
	$lbl_save_button_key = $app_strings['LBL_SAVE_BUTTON_KEY'];
	$lbl_save_button_label = $app_strings['LBL_SAVE_BUTTON_LABEL'];
	$the_form = get_left_form_header($mod_strings['LBL_NEW_FORM_TITLE']);
$the_form .= <<<EOQ
			<form name="${prefix}ClientorderSave" onSubmit="return check_form('${prefix}ClientorderSave')" method="POST" action="index.php">
				<input type="hidden" name="${prefix}module" value="ClientOrders">
				<input type="hidden" name="${prefix}action" value="Save">
EOQ;
	$the_form .= $this->getFormBody($prefix, $mod, "${prefix}ClientorderSave");
$the_form .= <<<EOQ
			<p><input title="$lbl_save_button_title" accessKey="$lbl_save_button_key" class="button" type="submit" name="${prefix}button" value="  $lbl_save_button_label  " ></p>
			</form>

EOQ;
	$the_form .= get_left_form_footer();
	$the_form .= get_validate_record_js();

	return $the_form;
}

function handleSave($prefix,$redirect=true, $useRequired=false){
	require_once('modules/ClientOrders/Clientorder.php'); 
	require_once('log4php/LoggerManager.php');
	require_once('include/formbase.php');
	require_once('include/TimeDate.php');
	require_once('include/upload_file.php');
	require_once('config.php');
	global $sugar_config;
    $timedate = new TimeDate();

	$focus = new Clientorder();
	if($useRequired &&  !checkRequired($prefix, array_keys($focus->required_fields))){
		return null;
	}
	$focus = populateFromPost($prefix, $focus);
	if( !ACLController::checkAccess($focus->module_dir, 'edit', $focus->isOwner($current_user->id))){
		ACLController::displayNoAccess(true);
	}
	$upload_file = new UploadFile('uploadfile');
	if (isset($_FILES['uploadfile']) && $upload_file->confirm_upload())
	{
		$focus->stored_file_name = $upload_file->get_stored_file_name();
		$focus->imagename = $upload_file->get_stored_file_name();
		$focus->imagepath = $sugar_config['upload_dir'].$return_id.$upload_file->get_stored_file_name();
		$do_final_move = 1;
		
	}

	if(isset($_REQUEST['is_active']) && $_REQUEST['is_active'] == "1" )
	{
		$focus->is_active= 1;
	}
	else
	{
		$focus->is_active = 0;	
	}
	if(!$focus->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
	}
	//Goodwill
	if (empty($_POST['record']) && empty($_POST['dup_checked'])) {
		$duplicateClientOrders = $this->checkForDuplicates($prefix);
		if(isset($duplicateClientOrders)){
			//$GLOBALS['log']->info("Duplicate Clientorder:".$duplicateClientOrders['id']);
			$this->handleRedirect($return_id, "ClientOrders");
			return null;
		}
	}
	//End Goodwill
	
	$return_id = $focus->save();
	if($do_final_move) {
		$upload_file->final_move($return_id);
		$focus->stored_file_name = $sugar_config['upload_dir'].$return_id.$upload_file->get_stored_file_name();
		$focus->imagename = $upload_file->get_stored_file_name();
		$focus->imagepath = $sugar_config['upload_dir'].$return_id.$upload_file->get_stored_file_name();
		$focus->save();
		//echo "dir:".$sugar_config['upload_dir']."<br/>";
		//echo $focus->imagepath."<br/>";
	}
	//echo "Saved record with id of ".$return_id;
	$GLOBALS['log']->debug("Saved record with id of ".$return_id);
	if($redirect){
		handleRedirect($return_id, "ClientOrders");
	}else{
		return $focus;
	}
}

function handleRedirect($return_id){
	if(isset($_POST['return_module']) && $_POST['return_module'] != "") $return_module = $_POST['return_module'];
	else $return_module = "ClientOrders";
	if(isset($_POST['return_action']) && $_POST['return_action'] != "") $return_action = $_POST['return_action'];
	else $return_action = "index";
	header("Location: index.php?action=$return_action&module=$return_module&record=$return_id");
}

}
?>