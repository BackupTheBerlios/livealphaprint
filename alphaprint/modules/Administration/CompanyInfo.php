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

 * Description:
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc. All Rights
 * Reserved. Contributor(s): ______________________________________..
 * *******************************************************************************/

require_once('modules/Configurator/Configurator.php');
require_once('include/Sugar_Smarty.php');
require_once('modules/Administration/Administration.php');
require_once('include/database/MysqlManager.php');


echo get_module_title($mod_strings['LBL_MODULE_NAME'], $mod_strings['LBL_COMP_INFO'].": ", true);


$cfg            = new Configurator();
$sugar_smarty    = new Sugar_Smarty();


$errors            = '';

$datab = new MysqlManager();
$datab->connect();

$q = "SELECT logo, country, city, state, street, phone, fax, web, email FROM companyinfo";
$res =  $datab->query($q,true," Error filling in additional detail fields: " );
$r = mysql_fetch_array($res);

$sugar_smarty->assign('CI', $r); 

///////////////////////////////////////////////////////////////////////////////
////    HANDLE CHANGES
if(isset($_REQUEST['process']) && $_REQUEST['process'] == 'true') {
    
    $logo = $_REQUEST['logo']; 
    $country = $_POST['country'];
    $city = $_POST['city'];
    $state = $_POST['state']; 
    $street = $_POST['street'];
    $phone = $_POST['phone'];
    $fax = $_POST['fax'];
    $web = $_POST['web']; 
    $email = $_POST['email'];
    
 $datab = new MysqlManager();
 $datab->connect();
        
        
        $q = "SELECT * FROM `companyinfo`";
        $res =  $datab->query($q,true," Error filling in additional detail fields: " );
        $num = $datab->getRowCount($result);
        
        if ($num = 0) {
        
            $query = 'INSERT into companyinfo (logo, country, city, state, street, phone, fax, web, email) VALUES';
        $query.= "('$logo', '$country', '$city', '$state', '$street', '$phone', '$fax', '$web', '$email') ";
        
        $result = $datab->query($query,true," Error filling in additional detail fields: " );    
        }
        else {  
        $query = "UPDATE companyinfo SET    logo = '$logo' , 
                                            country = '$country' , 
                                            city = '$city', 
                                            state = '$state', 
                                            street = '$street', 
                                            phone = '$phone', 
                                            fax = '$fax', 
                                            web = '$web', 
                                            email = '$email'"; 
        
        $result = $datab->query($query,true," Error filling in additional detail fields: " );  
        }
 
    
    $cfg->populateFromPost();
    $cfg->handleOverride();
}

///////////////////////////////////////////////////////////////////////////////
////    PAGE OUTPUT
$sugar_smarty->assign('MOD', $mod_strings);
$sugar_smarty->assign('APP', $app_strings);
$sugar_smarty->assign('APP_LIST', $app_list_strings);
$sugar_smarty->assign('LANGUAGES', get_languages());
$sugar_smarty->assign("JAVASCRIPT",get_set_focus_js());
$sugar_smarty->assign('config', $sugar_config);
$sugar_smarty->assign('error', $errors);
$sugar_smarty->assign('getNameJs', $locale->getNameJs());   

$sugar_smarty->display('modules/Administration/CompanyInfo.tpl');

?>
