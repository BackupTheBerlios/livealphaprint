<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for Press
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



require_once('modules/Press/Press.php');
require_once('modules/Pressline/Pressline.php');
require_once('include/formbase.php');


$sugarbean = new Press();
$sugarbean = populateFromPost('', $sugarbean);

if(isset($_REQUEST['email_id'])) $sugarbean->email_id = $_REQUEST['email_id'];

if(!$sugarbean->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}
if (!isset($sugarbean->name) || is_null($sugarbean->name)){
	$sugarbean->name = $sugarbean->generateName($sugarbean->id);	
}

$sugarbean->save($GLOBALS['check_notify']);
$return_id = $sugarbean->id;

$pressLine1 = new Pressline();
	$pressLine1->mark_deletedByPressid($return_id);
	$count = count($_POST);
	$keys = array_keys($_POST);
	for($i = 0;$i< $count; $i++) {
		
		if(substr_count($keys[$i],"layout_id_") > 0) {
            $index = substr($keys[$i],-1,1);
            
            $layout_id = $_POST["layout_id_".$index];
            $layout_name = $_POST["layout_name_".$index];
            $part = $_POST["part_".$index];
                
            
            $pressLine = new Pressline();
            $pressLine->layout_id = $layout_id;
            $pressLine->layout_name = $layout_name;
            $pressLine->part = $part;
			$pressLine->press_id = $sugarbean->id;
            $pressLine->save();
		}
	}
	
handleRedirect($return_id,'Press');

?>
