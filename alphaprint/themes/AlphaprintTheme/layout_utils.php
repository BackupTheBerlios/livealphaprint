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
 ********************************************************************************/
/*********************************************************************************

 * Description:  Contains a variety of utility functions used to display UI
 * components such as form headers and footers.  Intended to be modified on a per
 * theme basis.
 ********************************************************************************/


global $app_strings,$current_user;

// list view bg colors
$even_bg = "#eeeeee";
$odd_bg = "#eeeeee";
$hilite_bg = "#dfe3e9";
// set $click_bg to a color to have a listview row to highlight when clicked $click_bg = "";

//graph colors
$barChartColors = array(
"docBorder"=>"0xb1b8ce",
"docBg1"=>"0xf3f4f6",
"docBg2"=>"0xbac3d6",
"xText"=>"0x444444",
"yText"=>"0x444444",
"title"=>"0x7b859a",
"misc"=>"0x666666",
"altBorder"=>"0xffffff",
"altBg"=>"0xdfe3e9",
"altText"=>"0x555555",
"graphBorder"=>"0xeeeeee",
"graphBg1"=>"0x8990a1",
"graphBg2"=>"0xdfe3e9",
"graphLines"=>"0xeeeeee",
"graphText"=>"0x333333",
"graphTextShadow"=>"0xeeeeee",
"barBorder"=>"0xeeeeee",
"barBorderHilite"=>"0x717989",
"legendBorder"=>"0xffffff",
"legendBg1"=>"0xeeeeee",
"legendBg2"=>"0xdfe3e9",
"legendText"=>"0x555555",
"legendColorKeyBorder"=>"0xffffff",
"scrollBar"=>"0x999999",
"scrollBarBorder"=>"0x777777",
"scrollBarTrack"=>"0xeeeeee",
"scrollBarTrackBorder"=>"0x777777"
);

$pieChartColors = array(
"docBorder"=>"0xb1b8ce",
"docBg1"=>"0xf3f4f6",
"docBg2"=>"0xbac3d6",
"title"=>"0x7b859a",
"subtitle"=>"0x7b859a",
"misc"=>"0x666666",
"altBorder"=>"0xffffff",
"altBg"=>"0xdfe3e9",
"altText"=>"0x555555",
"graphText"=>"0x333333",
"graphTextShadow"=>"0xeeeeee",
"pieBorder"=>"0xeeeeee",
"pieBorderHilite"=>"0x717989",
"legendBorder"=>"0xffffff",
"legendBg1"=>"0xeeeeee",
"legendBg2"=>"0xdfe3e9",
"legendText"=>"0x555555",
"legendColorKeyBorder"=>"0xffffff",
"scrollBar"=>"0x999999",
"scrollBarBorder"=>"0x777777",
"scrollBarTrack"=>"0xeeeeee",
"scrollBarTrackBorder"=>"0x777777"
);


if (!$current_user->getPreference('gridline') || $current_user->getPreference('gridline') == 'on') {
$gridline = 1;
} else {
$gridline = 0;
}


/**
 * Create HTML to display formatted form title of a form in the left pane
 * param $left_title - the string to display as the title in the header
 */
function get_left_form_header ($left_title)
{
global $image_path;

$the_header = '<table cellpadding="0" cellspacing="0" border="0" width="100%" class="leftColumnModuleHead">';
$the_header .= '<tr>';
$the_header .= '<th class="thHeading">&nbsp;&nbsp;'.$left_title.'</th>';
$the_header .= '<th width="9"><img src="'.$image_path.'moduleTab_right.gif" alt="" width="9" height="20" border="0" alt="'.$left_title.'"></th></tr>';
$the_header .= '</table>';
$the_header .= '<table width="100%" cellpadding="3" cellspacing="0" border="0"><tr><td align="left" class="leftColumnModuleS3">';
return $the_header;
}

/**
 * Create HTML to display formatted form footer of form in the left pane.
 */
function get_left_form_footer() {
return ("</td></tr></table>\n");
}

/**
 * Create HTML to display formatted form title.
 * param $form_title - the string to display as the title in the header
 * param $other_text - the string to next to the title.  Typically used for form buttons.
 * param $show_help - the boolean which determines if the print and help links are shown.
 */
function get_form_header ($form_title, $other_text, $show_help)
{
global $sugar_version, $sugar_flavor, $server_unique_key, $current_language, $current_module, $current_action;
global $image_path;
global $app_strings;

$the_form = <<<EOQ
</p>
<p>
EOQ;

$is_min_max = strpos($other_text,"_search.gif");
$the_form .= '<table width="100%" cellpadding="0" cellspacing="0" border="0"><tr>';
if ($is_min_max === false) {
	$the_form .= '<td nowrap valign="top"><h3><img src="'.$image_path.'h3Arrow.gif" border="0" alt="'.$form_title.'"style="margin-bottom: 3px; margin-right: 1px;" align="absmiddle">'.$form_title.'</h3></td>';
} else {
	$the_form .= '<td nowrap valign="top"><h3>'.$other_text.'&nbsp;'.$form_title.'</h3></td>';
}


$keywords = array("/class=\"button\"/","/class='button'/","/class=button/","/<\/form>/");
$match="";

	foreach ($keywords as $left) {
		 if (preg_match($left,$other_text)) {$match=true;}
	}
if ($other_text && $match) {
$the_form .= "<td colspan='10' width='100%'><IMG height='1' width='1' src='include/images/blank.gif' alt=''></td>\n";
	$the_form .= "</tr><tr>\n";
	$the_form .= "<td align='left' valign='middle' nowrap style='padding-bottom: 2px;'>$other_text</td>\n";
	$the_form .= "<td width='100%'><IMG height='1' width='1' src='include/images/blank.gif' alt=''></td>\n";

	if ($show_help==true) {
		$the_form .= "<td align='right' nowrap style='border-bottom: 1px solid #bac3d6;'>";
		if ($_REQUEST['action'] != "EditView") {
	     	$the_form .= "<A
href='index.php?".$GLOBALS['request_string']."' class='utilsLink'><img
src='".$image_path."print.gif' alt='Print' border='0'
align='middle'></a>&nbsp;<A
href='index.php?".$GLOBALS['request_string']."'
class='utilsLink'>".$app_strings['LNK_PRINT']."</A>\n";
	    }
	    $the_form .= "&nbsp;<A href='index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$current_module."&help_action=".$current_action."&key=".$server_unique_key."'
target='_blank' class='utilsLink'><img src='".$image_path."help.gif'
alt='Help' border='0' align='middle'></a>&nbsp;<A
href='index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$current_module."&help_action=".$current_action."&key=".$server_unique_key."' target='_blank'
class='utilsLink'>".$app_strings['LNK_HELP']."</A></td>\n";
	}

} else {

if ($other_text && $is_min_max === false) {
		$the_form .= "<td width='20'><IMG height='1' width='20' src='include/images/blank.gif' alt=''></td>\n";
		$the_form .= "<td  valign='middle' nowrap width='100%'>$other_text</td>\n";
	}
	else {
		$the_form .= "<td width='100%'><IMG height='1' width='1' src='include/images/blank.gif' alt=''></td>\n";
	}

	if ($show_help==true) {
		$the_form .= "<td align='right' nowrap>";
		if ($_REQUEST['action'] != "EditView") {
	     	$the_form .= "<A
href='index.php?".$GLOBALS['request_string']."' class='utilsLink'><img
src='".$image_path."print.gif' alt='Print' border='0'
align='middle'></a>&nbsp;<A
href='index.php?".$GLOBALS['request_string']."'
class='utilsLink'>".$app_strings['LNK_PRINT']."</A>\n";
	    }
	    $the_form .= "&nbsp;<A href='index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$current_module."&help_action=".$current_action."&key=".$server_unique_key."'
target='_blank' class='utilsLink'><img src='".$image_path."help.gif'
alt='Help' border='0' align='middle'></a>&nbsp;<A
href='index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$current_module."&help_action=".$current_action."&key=".$server_unique_key."' target='_blank'
class='utilsLink'>".$app_strings['LNK_HELP']."</A></td>\n";
	}

}



$the_form .= <<<EOQ
	  </tr>
</table>

EOQ;

return $the_form;
}

/**
 * Create HTML to display formatted form footer
 */
function get_form_footer() {
}

/**
 * Create HTML to display formatted module title.
 * param $module - the string to next to the title.  Typically used for form buttons.
 * param $module_title - the string to display as the module title
 * param $show_help - the boolean which determines if the print and help links are shown.
 */
function get_module_title ($module, $module_title, $show_help)
{
global $sugar_version, $sugar_flavor, $server_unique_key, $current_language, $action;
global $image_path;
global $app_strings;

$the_title = "<table width='100%' cellpadding='0' cellspacing='0' border='0'><tr><td valign='top' style='padding-top:3px; margin-bottom: 0px; padding-bottom: 0px; margin-top: 3px; border-bottom: 1px solid #bac3d6;'>\n";
$module = preg_replace("/ /","",$module);
if (is_file($image_path.$module.".gif")) {
	$the_title .= "<IMG src='".$image_path.$module.".gif' width='16' height='16' border='0' alt='".$module_title."' style='margin-top: 3px;'>&nbsp;</td><td width='100%' style='padding-top:3px; margin-bottom: 0px; padding-bottom: 0px; margin-top: 3px; border-bottom: 1px solid #bac3d6;'>";
}
$the_title .= "<h2 style='margin-bottom: 0px;'>".$module_title."</h2></td>\n";

if ($show_help) {

		$the_title .= "<td valign='top' align='right' nowrap style='padding-top:8px; margin-bottom: 0px; padding-bottom: 0px; padding-left: 5px; margin-top: 3px; border-bottom: 1px solid #bac3d6;'>";
		if ($_REQUEST['action'] != "EditView") {
	     	$the_title .= "<A href='index.php?".$GLOBALS['request_string']."' class='utilsLink'><img src='".$image_path."print.gif' alt='".$app_strings['LNK_PRINT']."' border='0' align='absmiddle'></a>&nbsp;<A href='index.php?".$GLOBALS['request_string']."' class='utilsLink'>".$app_strings['LNK_PRINT']."</A>\n";
	    }
	    $current_action = (empty($current_action) ? '' : $current_action);
//	    $the_title .= "&nbsp;<A href='index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$module."&help_action=".$current_action."&key=".$server_unique_key."' target='_blank' class='utilsLink'><img src='".$image_path."help.gif' alt='".$app_strings['LNK_HELP']."' border='0' align='middle'></a>&nbsp;<A href='index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$module."&help_action=".$current_action."&key=".$server_unique_key."' target='_blank' class='utilsLink'>".$app_strings['LNK_HELP']."</A></td>\n";
	    $the_title .= "&nbsp;<A href=\"javascript:void window.open('index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$module."&help_action=".$action."&key=".$server_unique_key."','helpwin','width=600,height=600,status=0,resizable=1,scrollbars=1,toolbar=0,location=1')\"  class='utilsLink'>" .
	    			  "<img src='".$image_path."help.gif' width='13' height='13' alt='".$app_strings['LNK_HELP']."' border='0' align='absmiddle'></a>";
	    $the_title .= "&nbsp;<A href=\"javascript:void window.open('index.php?module=Administration&action=SupportPortal&view=documentation&version=".$sugar_version."&edition=".$sugar_flavor."&lang=".$current_language."&help_module=".$module."&help_action=".$action."&key=".$server_unique_key."','helpwin','width=600,height=600,status=0,resizable=1,scrollbars=1,toolbar=0,location=1');\" class='utilsLink'>"
	    			  .$app_strings['LNK_HELP'].
					  "</A></td>\n";
	}


$the_title .= "</tr></table>\n";

return $the_title;

}

/**
 * Create a header for a popup.
 * param $theme - The name of the current theme
 */
function insert_popup_header($theme)
{
global $app_strings, $sugar_config, $sugar_version;
$charset = $sugar_config['default_charset'];

if(isset($app_strings['LBL_CHARSET']))
{
	$charset = $app_strings['LBL_CHARSET'];
}

$out  = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">';
$out .=	'<HTML><HEAD>';
$out .=	'<meta http-equiv="Content-Type" content="text/html; charset='.$charset.'">';
$out .=	'<title>'.$app_strings['LBL_BROWSER_TITLE'].'</title>';
$out .=	'<style type="text/css">@import url("themes/'.$theme.'/style.css?s=' . $sugar_version . '&c=' . $sugar_config['js_custom_version'] . '"); </style>';
$out .=	'</HEAD><BODY style="margin: 10px">';

echo $out;
}

/**
 * Create a footer for a popup.
 */
function insert_popup_footer()
{
echo <<< EOQ
	</BODY>
	</HTML>
EOQ;
}

?>
