<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty {sugar_translate} function plugin
 *
 * Type:     function<br>
 * Name:     sugar_translate<br>
 * Purpose:  translates a label into the users current language
 * 
 * @author Majed Itani {majed at sugarcrm.com
 * @param array
 * @param Smarty
 */
function smarty_function_sugar_translate($params, &$smarty)
{
	if (!isset($params['label'])){
		$smarty->trigger_error("sugar_translate: missing 'label' parameter");
		return '';
	}

	$module = (isset($params['module']))? $params['module']: '';
    
    if(!empty($params['trimColon']) && !$params['trimColon']) {
        return translate($params['label'] , $module);
    }
    else {
        return rtrim(translate($params['label'], $module), ':');
    }
}
?>
