<?php
/*****************************************************************************
 * The contents of this file are subject to the RECIPROCAL PUBLIC LICENSE
 * Version 1.1 ("License"); You may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/rpl.php. Software distributed under the
 * License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
 * either express or implied.
 *
 * You may:
 * a) Use and distribute this code exactly as you received without payment or
 *    a royalty or other fee.
 * b) Create extensions for this code, provided that you make the extensions
 *    publicly available and document your modifications clearly.
 * c) Charge for a fee for warranty or support or for accepting liability
 *    obligations for your customers.
 *
 * You may NOT:
 * a) Charge for the use of the original code or extensions, including in
 *    electronic distribution models, such as ASP (Application Service
 *    Provider).
 * b) Charge for the original source code or your extensions other than a
 *    nominal fee to cover distribution costs where such distribution
 *    involves PHYSICAL media.
 * c) Modify or delete any pre-existing copyright notices, change notices,
 *    or License text in the Licensed Software
 * d) Assert any patent claims against the Licensor or Contributors, or
 *    which would in any way restrict the ability of any third party to use the
 *    Licensed Software.
 *
 * You must:
 * a) Document any modifications you make to this code including the nature of
 *    the change, the authors of the change, and the date of the change.
 * b) Make the source code for any extensions you deploy available via an
 *    Electronic Distribution Mechanism such as FTP or HTTP download.
 * c) Notify the licensor of the availability of source code to your extensions
 *    and include instructions on how to acquire the source code and updates.
 * d) Grant Licensor a world-wide, non-exclusive, royalty-free license to use,
 *    reproduce, perform, modify, sublicense, and distribute your extensions.
 *
 * The Original Code is: C3CRM Team
 *                       http://www.c3crm.com
 *                       2006-5-19 
 *
 * The Initial Developer of the Original Code is C3CRM Team.
 * Portions created by C3CRM are Copyright (C) 2005 C3CRM
 * All Rights Reserved.
 * Contributors: Goodwill Consulting http://www.goodwill.co.id
 ********************************************************************************/

include_once('config.php');
require_once('log4php/LoggerManager.php');
require_once('include/database/PearDatabase.php');
require_once('data/SugarBean.php');

// Contact is used to store customer information.
class Layoutline extends SugarBean
{
	// Stored fields
   var $id;

   var $name;
   
   var $product_component_id;   
   
   var $number_lots;   
   
   var $number_units;   
   
   var $run_style;   
   
   var $format;
   
   var $deleted;   
   
   var $date_entered;   
   
   var $date_modified;   
   
   var $created_by;
   var $table_name = 'layout';
   var $object_name = 'Layoutline';
   var $module_dir = 'Layoutline';
   var $new_schema = true;

   
   var $column_fields = Array(
   
 		'id'
   
  		,'name'
 		
 		,'product_component_id'
   
		,'number_lots'
   
		,'number_units'
   
		,'run_style'
		
		,'format'
				
		,'deleted'
   
		,'date_entered'
   
		,'date_modified'
   
		,'created_by'
        
       
		);
   

   var $list_fields= array();
   var $required_fields = array();

   function Layoutline()
   {
		parent::SugarBean();
		$this->list_fields = $this->column_fields;
   }

   function get_xtemplate_data() {
		$return_array = array();
		global $current_user;
		foreach($this->column_fields as $field)	{
			$return_array[strtoupper($field)] = $this->$field;
		}
		return $return_array;
	}               
	/*function mark_deletedByid($product_component_id) {
		$return_array = $this->get_full_list("id","product_component_id='".$product_component_id."'");
		foreach ($return_array as $value) {
			$this->mark_deleted($value->id);
		}
	}*/
    
    function mark_deletedByid($field,$value,$editfields) {
        $return_array = $this->get_full_list("id","$field='".$value."'");
        for ($l=0; $l<count($return_array); $l++) {
            for ($i=0; $i<count($editfields); $i++){
                if ($editfields[$i] == $return_array[$l]->id)
                {
                    $return_array[$l] = null;    
                }
                //$this->mark_deleted($value->id);
            }
                
        }
        if(isset($return_array) && !is_null($return_array)){
            array_filter($return_array);
        }
        for ($l=0; $l<count($return_array); $l++) {
            
            if (!is_null($return_array[$l])){
                $this->mark_deleted($return_array[$l]->id);
            }
            //$this->mark_deleted($value->id);
        }
        
        return $return_array;
    }
	
	function fill_in_additional_list_fields() {
		$this->fill_in_additional_detail_fields();
			}
}

?>