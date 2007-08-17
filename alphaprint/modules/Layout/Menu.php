<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Side-bar menu for Layout
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

if(ACLController::checkAccess('Layout', 'edit', true))$module_menu[] = array("index.php?module=Layout&action=EditView&return_module=Layout&return_action=DetailView",
	$mod_strings['LNK_NEW_LAYOUT'], 'CreateLayout');
if(ACLController::checkAccess('Layout', 'list', true))$module_menu[] = array('index.php?module=Layout&action=index',
	$mod_strings['LNK_LAYOUT_LIST'], 'Layout');
if(ACLController::checkAccess('LayoutTask', 'edit', true))$module_menu[] = array("index.php?module=LayoutTask&action=EditView&return_module=LayoutTask&return_action=DetailView",
	$mod_strings['LNK_NEW_LAYOUT_TASK'], 'CreateLayoutTask');
if(ACLController::checkAccess('LayoutTask', 'list', true))$module_menu[] = array('index.php?module=LayoutTask&action=index',
	$mod_strings['LNK_LAYOUT_TASK_LIST'], 'LayoutTask');
if(ACLController::checkAccess('Layout','list', true)) $module_menu[] = Array('#', '<span style="display: none">wp_shortcut_fill_0</span>', '');

?>
