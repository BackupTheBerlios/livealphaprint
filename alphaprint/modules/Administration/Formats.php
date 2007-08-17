<?php
require_once('modules/Format/Format.php');
require_once('modules/Configurator/Configurator.php');
require_once('include/Sugar_Smarty.php');
require_once('modules/Administration/Administration.php');
require_once('include/database/MysqlManager.php');
global $app_strings;

$format = new Format();
$cfg            = new Configurator();
$sugar_smarty    = new Sugar_Smarty();
///////////////////////////////////////////////////////////////////////////////
////    PAGE OUTPUT
$sugar_smarty->assign('MOD', $mod_strings);
$sugar_smarty->assign('APP', $app_strings);
$sugar_smarty->assign('APP_LIST', $app_list_strings);
$sugar_smarty->assign('LANGUAGES', get_languages());
$sugar_smarty->assign("JAVASCRIPT",get_set_focus_js());
$sugar_smarty->assign('config', $sugar_config);
$sugar_smarty->assign('getNameJs', $locale->getNameJs());
$app_list_strings['products_format_options'] = $format->Get_Dropdown_Data();   
$sugar_smarty->assign("FORMAT_OPTIONS", get_select_options_with_id($app_list_strings['products_format_options'], $focus->format));

$sugar_smarty->display('modules/Administration/Formats.tpl');
?>