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

 * Description:  Contains field arrays that are used for caching
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
$fields_array['EstimateComponents'] = array ('column_fields' => array(
		'id',
		'date_entered',
		'date_modified',
		'assigned_user_id',
		'modified_user_id',
		'created_by',

		'number',
		'type',
		'paper',
		'volume',
		'quantity',
		'paperid',
		'client_paper',
		'format',
		'fsize_h',
		'fsize_w',
		
		'run_format',
		'run_size_x',
		'run_size_y',
		
		'bleed_format',
		'bleed_size_x',
		'bleed_size_y',
		

		
		'pressformat',
		'pressformat_x',
		'pressformat_y',
		
		'paper_description',
		'paper_weight',
		'paper_type',
		'colors_a',
		'colors_b',
		'operations',
		'paper_supplier_description',
		'format_description',
		
		'machine',
		'description',
	
		'paper_rate',
		'paper_rate_id',
		'rate_price',
		'price',
		
		'parent_bean',
		
		'color_side_a',
        'color_side_b',
        
		'supplier_name',
		'supplier_id',
		
		'calculant_name',
		'calculant_id',
		

		'name',
		'status',
		
		'parent_id',
		'parent_name',
		'description',
		
		'base_format',
		'base_format_id',
		'base_x',
		'base_y',
		
		'child_format',
		'child_format_id',
		'child_x',
		'child_y',
		
		'auto_price',
	
		'deleted',
	),
        'list_fields' =>  array(
		'id',
		'parent_id',
		'parent_name',
		'name',
		
		'paper_description',
		'paper_weight',
		'paper_type',
		'colors_a',
		'colors_b',
		'operations',
		'paper_supplier_description',
		'format_description',
			
		'status',
		'assigned_user_id',
		'assigned_user_name',
		
		
		'number',
		
		'type',
		'paper',
		'volume',
		'quantity',
		
		'pressformat_x',
		'pressformat_y',
		

		
		'bleed_size_x',
		'bleed_size_y',
		'run_size_x',
		'run_size_y',
		
		'base_format',
		'base_format_id',
		'base_x',
		'base_y',
		
		'child_format',
		'child_format_id',
		'child_x',
		'child_y',
		
		'paperid',
		'client_paper',
		'fsize_h',
		'fsize_w',
		'format',
		'color_side_a',
        'color_side_b',
		'machine',
		'description',
	
		'paper_rate',
		'paper_rate_id',
		'rate_price',
		'price',
		
		'parent_bean',
		
		'auto_price',

		'supplier_name',
		'supplier_id',
		
		'calculant_name',
		'calculant_id',
	),
    'required_fields' =>  array('name'=>1, 'parent_id'=>2,),
);
?>