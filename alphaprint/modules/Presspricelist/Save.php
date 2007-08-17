<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Save functionality for Presspricelist
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



require_once('modules/Presspricelist/Presspricelist.php');
require_once('modules/Pricelistlines/Pricelistline.php');

require_once('include/formbase.php');


$sugarbean = new Presspricelist();
$sugarbean = populateFromPost('', $sugarbean);

foreach($sugarbean->column_fields as $field)
{
	
	if(!isset($_REQUEST['active']))
	{
		$sugarbean->active = 'off';
	}
	
	
}

if(isset($_REQUEST['email_id'])) $sugarbean->email_id = $_REQUEST['email_id'];

if(!$sugarbean->ACLAccess('Save')){
		ACLController::displayNoAccess(true);
		sugar_cleanup(true);
}
$sugarbean->save($GLOBALS['check_notify']);
$return_id = $sugarbean->id;

$priceLine1 = new Pricelistline();
	$priceLine1->mark_deletedBypricelistid($return_id);
	$count = count($_POST);
	$keys = array_keys($_POST);
	$sum = 0;
    $s = 0;
	for($i = 0;$i< $count; $i++) {
		//echo $keys[$i]."<br>";
		if(substr_count($keys[$i],"impressions_number_") > 0) {
			$index = substr($keys[$i],-1,1);
			
			$data[] = array ('impressions_number' => $_POST["impressions_number_".$index],'base_price' => $_POST["base_price_".$index],'step_price' => $_POST["step_price_".$index],);
		    $s = $s + 1;
			                                     
          /*  */
		}
	}
    
    foreach($data as $res){
        $sortData[] = $res['impressions_number'];
    }
    
    array_multisort($sortData, SORT_ASC, $data);

    for($i = 0;$i< $s; $i++) {
    	
    	       
        $priceLine = new Pricelistline();               
        $priceLine->impressions_number = $data[$i]['impressions_number'];
        
        if (!empty($data[$i]['base_price']) && !is_null($data[$i]['base_price'])){
        	$priceLine->base_price = $data[$i]['base_price'];
        }
        else {
	        
            $data[$i]['base_price'] = $sugarbean->calc_price( $data[$i]['impressions_number'], $data[$i-1]['impressions_number'], $sugarbean->step_amount, $data[$i-1]['step_price'], $data[$i-1]['base_price']);
	        $priceLine->base_price = $sugarbean->calc_price( $data[$i]['impressions_number'], $data[$i-1]['impressions_number'], $sugarbean->step_amount, $data[$i-1]['step_price'], $data[$i-1]['base_price']);
        }
        $priceLine->step_price = $data[$i]['step_price'];  
        $priceLine->pricelist_id = $return_id;
        $priceLine->save();
    
    }
          
	
handleRedirect($return_id,'Presspricelist');

?>