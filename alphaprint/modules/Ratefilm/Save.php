<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for Ratefilm
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



require_once('modules/Ratefilm/Ratefilm.php');

require_once('include/formbase.php');


$sugarbean = new Ratefilm();
$sugarbean = populateFromPost('', $sugarbean);

foreach($sugarbean->column_fields as $field)
{
	if(!isset($_REQUEST['default'])){
		$sugarbean->default = 'off';
	}		
}
	
$query = ' SELECT '.$sugarbean->table_name.'.default FROM '.$sugarbean->table_name.' WHERE '.$sugarbean->table_name.'.default="on" AND size_x="'.$_REQUEST['size_x'].'" AND size_y="'.$_REQUEST['size_y'].'"';
$result = $sugarbean->db->query($query,true,"Error ");
$n = $sugarbean->db->getRowCount($result);
 

if(($n == 0)){
	$sugarbean->default = 'on';	
}


if(isset($_REQUEST['default']) && ($_REQUEST['default'] == 'on') || ($sugarbean->default == 'on')){
	$query = ' UPDATE '.$sugarbean->table_name.' SET '.$sugarbean->table_name.'.default="off" WHERE size_x="'.$_REQUEST['size_x'].'" AND size_y="'.$_REQUEST['size_y'].'"';
	$result = $sugarbean->db->query($query,true,"Error ");
}

if(isset($_REQUEST['email_id'])) $sugarbean->email_id = $_REQUEST['email_id'];

if(!$sugarbean->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}
$sugarbean->save($GLOBALS['check_notify']);
$return_id = $sugarbean->id;
handleRedirect($return_id,'Ratefilm');

?>
