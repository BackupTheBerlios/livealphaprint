<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
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
 *********************************************************************************/
 
require_once('include/utils.php');

function additionalDetailsProductComponents($fields) {
	static $mod_strings;
	if(empty($mod_strings)) {
		global $current_language;
		$mod_strings = return_module_language($current_language, 'ProductComponents');
	}
		
	$overlib_string = '';
	if(!empty($fields['PRIORITY'])) $overlib_string .= '<b>' . $mod_strings['LBL_PRIORITY'] . '</b> ' . $fields['PRIORITY'] . '<br>';
	if(!empty($fields['PERCENT_COMPLETE'])) $overlib_string .= '<b>' . $mod_strings['LBL_PERCENT_COMPLETE'] . '</b> ' . $fields['PERCENT_COMPLETE'] . '%<br>';	
	if(!empty($fields['ESTIMATED_EFFORT'])) $overlib_string .= '<b>' . $mod_strings['LBL_ESTIMATED_EFFORT'] . '</b> ' . $fields['ESTIMATED_EFFORT'] . '<br>';	
	if(!empty($fields['ACTUAL_EFFORT'])) $overlib_string .= '<b>' . $mod_strings['LBL_ACTUAL_EFFORT'] . '</b> ' . $fields['ACTUAL_EFFORT'] . '<br>';
	if(!empty($fields['TASK_NUMBER'])) $overlib_string .= '<b>' . $mod_strings['LBL_TASK_NUMBER'] . '</b> ' . $fields['TASK_NUMBER'] . '<br>';
	if(!empty($fields['DATE_START'])) $overlib_string .= '<b>' . $mod_strings['LBL_DATE_START'] . '</b> ' . $fields['DATE_START'] . ' ' . $fields['TIME_START'] . '<br>';
		
	if(!empty($fields['DESCRIPTION'])) {
		$overlib_string .= '<b>'. $mod_strings['LBL_DESCRIPTION'] . '</b> ' . substr($fields['DESCRIPTION'], 0, 300);
		if(strlen($fields['DESCRIPTION']) > 300) $overlib_string .= '...';
	}	

	return array('fieldToAddTo' => 'NAME', 
				 'string' => $overlib_string, 
				 'editLink' => "index.php?action=EditView&module=ProductComponents&return_module=ProductComponents&record={$fields['ID']}", 
				 'viewLink' => "index.php?action=DetailView&module=ProductComponents&return_module=ProductComponents&record={$fields['ID']}");
}
 
 ?>
 
 
