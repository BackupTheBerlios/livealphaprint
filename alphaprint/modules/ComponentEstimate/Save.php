<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for ComponentEstimate
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



require_once('modules/ComponentEstimate/ComponentEstimate.php');
require_once('modules/ProductComponents/ProductComponents.php');

require_once('include/formbase.php');
global $app_list_strings;

$sugarbean = new ComponentEstimate();
$sugarbean = populateFromPost('', $sugarbean);
$sugarbean->status = "uptodate";

if(isset($_REQUEST['email_id'])) $sugarbean->email_id = $_REQUEST['email_id'];

if(!$sugarbean->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}
$sugarbean->save($GLOBALS['check_notify']);

$component = new ProductComponents;
$component->retrieve($sugarbean->component_id);
//// Status Update

if (isset($_REQUEST['stat_action']) && !empty($_REQUEST['stat_action']) && !is_null($_REQUEST['stat_action'])){
	$component->status_update('', $component->id, $_REQUEST['stat_action'], '');
}
else{
	$component->status_update('', $component->id, '', '');
}
/////////////////

$return_id = $sugarbean->id;
handleRedirect($return_id,'ComponentEstimate');

?>
