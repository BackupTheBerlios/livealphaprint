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
require_once('include/utils.php');
class PaperFormBase {

//Goodwill
function checkForDuplicates($prefix){
	global $local_log;
    require_once('include/formbase.php');
	require_once('modules/Paper/Paper.php');
	$focus = new Paper();
	$query = '';
	$baseQuery = 'select id, pname from paper where deleted!=1 and ';
	if(!empty($_POST[$prefix.'pname'])){
		$query = $baseQuery ." pname = '". $_POST[$prefix.'pname'] . "'";
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
	if(!ACLController::checkAccess('Paper', 'edit', true)){
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
			$price_unit_options = get_select_options_with_id($app_list_strings['paper_price_unit_dom'],"Dollars");
			//End Goodwill
			$lbl_required_symbol = $app_strings['LBL_REQUIRED_SYMBOL'];
			$lbl_pname = $mod_strings['LBL_PNAME'];
			$lbl_fname = $mod_strings['LBL_FNAME'];
			$lbl_price = $mod_strings['LBL_PRICE'];
			$lbl_price_unit ='';
			$user_id = $current_user->id;

$form = <<<EOQ
			<input type="hidden" name="${prefix}record" value="">
	<p>		$lbl_pname<span class="required">$lbl_required_symbol</span><br>
			<input name="${prefix}pname" type="text" value=""><br>
			$lbl_fname <span class="required">$lbl_required_symbol</span><br>
			<input name='${prefix}fname' type="text" value=""><br>
			$lbl_price<br>
			<input name='${prefix}price' type="text" value=""></p>
			$lbl_price_unit<br>
    		<select name='{$prefix}price_unit'>$price_unit_options</select><br>
EOQ;
	require_once('include/javascript/javascript.php');
	require_once('modules/Paper/Paper.php');
	$javascript = new javascript();
	$javascript->setFormName($formname);
	$javascript->setSugarBean(new Paper());
	$javascript->addField('pname','true',$prefix);
	$javascript->addField('fname','true',$prefix);
	$javascript->addField('price','false',$prefix);
	$javascript->addRequiredFields($prefix);
	$form .=$javascript->getScript();
	$mod_strings = $temp_strings;
	return $form;

}

function getForm($prefix, $mod='Paper'){
	
	if(!ACLController::checkAccess('Paper', 'edit', true, ''))return '';
		
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
			<form name="${prefix}PaperSave" onSubmit="return check_form('${prefix}PaperSave')" method="POST" action="index.php">
				<input type="hidden" name="${prefix}module" value="Paper">
				<input type="hidden" name="${prefix}action" value="Save">
EOQ;
	$the_form .= $this->getFormBody($prefix, $mod, "${prefix}PaperSave");
$the_form .= <<<EOQ
			<p><input title="$lbl_save_button_title" accessKey="$lbl_save_button_key" class="button" type="submit" name="${prefix}button" value="  $lbl_save_button_label  " ></p>
			</form>

EOQ;
	$the_form .= get_left_form_footer();
	$the_form .= get_validate_record_js();

	return $the_form;
}

function handleSave($prefix,$redirect=true, $useRequired=false){
	require_once('modules/Paper/Paper.php'); 
	require_once('log4php/LoggerManager.php');
	require_once('include/formbase.php');
	require_once('include/TimeDate.php');
	require_once('include/upload_file.php');
	require_once('config.php');
	global $sugar_config;
    $timedate = new TimeDate();

	$focus = new Paper();
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
		$duplicatePaper = $this->checkForDuplicates($prefix);
		if(isset($duplicatePaper)){
			//$GLOBALS['log']->info("Duplicate Product:".$duplicateProducts['id']);
			$this->handleRedirect($return_id, "Paper");
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
	
		
	$paper_id = $return_id;
	$pref_supplier_id = $focus->pref_supplier_id;
	
	$result = $focus->db->query("SELECT count(*) AS the_count FROM papers_relation WHERE material_id = '{$paper_id}' AND relation_id = '{$pref_supplier_id}'");
	$row = $focus->db->fetchByAssoc( $result, -1, true );
	$row_count = $row['the_count'];
	
	if( $row_count == 0){
	      $id = create_guid();
	    $result = $focus->db->query("INSERT INTO papers_relation (id, paper_id, relation_id, relation_type, deleted) VALUES ('$id','$paper_id','$pref_supplier_id','Suppliers', '0')");
	}
	//echo "Saved record with id of ".$return_id;
	$GLOBALS['log']->debug("Saved record with id of ".$return_id);
	if($redirect){
		handleRedirect($return_id, "Paper");
	}else{
		return $focus;
	}
}

function handleRedirect($return_id){
	if(isset($_POST['return_module']) && $_POST['return_module'] != "") $return_module = $_POST['return_module'];
	else $return_module = "Paper";
	if(isset($_POST['return_action']) && $_POST['return_action'] != "") $return_action = $_POST['return_action'];
	else $return_action = "index";
	header("Location: index.php?action=$return_action&module=$return_module&record=$return_id");
}

}
?>