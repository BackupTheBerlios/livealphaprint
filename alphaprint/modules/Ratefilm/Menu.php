<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Side-bar menu for Ratefilm
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



global $current_user;
global $mod_strings;
$module_menu = array();

// Each index of module_menu must be an array of:
// the link url, display text for the link, and the icon name.

if(ACLController::checkAccess('Materials', 'edit', true))$module_menu[] = array("index.php?module=Materials&action=EditView&return_module=Materials&return_action=DetailView",
	$mod_strings['LNK_NEW_MATERIAL'], 'CreateMaterial');
if(ACLController::checkAccess('Paper', 'edit', true))$module_menu[] = array('index.php?module=Paper&action=EditView&return_module=Paper&return_action=DetailView', $mod_strings['LBL_ADD_PAPER'], 'CreatePapers');
if(ACLController::checkAccess('Rateplate', 'edit', true))$module_menu[] = array("index.php?module=Rateplate&action=EditView&return_module=Rateplate&return_action=DetailView",
	$mod_strings['LNK_NEW_RATEPLATE'], 'CreateRateplate');
if(ACLController::checkAccess('Ratefilm', 'edit', true))$module_menu[] = array("index.php?module=Ratefilm&action=EditView&return_module=Ratefilm&return_action=DetailView",
	$mod_strings['LNK_NEW_RATEFILM'], 'CreateRatefilm');
if(ACLController::checkAccess('Ink', 'edit', true))$module_menu[] = array("index.php?module=Ink&action=EditView&return_module=Ink&return_action=DetailView",
	$mod_strings['LNK_NEW_INK'], 'CreateInk');



if(ACLController::checkAccess('Materials', 'list', true))$module_menu[] = array('index.php?module=Materials&action=index',
	$mod_strings['LNK_MATERIAL_LIST'], 'Materials');
if(ACLController::checkAccess('Materials','list', true)) $module_menu[] = Array('#', '<span style="display: none">wp_shortcut_fill_0</span>', '');
if(ACLController::checkAccess('Paper', 'list', true))$module_menu[] = array('index.php?module=Paper&action=index&return_module=Paper&return_action=DetailView', $mod_strings['LBL_LIST_PAPER'],  'Paper');
if(ACLController::checkAccess('Rateplate', 'list', true))$module_menu[] = array('index.php?module=Rateplate&action=index',
	$mod_strings['LNK_RATEPLATE_LIST'], 'Rateplate');
if(ACLController::checkAccess('Ratefilm', 'list', true))$module_menu[] = array('index.php?module=Ratefilm&action=index',
	$mod_strings['LNK_RATEFILM_LIST'], 'Ratefilm');
if(ACLController::checkAccess('Ink', 'list', true))$module_menu[] = array('index.php?module=Ink&action=index',
	$mod_strings['LNK_INK_LIST'], 'Ink');
if(ACLController::checkAccess('Paperformat', 'list', true))$module_menu[] = array('index.php?module=Paperformat&action=Formats',
	$mod_strings['LNK_PAPERFORMAT_LIST'], 'Paperformat');

?>
