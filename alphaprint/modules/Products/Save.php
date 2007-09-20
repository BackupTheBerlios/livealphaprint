<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for Products
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

require_once('modules/Products/Products.php');
require_once('modules/ProductLogs/ProductLog.php');
require_once('modules/ProductComponents/ProductComponents.php');

require_once('include/formbase.php');


$sugarbean = new Products();
$sugarbean = populateFromPost('', $sugarbean);
$productcomponents = new ProductComponents();
$productlog = new ProductLog();


if(isset($_REQUEST['email_id'])) $sugarbean->email_id = $_REQUEST['email_id'];

if(!$sugarbean->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}

########### Update Product Log ############
if ($sugarbean->id){
    $query = "SELECT id from productlog where deleted=0 AND product_id='$sugarbean->id'";
    $result = $sugarbean->db->query($query,true," Error filling in additional detail fields: ");
    $n = $sugarbean->db->getRowCount($result);
    
    if ($n>0){
    $id = $sugarbean->db->fetchByAssoc($result);
    $productlog->id = $id['id'];
    }
}
############################################

$sugarbean->save($GLOBALS['check_notify']);

$sugarbean->status_update('',$sugarbean->id);

$return_id = $sugarbean->id;

/*
######## Components Auto Creation ##########
// TO DO: Define the components type
$productcomponents->parent_id = $return_id;
$pnum = $sugarbean->pnum_suf;
$productcomponents->name = $sugarbean->name.'-'.$productcomponents->generate_number_auto($return_id);
$productcomponents->number_pref = 'PRD';
$productcomponents->number_suf = $productcomponents->generate_number_auto($return_id);
$pnum_suf = $productcomponents->generate_number_auto($return_id);    
$productcomponents->number = 'PRD'.$pnum.'-'.$pnum_suf;
$productcomponents->save($GLOBALS['check_notify']);
############################################*/



######### Product Log ######################
if(!$productlog->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}
$productlog->product_name = $sugarbean->name;
$productlog->product_id = $sugarbean->id;
$productlog->save($GLOBALS['check_notify']);
############################################

handleRedirect($return_id,'Products');

?>