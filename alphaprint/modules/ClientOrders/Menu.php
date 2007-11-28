<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Side-bar menu for ClientOrders
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

if(ACLController::checkAccess('ClientOrders', 'edit', true))$module_menu[] = array("index.php?module=ClientOrders&action=EstimateSelect&return_module=ClientOrders&return_action=DetailView",
	$mod_strings['LNK_NEW_CLIENTORDERS'], 'CreateClientOrders');
if(ACLController::checkAccess('ClientOrders', 'list', true))$module_menu[] = array('index.php?module=ClientOrders&action=index',
	$mod_strings['LNK_CLIENTORDERS_LIST'], 'ClientOrders');
/*if(ACLController::checkAccess('ClientorderComponents', 'list', true))$module_menu[] = array('index.php?module=ClientorderComponents&action=index',
	$mod_strings['LNK_CLIENTORDER_COMPONENTS_LIST'], 'ClientorderComponents');
*/if(ACLController::checkAccess('ClientOrders','list', true)) $module_menu[] = Array('#', '<span style="display: none">wp_shortcut_fill_0</span>', '');

?>