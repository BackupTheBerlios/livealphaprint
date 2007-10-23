<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
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



$listViewDefs['Pressmachine'] = array(
    'NAME' => array(
        'width' => '15',  
        'label' => 'LBL_LIST_NAME', 
        'link' => true,
        'default' => true),

   
    'S_FORMAT' => array(
        'width' => '5',  
        'label' => 'LBL_LIST_S_FORMAT', 
        'customCode'=> '{$S_X}x{$S_Y}',
        'default' => true),
        
//    'M_FORMAT' => array(
//        'width' => '10',  
//        'label' => 'LBL_LIST_M_FORMAT', 
//        'customCode'=> '{$M_X}x{$M_Y}',
//        'default' => true),
//        
//        
//    'MP_FORMAT' => array(
//        'width' => '10',  
//        'label' => 'LBL_LIST_MP_FORMAT', 
//        'customCode'=> '{$MP_X}x{$MP_Y}',
//        'default' => true),
        
    
      
    'ACTIVE' => array(
        'width' => '5',  
        'label' => 'LBL_LIST_ACTIVE', 
        'default' => true),
        
    'PLATE_PRICE' => array(
        'width' => '40',  
        'label' => 'LBL_PLATE_PRICE', 
        'default' => true),
        
     'S_X' => array(
        'width' => '0',  
        'label' => '&nbsp;', 
        'customCode'=> ' ',
        'sortable' => false,
        'default' => true,
        ),
        
     'S_Y' => array(
        'width' => '0',  
        'label' => '&nbsp;', 
        'customCode'=> ' ',
        'sortable' => false,
        'default' => true,
        ),
//     'M_X' => array(
//        'width' => '0',  
//        'label' => '&nbsp;', 
//        'customCode'=> ' ',
//        'sortable' => false,
//        'default' => true,
//        ),
//        
//     'M_Y' => array(
//        'width' => '0',  
//        'label' => '&nbsp;', 
//        'customCode'=> ' ',
//        'sortable' => false,
//        'default' => true,
//        ),
//	
//    'MP_X' => array(
//        'width' => '0',  
//        'label' => '&nbsp;', 
//        'customCode'=> ' ',
//        'sortable' => false,
//        'default' => true,
//        ),
//        
//    'MP_Y' => array(
//        'width' => '0',  
//        'label' => '&nbsp;', 
//        'customCode'=> ' ',
//        'sortable' => false,
//        'default' => true,
//        ),
);

?>
