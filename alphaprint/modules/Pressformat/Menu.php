<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Side-bar menu for Pressformat
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
/*
if(ACLController::checkAccess('Pressformat', 'edit', true))$module_menu[] = array("index.php?module=Pressformat&action=EditView&return_module=Pressformat&return_action=DetailView",
	$mod_strings['LNK_NEW_PRESSFORMAT'], 'CreatePressformat');
if(ACLController::checkAccess('Pressformat', 'list', true))$module_menu[] = array('index.php?module=Pressformat&action=index',
	$mod_strings['LNK_PRESSFORMAT_LIST'], 'Pressformat');
if(ACLController::checkAccess('Pressformat', 'list', true))$module_menu[] = array('index.php?module=Pressformat&action=Formats',
	$mod_strings['LNK_PRESSFORMAT_LIST'], 'Pressformat');

if(ACLController::checkAccess('Pressformat','list', true)) $module_menu[] = Array('#', '<span style="display: none">wp_shortcut_fill_0</span>', '');
*/

if(ACLController::checkAccess('Pressmachine', 'edit', true))$module_menu[] = array("index.php?module=Pressmachine&action=EditView&return_module=Pressmachine&return_action=DetailView",
	$mod_strings['LNK_NEW_PRESSMACHINE'], 'CreatePressmachine');
if(ACLController::checkAccess('Pressmachine', 'list', true))$module_menu[] = array('index.php?module=Pressmachine&action=index',
	$mod_strings['LNK_PRESSMACHINE_LIST'], 'Pressmachine');
if(ACLController::checkAccess('Pressformat', 'list', true))$module_menu[] = array('index.php?module=Pressformat&action=Formats',
	$mod_strings['LNK_PRESSFORMAT_LIST'], 'Pressformat');

if(ACLController::checkAccess('Pressmachine','list', true)) $module_menu[] = Array('#', '<span style="display: none">wp_shortcut_fill_0</span>', '');

?>
