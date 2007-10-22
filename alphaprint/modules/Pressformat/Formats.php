<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');



require_once('XTemplate/xtpl.php');
require_once('data/Tracker.php');
require_once('modules/Pressformat/Pressformat.php');
require_once('include/time.php');
require_once('modules/Pressformat/Forms.php');

global $app_strings;
global $app_list_strings;
global $current_language;
global $current_user;
global $sugar_version, $sugar_config;

$focus = new Pressformat();

echo "\n<p>\n";
echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_MODULE_NAME'].": ".$focus->name, true);
echo "\n</p>\n";
global $theme;
$theme_path="themes/".$theme."/";
$image_path=$theme_path."images/";
require_once($theme_path.'layout_utils.php');


$xtpl=new XTemplate ('modules/Pressformat/Formats.html');


///
/// Assign the template variables
///

$xtpl->assign('MOD', $mod_strings);
$xtpl->assign('APP', $app_strings);
//$xtpl->assign("JAVASCRIPT", get_set_focus_js().get_validate_record_js() . $quicksearch_js);
$xtpl->assign("THEME", $theme);

$app_list_strings['format_options'] = $focus->Get_Dropdown_Data();
$xtpl->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['format_options'], ''));


$xtpl->parse("main");
$xtpl->out("main");
/*require_once('include/javascript/javascript.php');
$javascript = new javascript();
$javascript->setFormName('EditView');
$javascript->setSugarBean($focus);
$javascript->addAllFields('');*/




//$javascript->addToValidateBinaryDependency('assigned_user_name', 'alpha', $app_strings['ERR_SQS_NO_MATCH_FIELD'] . $app_strings['LBL_ASSIGNED_TO'], 'false', '', 'assigned_user_id');
//echo $javascript->getScript();


?>
