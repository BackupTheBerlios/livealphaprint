<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the componentestimatecalc table
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



require_once('data/SugarBean.php');

require_once('include/utils.php');


require_once('modules/Calls/Call.php');
require_once('modules/Notes/Note.php');
require_once('modules/Emails/Email.php');
require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('modules/Paper/Paper.php');
require_once('modules/Press/Press.php');
require_once('modules/ProductOperations/ProductOperation.php');
require_once('modules/Layout/Layout.php');
require_once('modules/Paperwaste/Paperwaste.php');
require_once('modules/Operations/Operation.php');
require_once('modules/Ratefilm/Ratefilm.php');
require_once('modules/Rateplate/Rateplate.php');
//require_once('modules/EstimateCalc/EstimateCalc.php');
require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('modules/Estimates/Estimates.php');
require_once('XTemplate/xtpl.php');

/**
 *
 */
class ComponentEstimateCalc extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;

	var $name;
	
	var $errors = Array();
	
	var $total_paper;
	var $total_press;
	var $total_prepress;
	var $total_operations;
	
	var $paper_singleprice;
	
	var $component_name;
	var $component_id;
	var $estimate_name;
	var $estimate_id;
	
	var $description;
	var $deleted;
	
	var $status;
	
	//press rate fields
	var $press_rate_a_id;
	var $press_rate_a_name;
	var $press_rate_b_id;
	var $press_rate_b_name;
	var $press_rate_a_inks;
	var $press_rate_a_machine;
	var $press_rate_b_inks;
	var $press_rate_b_machine;

	//paper presswaste fields
	var $press_paperwaste_rate_id;
	var $press_paperwaste_rate_name;
	var $press_paperwaste_rate_machine;
	
	// related information
	var $assigned_user_name;
	var $modified_by_name;
	var $created_by_name;




	var $account_id;
	var $contact_id;
	var $opportunity_id;



	var $email_id;



	var $object_name = 'ComponentEstimateCalc';
	var $module_dir = 'ComponentEstimateCalc';
	var $new_schema = true;
	var $table_name = 'componentestimatecalc';

	// This is used to retrieve related fields from form posts.
	var $additional_column_fields = array(
		'account_id',
		'contact_id',



		'opportunity_id',
	);

	var $relationship_fields = array(
		'account_id' => 'accounts',
		'contact_id'=>'contacts',



		'opportunity_id'=>'opportunities',
		'email_id' => 'emails',
	);

	//////////////////////////////////////////////////////////////////
	// METHODS
	//////////////////////////////////////////////////////////////////

	/**
	 *
	 */
	function ComponentEstimateCalc()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, componentestimatecalc.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM componentestimatecalc ";




          $query .= "LEFT JOIN users ON componentestimatecalc.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN componentestimatecalc_relation ON componentestimatecalc.id=componentestimatecalc_relation.componentestimatecalc_id ";



		if($custom_join){ $query .=  $custom_join['join']; }


			$where_auto = '1=1';
				if($show_deleted == 0){
                	$where_auto = "$this->table_name.deleted=0";
				}else if($show_deleted == 1){
                	$where_auto = "$this->table_name.deleted=1";
				}

            if($where != '')
                    $query .= "WHERE ($where) AND ".$where_auto;
            else
                    $query .= "WHERE ".$where_auto;

            if(!empty($order_by))
                    $query .= " ORDER BY $order_by";
//die($query);
		return $query;
	}

	/**
	 *
	 */
	function fill_in_additional_detail_fields()
	{
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
	}

	/**
	 *
	 */
	function fill_in_additional_list_fields()
	{
		$this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
	}


	function get_summary_text()
	{
		return $this->name;
	}

	/**
	 *
	 */
	function build_generic_where_clause ($the_query_string)
	{
		$where_clauses = array();
		$the_query_string = PearDatabase::quote(from_html($the_query_string));
		array_push($where_clauses, "componentestimatecalc.name LIKE '%$the_query_string%'");

		$the_where = '';
		foreach($where_clauses as $clause)
		{
			if($the_where != '') $the_where .= " OR ";
			$the_where .= $clause;
		}

		return $the_where;
	}
	
	function get_list_view_data()
	{
		$field_list = $this->get_list_view_array();
		$field_list['USER_NAME'] = empty($this->user_name) ? '' : $this->user_name;
		$field_list['ASSIGNED_USER_NAME'] = $this->assigned_user_name;
		return $field_list;
	}
	  function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
	
	function create_export_query(&$order_by, &$where)
    {
      	$custom_join = $this->custom_fields->getJOIN();
		$query = "SELECT
				componentestimatecalc.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM componentestimatecalc ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON componentestimatecalc.assigned_user_id=users.id ";




        $where_auto = " componentestimatecalc.deleted=0 ";

        if($where != "")
        	$query .= "where ($where) AND ".$where_auto;
        else
            $query .= "where ".$where_auto;

        if(!empty($order_by)){
           	//check to see if order by variable already has table name by looking for dot "."
           	$table_defined_already = strpos($order_by, ".");

	        if($table_defined_already === false){
	        	//table not defined yet, define accounts to avoid "ambigous column" SQL error 
	        	$query .= " ORDER BY $order_by";
	        }else{
	        	//table already defined, just add it to end of query
	            $query .= " ORDER BY $order_by";	
	        }           
        }
        return $query;
    }
    
    function calc_paper_waste($impressions_number, $prev_impressions_number, $step_amount, $step_price, $base_price){
    
        if ($impressions_number <= $prev_impressions_number){
            return $base_price;
        }
        
        
         $temp_steps = ($impressions_number - $prev_impressions_number)/$step_amount;
         ceil($temp_steps);
         $price = $base_price + ($temp_steps*$step_price);
         return $price; 
    
    } 
    
    function getComponentQuantity($id){
    	$query = " select quantity FROM estimates_components where deleted=0 and id='$id' ";
    	$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		if (is_null($data)){
			return null;
		}
		else{
			return $data;	
		}	
    }

    
    function getComponentListData($fields,$select_fields,$table,$where,$is_layout=false,$order_by=null){
    	$data = array();
    	$query = " SELECT $select_fields FROM $table WHERE deleted=0 and $where $order_by  ";
    	$result = $this->db->query($query,true,"Error filling layout fields: ");
    	while (($row = $this->db->fetchByAssoc($result)) != null){
	    	foreach($fields as $field){

	    		$data[$field] = $row[$field];
			}
			
			if ($is_layout == true){
				$data['quantity'] = null;
			}
			
			$list[] = $data;
    
    	}
    	
    	if (isset($list)) return $list;
		else return null;
    }
    
    function getComponentColors($id){  //for delete
    	$query = " SELECT color_side_a, color_side_b FROM estimates_components WHERE deleted=0 and id='$id' ";
    	$result = $this->db->query($query,true,"Error filling layout fields: ");
    	$data = $this->db->fetchByAssoc($result);
    	//$this->error_check($data, new EstimateComponents);
    	return $data;
    
    }
    
    function getPressColors($id){
        $colors = array();
        $query = " SELECT color_side_a, color_side_b FROM estimates_components WHERE deleted=0 and id='$id' ";
        $result = $this->db->query($query,true,"Error filling layout fields: ");
        $data = $this->db->fetchByAssoc($result);
        //$this->error_check($data, new EstimateComponents);
        $colors[] = $data['color_side_a'];
        $colors[] = $data['color_side_b'];   
        return $colors;
    
    }                                   
    
	function getWaste($paperwaste,$quantity,$step_amount){
		/*foreach($paperwaste as $res){
    		$sortData[] = $res['impressions_number'];
    	}
    
   		array_multisort($sortData, SORT_ASC, $paperwaste);*/
        
   		for ($i=0; $i<count($paperwaste); $i++){
        
            if ($paperwaste[$i]['impressions_number']==$quantity){
                return $presswaste_amount = $paperwaste[$i]['base_waste'];
            } 
		    if ($paperwaste[$i]['impressions_number']>$quantity){
			    return $presswaste_amount = $paperwaste[$i]['base_waste'];
		    }
		    if (($paperwaste[$i]['impressions_number']<$quantity) && isset($paperwaste[$i+1]['impressions_number']) && ($paperwaste[$i+1]['impressions_number']>$quantity)){
			    return $presswaste_amount = $this->calc_paper_waste($quantity, $paperwaste[$i]['impressions_number'], $step_amount, $paperwaste[$i]['step_waste'], $paperwaste[$i]['base_waste']);	
		    }
		    if (($paperwaste[$i]['impressions_number']<$quantity) && !isset($paperwaste[$i+1]['impressions_number'])){
			    return $presswaste_amount = $this->calc_paper_waste($quantity, $paperwaste[$i]['impressions_number'], $step_amount, $paperwaste[$i]['step_waste'], $paperwaste[$i]['base_waste']);	
		    }
        }
	}
    
    function getPrice($presspricelist,$quantity,$step_amount){
       /* foreach($presspricelist as $res){
    		$sortData[] = $res['impressions_number'];
    	}
    
   		array_multisort($sortData, SORT_ASC, $presspricelist);*/
    	
    	for ($i=0; $i<count($presspricelist); $i++){
        
        	if ($presspricelist[$i]['impressions_number']==$quantity){
                return $$presspricelist_amount = $presspricelist[$i]['base_price'];
            }
        	if ($presspricelist[$i]['impressions_number']>$quantity){
                return $$presspricelist_amount = $presspricelist[$i]['base_price'];
            }
            if (($presspricelist[$i]['impressions_number']<$quantity) && ($presspricelist[$i+1]['impressions_number']>$quantity)){
                return $presspricelist_amount = $this->calc_paper_waste($quantity, $presspricelist[$i]['impressions_number'], $step_amount, $presspricelist[$i]['step_price'], $presspricelist[$i]['base_price']);    
            }
            if (($presspricelist[$i]['impressions_number']<$quantity) && !isset($presspricelist[$i+1]['impressions_number'])){
                return $presspricelist_amount = $this->calc_paper_waste($quantity, $presspricelist[$i]['impressions_number'], $step_amount, $presspricelist[$i]['step_price'], $presspricelist[$i]['base_price']);   
            }
        }
    }
    
    function getLayout($componentid,$quantity){
        $layout_fields = array("id", "number_lots", "number_units", "run_style");
        $layout_query_fields = " id, number_lots, number_units, run_style ";
        $layout_where = " component_id = '$componentid' ";
        
        $layout = $this->getComponentListData($layout_fields,$layout_query_fields,"layout",$layout_where,true);
		
		//$this->error_check($layout, new Layout);
		       
        for ($i=0; $i < count($layout); $i++){
            
            if (isset($layout[$i]['number_units']) && ($layout[$i]['number_units']>0)){
                $layout[$i]['quantity'] = $quantity/$layout[$i]['number_units'];    
            }
            
            else{
                $layout[$i]['quantity'] = $quantity;
            }
        }
        return $layout;
    }
    
	function custQuery($query_fields, $table, $where, $fields){
         
        $data = array();
         $query = "SELECT $query_fields FROM $table WHERE $where ";
         $result = $this->db->query($query,true,"Error filling layout fields: ");
         
         while (($row = $this->db->fetchByAssoc($result)) != null){
            foreach($fields as $field){

                $data[$field] = $row[$field];
            }
        }
        
        if (isset($data) && !is_null($data) && !empty($data)){
        	return $data;
        }
        else {
        	return null;
        }
        
    }
    
   function multiarray_keys($ar) {
    $keys = array();

    foreach($ar as $k => $v) {
        $keys[] = $k;
        if (is_array($ar[$k]))
            $keys = array_merge($keys, $this->multiarray_keys($ar[$k]));
    }
    return $keys;
   }
   
   function displayErrors(){
   	global $mod_strings;
   	$errors = $this->errors;
   	$errors_output = '';
   	for ($i = 0; $i < count($errors); $i++) {
		$msg = $errors[$i]['error_msg'];
		$errors_output = $errors_output.'<tr>';
	    $errors_output = $errors_output.'<td  width="50%" style="background:inherit;"  class=tabDetailViewDF ><span sugar="slot1b">'.$mod_strings[$msg].'</span></td>';
		if ($errors['linked'] == true){
			$errors_output = $errors_output.'<td  width="50%" style="background:inherit;"  class=tabDetailViewDF ><span sugar="slot1b"><a href="index.php?module='.$errors[$i]['object'].'&action=index">'.$mod_strings[$errors[$i]['object']].'</a></span></td>';
		}
		else{
			$object = $errors[$i]['object'];
			$errors_output = $errors_output.'<td  width="50%" style="background:inherit;"  class=tabDetailViewDF ><span sugar="slot1b">'.$mod_strings[$object].'</span></td>';
		}
		$errors_output = $errors_output.'</tr>';
	}
	return $errors_output;	
   }
   
   function error_check($error_msg, $object, $linked=false){
   		$error = array();
   		$error['error_msg'] = $error_msg;
		$error['object'] = $object;	
		$error['linked'] = $linked;	
		$this->errors[] = $error;		
   }
   /*function error_check($data,$bean){
   	if (!is_null($data) && $data!=false){
	   	if (isset($data[0])){
	   		for ($l = 0; $l < count($data); $l++) {
				$data_arr = $data[$l];
				$fields = $this->multiarray_keys($data_arr);
	   	
			   	for ($i = 0; $i < count($fields); $i++) {
					if ($fields[$i] == "number_units"){
						if ($data_arr['run_style'] == 1){
							continue;
						}
					}
					if ($fields[$i] == "quantity"){
							continue;
						
					}
					if (is_null($data_arr[$fields[$i]]) || empty($data_arr[$fields[$i]]) ){
			   			$error = array();
			   			$error['name'] = $fields[$i];
			   			$error['error_label'] = $bean->field_defs[$fields[$i]]['error_label'];
			   			$error['object'] = $bean->module_dir;
			   			
			   			$errors = $this->errors;
			   			$inserted = false;
			   			for ($p = 0; $p < count($errors); $p++) {
							if (($errors[$p]['name'] == $error['name']) && ($errors[$p]['object'] == $error['object'])){
								$inserted = true;	
							}			
						}
						if ($inserted == false){
				   			$this->errors[] = $error;
						}
			   		}		
				
				}
				
			}
	   	}
	   	else{
	   	
		   	$fields = $this->multiarray_keys($data);
		   	
		   	for ($i = 0; $i < count($fields); $i++) {
				
				if ((is_null($data[$fields[$i]]) || empty($data[$fields[$i]])) && (($fields[$i] != "color_side_a") && ($fields[$i] != "color_side_b")) ){
		   			$error = array();
		   			$error['name'] = $fields[$i];
		   			$error['error_label'] = $bean->field_defs[$fields[$i]]['error_label'];
		   			$error['object'] = $bean->module_dir;
		   			
		   			$errors = $this->errors;
		   			$inserted = false;
		   			for ($p = 0; $p < count($errors); $p++) {
						if (($errors[$p]['name'] == $error['name']) && ($errors[$p]['object'] == $error['object'])){
							$inserted = true;	
						}			
					}
					if ($inserted == false){
			   			$this->errors[] = $error;
					}
		   		}		
			
			}
	   	}
   	}
   	else{
   		$error = array();
	   	$error['name'] = $bean->module_dir;
	   	$error['error_label'] = "LBL_ERROR_".$bean->module_dir;
	   	$error['object'] = $bean->module_dir;
	   	
	   	$errors = $this->errors;
	   	$inserted = false;
	   	for ($p = 0; $p < count($errors); $p++) {
			if (($errors[$p]['name'] == $error['name']) && ($errors[$p]['object'] == $error['object'])){
				$inserted = true;	
			}			
		}
		if ($inserted == false){
		   	$this->errors[] = $error;
		}
	   	
   	}
   	
   
   
   }*/
   	
    
  //--------------------------------------------------------------------------//  
    function paperEstimate($componentid,$selected_rate, $auto=false ,$pdf=false){
		global $app_list_strings, $mod_strings;
    	$paperEstimate = array();
		
		$layout_fields = array("id", "number_lots", "number_units", "run_style");
		$layout_query_fields = " id, number_lots, number_units, run_style ";
		$layout_where = " component_id = '$componentid' ";
		
		$query = "SELECT client_paper FROM estimates_components WHERE deleted=0 AND id='$componentid' ";
		$result = $this->db->query($query,true,"Error filling layout fields: ");
    	$data = $this->db->fetchByAssoc($result);
		$client_paper = $data['client_paper'];
		
		$query_fields = " paperid, pressformat_x, pressformat_y, base_x, base_y, child_x, child_y, price";
		$where = " id='$componentid' ";
		$fields = array("paperid", "pressformat_x", "pressformat_y", "base_x", "base_y", "child_x", "child_y", "price");		
		$press_format_and_price = $this->custQuery($query_fields, "estimates_components", $where, $fields);
		
		//Error Checkup
		//$this->error_check($press_format_and_price, new EstimateComponents);
		
		$query_fields = " size_h, size_w ";
		$where = ' id="'.$press_format_and_price['paperid'].'" ';
		$fields = array("size_h", "size_w");		
		$paper_format = $this->custQuery($query_fields, "paper", $where, $fields);
		
		//Error Checkup
		//$this->error_check($paper_format, new Paper);
		if (!is_null($paper_format) || !is_null($press_format_and_price)){
			//Calculate qp sheets in sheet
			$sheets_qp = array();
			$x1 = floor($press_format_and_price['base_x']/$press_format_and_price['child_x']);
			$y1 = floor($press_format_and_price['base_y']/$press_format_and_price['child_y']);
			$x2 = floor($press_format_and_price['base_x']/$press_format_and_price['child_y']);
			$y2 = floor($press_format_and_price['base_y']/$press_format_and_price['child_x']);
			
			$temp1=$x1*$y1;
			$temp2=$x2*$y2;
			if($temp1 < $temp2) $temp1 = $temp2;
			$sheets_qp['sheets_qp'] = $temp1;
		
		}
		
		$quantity_arr = $this->getComponentQuantity($componentid);
		
		//Error checkup
		//$this->error_check($quantity_arr, new EstimateComponents);
		if (!is_null($quantity_arr)){
			$quantity = $quantity_arr['quantity'];
		}
		
		$layout = $this->getLayout($componentid,$quantity);
		$colors = $this->getComponentColors($componentid);
		
		$clean_quantity_qp = 0; // total cleant quantity
		$presswaste_amount = 0; // total presswaste amaunt
		$operationwaste_amount = 0;// total operation waste
		$paperestimate_html = "";//Output Paperwaste
		$subtotal_cleantqty_press_html = "";//Output total clean quantity_qp, total presswaste
		$operations_html = "";//Output Operations
		$operationwastelist = array(); 
		
		//Error Checkup
		if (!is_null($colors) && !is_null($layout)){
			for ($i=0; $i < count($layout); $i++){
			
				
				if (($layout[$i]['run_style'] == 3) || ($layout[$i]['run_style'] == 2)){
					$layout[$i]['clean_quantity_qp'] = round(($layout[$i]['number_lots'])*($layout[$i]['quantity']/2));
					$clean_quantity_qp = $clean_quantity_qp + $layout[$i]['clean_quantity_qp'];
				}
				
				else{
					$layout[$i]['clean_quantity_qp'] = round($layout[$i]['quantity']*$layout[$i]['number_lots']);
					$clean_quantity_qp = $clean_quantity_qp + $layout[$i]['clean_quantity_qp'];		
				}
				
				
				
				$layout_id = $layout[$i]['id'];//<----
				
				$query = "SELECT press_id FROM pressline WHERE deleted=0 AND layout_id='$layout_id' ";
				$result = $this->db->query($query,true,"Error filling layout fields: ");
	    		$data = $this->db->fetchByAssoc($result);
				
				///---->
				if (!is_null($data)) {
					$press_id = $data['press_id'];//<----
				}
				else{
					//$this->error_check($data, new Pressline);
				}
				
	    		$query = "SELECT pressmachine_id FROM press WHERE deleted=0 AND id='$press_id' ";
				$result = $this->db->query($query,true,"Error filling layout fields: ");
	    		$data = $this->db->fetchByAssoc($result);
				
				//$this->error_check($data, new Press);
				if (!is_null($data)) {
					$pressmachine_id = $data['pressmachine_id'];//<----
				}
				else{
					$this->error_check("LBL_NO_MACHINE_SELECTED_FORMAT", "Press", true);
				}
			
	    		//TO DO: Change Logic 
	    		
	    		//rate selection
				if (!empty($selected_rate) && !is_null($selected_rate)){
		        	$rate = ' AND id="'.$selected_rate.'"';
				}
		        else { 
		        	$rate = " AND paperwaste.default='on' ";
		        }
				
				$color_num = $colors['color_side_a'] + $colors['color_side_b']; //<----
	    		$query = "SELECT id,name, step_amount, setup_waste_per_plate FROM paperwaste WHERE deleted=0 AND active='on' AND pressmachine_id='$pressmachine_id' AND type='Press' $rate ";
				$result = $this->db->query($query,true,"Error filling layout fields: ");
	    		$data = $this->db->fetchByAssoc($result);//<---- id, step_amount
	    		
	    		if (is_null($data)){
	    			$this->error_check("LBL_PRESS_PAPERWASTE_ERR", "Paperwaste");	
	    		} 
				elseif (!is_null($data)) {
					$data_fields = $this->multiarray_keys($data);
					for ($k = 0; $k < count($data_fields); $k++) {
						$dfield = $data_fields[$i];
						if ($data[$dfield] == NULL){
							$this->error_check("LBL_".$dfield.'_PRESS_PAPERWASTE_ERR', "Paperwaste");
						}
					}
					$paperwaste_id = $data['id'];//<----
					$paperwaste_name = $data['name'];
	    			$step_amount = $data['step_amount'];
	    			$setup_waste_per_plate = $data['setup_waste_per_plate'];
				
					$presswaste_fields = array("impressions_number", "base_waste", "step_waste");
					$presswaste_query_fields = " impressions_number, base_waste, step_waste ";
					$presswaste_where = " paperwaste_id='$paperwaste_id' ";
					$order_by = "ORDER BY impressions_number ASC ";
					
					// GET PRESS PAPERWASTE
					$paperwaste = $this->getComponentListData($presswaste_fields,$presswaste_query_fields,"paperwasteline",$presswaste_where,false,$order_by);
					
					if (($layout[$i]['run_style'] == 2) || ($layout[$i]['run_style'] == 3)){
						$layout[$i]['presswaste_amount'] = round($colors['color_side_a'] * $layout[$i]['number_lots'] * $setup_waste_per_plate*1.5);	
						if($quantity>1000){
							$layout[$i]['presswaste_amount'] = $layout[$i]['presswaste_amount'] + round($this->getWaste($paperwaste, $layout[$i]['clean_quantity_qp'], $step_amount));
						}
					}
					else{
						$layout[$i]['presswaste_amount'] = round($color_num * $layout[$i]['number_lots']*$setup_waste_per_plate);
						if($quantity>1000){
							$layout[$i]['presswaste_amount'] = $layout[$i]['presswaste_amount'] + round($this->getWaste($paperwaste, $layout[$i]['clean_quantity_qp'], $step_amount));
						}
					} 
				    $presswaste_amount = $presswaste_amount + $layout[$i]['presswaste_amount'];//$color_num*$setup_waste_per_plate + $this->getWaste($paperwaste, $layout[$i]['clean_quantity_qp'], $step_amount);
					
				}
			    // GET OPERATIONS PAPERWASTE
				$operationlist = $this->getComponentListData($fields = array("operation_id", "operation_name"),"operation_id, operation_name","estimateoperations","component_id='$componentid'");
				
	            $operation = array(); 
				for ($p=0; $p < count($operationlist);$p++){
					$operation_id = $operationlist[$p]['operation_id'];
					$operation_name = $operationlist[$p]['operation_name'];
					
					$query = "SELECT id,step_amount FROM paperwaste WHERE deleted=0 AND active='on' AND operation_id='$operation_id' ";
					$result = $this->db->query($query,true,"Error filling layout fields: ");
		    		$data = $this->db->fetchByAssoc($result);//<---- id, step_amount
		    		
		    		//Error Checkup
		    		//$this->error_check($data, new Paperwaste);
		    		if (!is_null($data)) {
						
					
			    		$op_paperwaste_id = $data['id'];//<----	
						$op_step_amount = $data['step_amount'];
						
						$op_presswaste_fields = array("impressions_number", "base_waste", "step_waste");
						$op_presswaste_query_fields = " impressions_number, base_waste, step_waste ";
						$op_presswaste_where = " paperwaste_id='$op_paperwaste_id' ";
						$order_by = "ORDER BY impressions_number ASC ";
				
						$op_paperwaste = $this->getComponentListData($op_presswaste_fields,$op_presswaste_query_fields,"paperwasteline",$op_presswaste_where, $order_by);
						
						$operationwaste = $layout[$i]['number_lots'] * round($this->getWaste($op_paperwaste,$layout[$i]['quantity'],$op_step_amount));
					  
						$operationwaste_amount = $operationwaste_amount + $operationwaste;
						$count = count($operationwastelist);
		                $operation_inserted = false; 
		                if ($count>0){
							for ($k=0; $k < $count;$k++){
		                        if ($operation_inserted==false){ 
								    if($operationwastelist[$k]['id'] == $operation_id){
									    $operationwastelist[$k]['paperwaste'] = $operationwastelist[$k]['paperwaste'] + $operationwaste;
		                                $operation_inserted=true;	
								    }
		                            
		                        }
							}
		                    if ($operation_inserted==false){
		                           
		                                $operation['id'] = $operation_id;
		                                $operation['name'] = $operation_name;
		                                $operation['paperwaste'] = $operationwaste;
		                                $operationwastelist[] = $operation;
		                                $operation_inserted=true;
		                                //continue;
		                            }
						}
		                else{
		                     $operation['id'] = $operation_id;
		                     $operation['name'] = $operation_name;
		                     $operation['paperwaste'] = $operationwaste;
		                     $operationwastelist[] = $operation;
		                       
		                }
		    		}
				}
				
				$paperestimate_html = $paperestimate_html.'<tr>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="lots_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_lots'].'" /></span sugar="slot"></td>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="unites_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_units'].'" /></span sugar="slot"></td>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="run_style_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$app_list_strings['layout_type_options'][$layout[$i]['run_style']].'" /></span sugar="slot"></td>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="qunatity_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['quantity'].'" /></span sugar="slot"></td>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="clean_quantity_qp_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['clean_quantity_qp'].'" /></span sugar="slot"></td>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="presswaste_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['presswaste_amount'].'" /></span sugar="slot"></td>';
	            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="52%" ></td>';
	            $paperestimate_html = $paperestimate_html.'</tr>';
				
				if ($pdf == true){
					$layout_line_pdf = array();
					$layout_line_pdf['lots_number'] = $layout[$i]['number_lots'];
					$layout_line_pdf['unites_number'] = $layout[$i]['number_units'];
					$layout_line_pdf['run_style'] = $app_list_strings['layout_type_options'][$layout[$i]['run_style']];
					$layout_line_pdf['qunatity'] = $layout[$i]['quantity'];
					$layout_line_pdf['clean_quantity_qp'] = $layout[$i]['clean_quantity_qp'];
					$layout_line_pdf['presswaste'] = $layout[$i]['presswaste_amount'];
					
					$layout_pdf[] = $layout_line_pdf;
				}
					
			
			}
		}
		

        for ($i=0; $i<count($operationwastelist); $i++){
			$operations_html = $operations_html.'<tr>';
	        $operations_html = $operations_html.'<td  style="background:inherit;"  class=tabDetailViewDF ><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="operation_name_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$operationwastelist[$i]['name'].':" /></span sugar="slot"></td>';
		    $operations_html = $operations_html.'<td  style="background:inherit;"  class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="operation_waste_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$operationwastelist[$i]['paperwaste'].'" /></span sugar="slot"></td>';
		    //$operations_html = $operations_html.'<td  style="background:inherit;" width="84%" ></td>';
		    $operations_html = $operations_html.'</tr>';
		    
		    if ($pdf == true){
		    	$operationwaste_line_pdf = array();
		    	$operationwaste_line_pdf['name'] = $operationwastelist[$i]['name'];
		    	$operationwaste_line_pdf['paperwaste'] = $operationwastelist[$i]['paperwaste'];
		    	$operationwaste_pdf[] = $operationwaste_line_pdf;
		    }
		}     
		
		$subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<tr>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF colspan=4 align=right >'.$mod_strings['LBL_SUBTOTAL_CLEANQTY_PRESS'].'</td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="subtotal_clean_qty" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$clean_quantity_qp.'" /></span sugar="slot"></td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="subtotal_presswaste" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$presswaste_amount.'" /></span sugar="slot"></td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="52%" ></td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'</tr>';
        
        if ($pdf == true){
        	$subtotal_pdf = array();
        	$subtotal_pdf['clean_quantity_qp'] = $clean_quantity_qp;
        	$subtotal_pdf['presswaste_amount'] = $presswaste_amount;
        	
        }
                                                                        
		
		
		if(is_null($this->errors) || empty($this->errors)){
				
			$paperEstimate['operations_html'] = $operations_html;
			$paperEstimate['paperestimate_html'] = $paperestimate_html.$subtotal_cleantqty_press_html;
			
			$paperEstimate['clean_quantity_qp'] = $clean_quantity_qp;
			$paperEstimate['paperwaste_qp'] = $operationwaste_amount + $presswaste_amount;
			$paperEstimate['qp'] = $paperEstimate['paperwaste_qp'] + $clean_quantity_qp;
			$paperEstimate['client_paper'] = $client_paper;
			$paperEstimate['sheets_qp'] = $sheets_qp['sheets_qp'];
			$paperEstimate['pages'] = ceil($paperEstimate['qp']/$sheets_qp['sheets_qp']);
			
			if (isset($_REQUEST['paper_singleprice'])){
				$press_format_and_price['price'] = $_REQUEST['paper_singleprice'];
					
			}
			$paperEstimate['paper_singleprice'] = $press_format_and_price['price'];
			$paperEstimate['total_paper_price'] = ceil($paperEstimate['paper_singleprice']*$paperEstimate['pages']);
			$paperEstimate['press_paperwaste_rate']['id'] = $paperwaste_id;
			$paperEstimate['press_paperwaste_rate']['name'] = $paperwaste_name;
			$paperEstimate['press_paperwaste_rate']['machine'] = $pressmachine_id;
			
			if ($pdf == true){
				$paper = array();
				$paper['layout'] = $layout_pdf;
				$paper['operationwaste'] = $operationwaste_pdf;
				$paper['subtotal'] = $subtotal_pdf;
				$paper['clean_quantity_qp'] = $clean_quantity_qp;
				$paper['paperwaste_qp'] = $operationwaste_amount + $presswaste_amount;
				$paper['qp'] = $paperEstimate['paperwaste_qp'] + $clean_quantity_qp;
				$paper['client_paper'] = $client_paper;
				$paper['sheets_qp'] = $sheets_qp['sheets_qp'];
				$paper['pages'] = ceil($paperEstimate['qp']/$sheets_qp['sheets_qp']);
				$paper['paper_singleprice'] = $press_format_and_price['price'];
				$paper['total_paper_price'] = ceil($paperEstimate['paper_singleprice']*$paperEstimate['pages']);
				
				return $paper;
					
			}
			elseif ($auto == true){
				return $paperEstimate['total_paper_price'];
			}
			else{
				return $paperEstimate;
			}
		}
		
		else{
			return null;
		}
    
	
    
    }
    
    
  //------------------------------------------------------------------------------//  
    function pressEstimate($componentid, $selected_rate, $auto=false, $pdf = false){
    	global $app_list_strings, $mod_strings;
    	if (!is_null($componentid)) {
				
			$quantity_arr = $this->getComponentQuantity($componentid);
			//Error checkup
			
			if (!is_null($quantity_arr)){
				$quantity = $quantity_arr['quantity'];
			}
			else{
				$this->error_check("LBL_COMPONENT_QUANTITY_ERR", "EstimateComponents");	
			}
	    
	        $colors = $this->getPressColors($componentid);
	        $layout = $this->getLayout($componentid, $quantity);
	        if (!is_null($colors) && !is_null($layout)) {
				
				$layout_html= "";
		        $total_side_html = "";
		        
		        $total_price_side = array( "totalprice_side0" => 0 , "totalprice_side1" => 0);
		        
		        for ($i=0;$i<count($layout); $i++){
		            $layout_id = $layout[$i]['id'];//<----
		            
		            $query = "SELECT press_id FROM pressline WHERE deleted=0 AND layout_id='$layout_id' ";
		            $result = $this->db->query($query,true,"Error filling layout fields: ");
		            $data = $this->db->fetchByAssoc($result);
		            $press_id = $data['press_id'];//<----
		            
		            $query = "SELECT pressmachine_id FROM press WHERE deleted=0 AND id='$press_id' ";
		            $result = $this->db->query($query,true,"Error filling layout fields: ");
		            $data = $this->db->fetchByAssoc($result);
		            $pressmachine_id = $data['pressmachine_id'];
		            
		            //$color_num = $colors['color_side_a'] + $colors['color_side_b']; //<----
		           
		            for ($l=0; $l<count($colors); $l++){
		                $fields = array("id", "step_amount", "name");
		                if ($colors[$l] == 0) continue;
		                //rate selection
		                if (!empty($selected_rate[$l]) && !is_null($selected_rate[$l])){
		                	$rate = ' AND id="'.$selected_rate[$l].'"';

		                }
		                else { 
		                	
		               		$rate = " AND presspricelist.default='on' ";
		               		 
		                }
		                
		                $data = $this->custQuery("id,name,step_amount","presspricelist","deleted=0 AND active='on' AND pressmachine_id='$pressmachine_id' AND inks_number=$colors[$l] $rate ",$fields);
		                $presspricelist_id = $data['id'];//<----
		                $step_amount = $data['step_amount'];
		                $presspricelist_name = $data['name'];
		                
		                $presspricelist_fields = array("impressions_number", "base_price", "step_price");
		                $presspricelist_query_fields = " impressions_number, base_price, step_price ";
		                $presspricelist_where = " pricelist_id='$presspricelist_id' ";
		                $order_by = "ORDER BY impressions_number ASC ";
		        
		                //0 - side a ; 1 - side b
		                $presspricelist = $this->getComponentListData($presspricelist_fields,$presspricelist_query_fields,"pricelistlines",$presspricelist_where,false, $order_by);
		                if (($layout[$i]['run_style'] == 2) || ($layout[$i]['run_style'] == 3)){
		                	$layout[$i]['singleprice_side'.$l] = $this->getPrice($presspricelist, $layout[$i]['quantity'], $step_amount);
		                	$layout[$i]['price_side'.$l] = $layout[$i]['singleprice_side'.$l] * $layout[$i]['number_lots'];
		               		$layout[$i]['singleprice_side1'] = 0;
		                	$layout[$i]['price_side1'] = 0;
		               	
		                }
		                else{
		           	    	$layout[$i]['singleprice_side'.$l] = $this->getPrice($presspricelist, $layout[$i]['quantity'], $step_amount);
		                	$layout[$i]['price_side'.$l] = $layout[$i]['singleprice_side'.$l] * $layout[$i]['number_lots'];
		                }
		                $total_price_side['totalprice_side'.$l] = $total_price_side['totalprice_side'.$l] + $layout[$i]['price_side'.$l];
		                
		                // Output for rates
		                $pressEstimate['press_rate'][$l]['id'] = $presspricelist_id;
						$pressEstimate['press_rate'][$l]['name'] = $presspricelist_name;
						$pressEstimate['press_rate'][$l]['colors'] = $colors[$l];
						$pressEstimate['press_rate'][$l]['machine'] = $pressmachine_id;
		                
		            }
		        // Start output
		        	if ($layout[$i]['singleprice_side0'] == null){$layout[$i]['singleprice_side0'] = 0;};
		            if ($layout[$i]['singleprice_side1'] == null){$layout[$i]['singleprice_side1'] = 0;};
		            if ($layout[$i]['price_side0'] == null){$layout[$i]['price_side0'] = 0;};
		            if ($layout[$i]['price_side1'] == null){$layout[$i]['price_side1'] = 0;};
		            
		            $layout_html = $layout_html.'<tr>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_lots'].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="unites_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_units'].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="run_style_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$app_list_strings['layout_type_options'][$layout[$i]['run_style']].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="qunatity_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['quantity'].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="preparations_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_singleprice_sidea_'.$i.'" style="background:inherit; border-style:none;text-align:center" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['singleprice_side0'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_singleprice_sideb_'.$i.'" style="background:inherit; border-style:none;text-align:center" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['singleprice_side1'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
		        	$layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_price_sidea_'.$i.'" style="background:inherit; border-style:none;text-align:center" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['price_side0'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_price_sideb_'.$i.'" style="background:inherit; border-style:none;text-align:center" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['price_side1'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
		            $layout_html = $layout_html.'<td   style="background:inherit;" width="28%" ></td>';
		            $layout_html = $layout_html.'</tr>';
		            
		            if( $pdf == true){
		            	$layout_line_pdf = array();
		            	$layout_line_pdf['number_lots'] = $layout[$i]['number_lots'];
		            	$layout_line_pdf['number_units'] = $layout[$i]['number_units'];
		            	$layout_line_pdf['run_style'] = $app_list_strings['layout_type_options'][$layout[$i]['run_style']];
		            	$layout_line_pdf['quantity'] = $layout[$i]['quantity'];
		            	$layout_line_pdf['preparations'] = '';
		            	$layout_line_pdf['singleprice_side0'] = $layout[$i]['singleprice_side0'];
		            	$layout_line_pdf['singleprice_side1'] = $layout[$i]['singleprice_side1'];
		            	$layout_line_pdf['price_side0'] = $layout[$i]['price_side0'];
		            	$layout_line_pdf['price_side1'] = $layout[$i]['price_side1'];
		            	
		            	$layout_pdf[] = $layout_line_pdf;
		            	
		            }
		            
		        }
		        //Films Cash back
		        $cash_back = 0;
		        if (isset($_REQUEST['film_cashback']) && !empty($_REQUEST['film_cashback'])){
			        $query = "SELECT plate_price FROM pressmachine WHERE deleted=0 AND id='$pressmachine_id' ";
			        $result = $this->db->query($query,true,"Error filling layout fields: ");
			        $data = $this->db->fetchByAssoc($result);
			        $cash_back = $data['plate_price']* $_REQUEST['film_cashback'];  
				}
				
		        $total_side_html = $total_side_html.'<tr>';
		        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF colspan=7 align=right >'.$mod_strings['LBL_TOTAL_SIDE'].'</td>';
		        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="press_total_price_sidea" style="background:inherit; border-style:none;text-align:center" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$total_price_side['totalprice_side0'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
		        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="press_total_price_sideb" style="background:inherit; border-style:none;text-align:center" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$total_price_side['totalprice_side1'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
		        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="28%" ></td>';
		        $total_side_html = $total_side_html.'</tr>';
			    //end output
			    
			    if( $pdf == true){
			    	$total_price_pdf = array();
			    	$total_price_pdf['totalprice_side0'] = $total_price_side['totalprice_side0'];
			    	$total_price_pdf['totalprice_side1'] = $total_price_side['totalprice_side1']; 	
			    }
			    
		        $pressEstimate['layout_html'] = $layout_html.$total_side_html;
		        $pressEstimate['total_price'] = ($total_price_side['totalprice_side0'] + $total_price_side['totalprice_side1']) - $cash_back;
				
				
				if( $pdf == true){
					$press = array();
					$press['layout'] = $layout_pdf;
					$press['total_price'] = $total_price_pdf;
					
					return $press;		
				}
				elseif ($auto == true){
					return 	$pressEstimate['total_price'];
				}
				else{
					return $pressEstimate;
				}
	        }
    	
    	}
    	else{
    		return null;
    	}
    }
    
     //------------------------------------------------------------------------------//  
     
     function operationsEstimate($componentid,$is_detail_view=false, $pdf = false){
     	global $mod_strings;
     	if (!is_null($componentid)) {
	     	
	     	$quantity_arr = $this->getComponentQuantity($componentid);
			//Error checkup
			if (!is_null($quantity_arr)){
				$quantity = $quantity_arr['quantity'];
			}
			else{
				$this->error_check("LBL_COMPONENT_QUANTITY_ERR", "EstimateComponents");	
			}
			
			$layout = $this->getLayout($componentid, $quantity);
	        if (!is_null($layout)) {
			
		        $lots = 0;
		        $operatio_html= "";
		        $total_price = 0;
		        if ($is_detail_view == true){
		        	$style = 'style="background:inherit; border-style:none;text-align:center" readOnly';
		        }
		        else{
		        	$style = 'style="text-align:center;"';	
		        }
		        
		        
		        for ($i=0;$i < count($layout); $i++){
		        	$lots = $lots + $layout[$i]['number_lots'];	
		        }
		        
		        $operation_fields = array("operation_id", "operations_count");
		        $operation_query_fields = " operation_id, operations_count ";
		        $operation_where = " component_id='$componentid' ";
		        
		        $operationslist = $this->getComponentListData($operation_fields,$operation_query_fields,"estimateoperations",$operation_where);
				//$this->error_check($operationslist, new ProductOperation);
		        
		        for ($i=0; $i<count($operationslist); $i++){
		        	$operation = $this->custQuery(" sp,tir, kol, name", "operations",'id="'.$operationslist[$i]['operation_id'].'"', $fields = array("sp","tir", "kol", "name") );
		        	
		        	if(is_null($operation)){
		        		$this->error_check("LBL_NO_SELECTED_OPERATION", "Operations");	
		        	}
		        	
		        	$datavs = $this->multiarray_keys($operation);
		        	for ($k = 0; $k < count($data_fields); $k++) {
						$dfield = $data_fields[$i];
						if ($data[$dfield] == NULL){
							$this->error_check("LBL_".$dfield.'_PRESS_OPERATIONS_ERR', "Operations");
						}
					}
					
		        	$operation['price'] = 0;
		        	$operation['count'] = $operationslist[$i]['operations_count'];
		            
		            //Replace "," with '.' because "." works with multiplying nymbers.
		            /* $comma = ',';
		            $decemical_dot = '.';*/
		            $sigle_price = $operation['sp'];
		        	//str_replace($comma,$decemical_dot,$sigle_price);
		            
		        	if($operation['kol'] == "on"){
		        		$operation['kol'] = $lots;
		        	}
		        	else{
		        		$operation['kol'] = 0;
		        	}
		        	
		        	if($operation['tir'] == "on"){
		        		$operation['tir'] = $quantity;
		        	}
		        	else{
		        		$operation['tir'] = 0;
		        	}
		        	
		        	//Calculate operation price
		        	if (($operation['tir']>0) && ($operation['kol']>0)){
		        		
		        	   	$operation['price'] = $sigle_price*$operation['count']*$operation['tir']*$operation['kol'];
		        	}
		        	elseif (($operation['tir']==0) && ($operation['kol']>0)){
		        		
		        	   	$operation['price'] = $sigle_price*$operation['count']*$operation['kol'];
		        	}
		        	elseif (($operation['tir']>0) && ($operation['kol']==0)){
		        		
		        	   	$operation['price'] = $sigle_price*$operation['count']*$operation['tir'];
		        	}
		        	else{
		        		$operation['price'] = $sigle_price*$operation['count'];
		        	}
		        	// End Calculate operation price
		        	
		        	$operatio_html = $operatio_html.'<tr>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_name_'.$i.'" '.$style.' border-style:none;text-align:center;" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$operation['name'].'" /></span sugar="slot"></td>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_sp_'.$i.'" '.$style.' size="6" maxlength="50" type="text" value="'.$sigle_price.' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_lots_'.$i.'" '.$style.' size="6" maxlength="50" type="text" value="'.$operation['kol'].'" /></span sugar="slot"></td>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_quantity_'.$i.'" '.$style.' size="6" maxlength="50" type="text" value="'.$operation['tir'].'" /></span sugar="slot"></td>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_count_'.$i.'" '.$style.' size="6" maxlength="50" type="text" value="'.$operation['count'].'" /></span sugar="slot"></td>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_price_'.$i.'" '.$style.' size="6" maxlength="50" type="text" value="'.$operation['price'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
			        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="52%" ></td>';
			        $operatio_html = $operatio_html.'</tr>';
			    	
			        $total_price = $total_price + $operation['price'];
		        	
		        	if( $pdf == true){
		        		$operations_line_pdf = array();
		        		$operations_line_pdf['name'] = $operation['name'];
		        		$operations_line_pdf['sigle_price'] = $sigle_price;
		        		$operations_line_pdf['kol'] = $operation['kol'];
		        		$operations_line_pdf['tir'] = $operation['tir'];
		        		$operations_line_pdf['count'] = $operation['count'];
		        		$operations_line_pdf['price'] = $operation['price'];	
		        		$operations_pdf[] = $operations_line_pdf;
		        		
		        	}
		        }
		     	
		     	if ( $pdf == true){
		     		$operations = array();
		     		$operations['total_price'] = $total_price;
		     		$operations['operations'] = $operations_pdf;
		     		
		     		return $operations;
		     	}
		     	
		        $operationsData['total_price'] = $total_price;
		        $operationsData['html'] = $operatio_html;
		     	return $operationsData;
	        }
	        else{
     			return null;
     		}
     	}
     	else{
     		return null;
     	}
     
     }
     
//------------------------------------------------------------------------------//  
     
     function prepressEstimate($componentid,$is_detail_view=false, $pdf=false){
     	global $mod_strings;
     	$prepress_html= "";
        $total_price = 0;
       
        $format = $this->custQuery(" pressformat_x as x, pressformat_y as y ", "estimates_components",'id="'.$componentid.'"', $fields = array("x","y") );
        //$this->error_check($format, new EstimateComponents);	
        
        
        $prepress_fields = array("rate_id", "type", "count");
        $prepress_query_fields = " rate_id, type, count ";
        $prepress_where = " component_id='$componentid' ";
        
        $prepresslist = $this->getComponentListData($prepress_fields,$prepress_query_fields,"componentprepress",$prepress_where);
		//$this->error_check($prepresslist, new ComponentPrepress);
			
        for ($i=0; $i<count($prepresslist); $i++){
        	
        	if ($prepresslist[$i]['type'] == "ctp"){
        		$table = "rateplate";
        	}
        	else {
        		$table = "ratefilm";
        	}
        	
        	$prepress = $this->custQuery(" price, name", $table,'id="'.$prepresslist[$i]['rate_id'].'" AND size_x='.$format['x'].' AND size_y='.$format['y'].' ', $fields = array("price", "name") );
			
			if ($table == "rateplate"){
				//$this->error_check($prepress, new Rateplate);
				
				$_REQUEST['film_cashback'] = $prepress['count'];
			}
			else{
				//$this->error_check($prepress, new Ratefilm);	
			}
			
        	$prepress['price'] = $prepress['price'] * $prepresslist[$i]['count'];
        	$prepress['count'] = $prepresslist[$i]['count'];
        	$total_price = $total_price + $prepress['price'];
        	
        	$prepress_html = $prepress_html.'<tr>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="18%" class=tabDetailViewDF><span sugar="slot1b"><input name="prepress_name_'.$i.'" style="background:inherit; border-style:none;" readOnly tabindex="1" maxlength="50" type="text" value="'.$prepress['name'].'" /></span sugar="slot"></td>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="prepress_count_'.$i.'" style="background:inherit; border-style:none;" readOnly type="text" value="'.$prepress['count'].'" /></span sugar="slot"></td>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="prepress_price_'.$i.'" style="background:inherit; border-style:none;" readOnly type="text" value="'.$prepress['price'].' '.$mod_strings['LBL_UNITS'].'" /></span sugar="slot"></td>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="66%" ></td>';
	        $prepress_html = $prepress_html.'</tr>';
	        
	        if ( $pdf == true){
	        	$prepress_line_pdf = array();
		        $prepress_line_pdf['name'] = $prepress['name'];
		        $prepress_line_pdf['count'] = $prepress['count'];
		        $prepress_line_pdf['price'] = $prepress['price'];	
		        
		        $prepress_pdf[] = $prepress_line_pdf;
	        }
	    	
	        
        }
     	
     	if ( $pdf == true){
     		$prepress = array();
     		$prepress['total_price'] = $total_price;
     		$prepress['prepress'] = $prepress_pdf;
     		
     		return $prepress;
     		
     		
     	}
     	
        $prepressData['total_price'] = $total_price;
        $prepressData['html'] = $prepress_html;
     	return $prepressData;
     
     }
     
     
     
     function delete_estimate($id){
    	$estimate = new Estimates();
    	$estimate_calc = new EstimateCalc();
    	$component = new EstimateComponents();
    	
    	$query = ' UPDATE '.$component->table_name.' SET status="waiting_estimate" WHERE id="'.$this->component_id.'" ';
    	$this->db->query($query,true,"");
    	
    	$query = ' SELECT parent_id FROM '.$component->table_name.' WHERE id="'.$this->component_id.'" ';
    	$result = $this->db->query($query,true,"");
    	$data = $this->db->fetchByAssoc($result);
    	
    	$query = ' UPDATE '.$estimate->table_name.' SET status="waiting_estimate" WHERE id="'.$data['parent_id'].'" ';
    	$this->db->query($query,true,"");
    	
    	$query = ' UPDATE '.$estimate_calc->table_name.' SET status="outdated" WHERE estimate_id="'.$data['parent_id'].'" ';
    	$this->db->query($query,true,"");
    }
    
    
    function estimate_details($id, $details='details', $update_estimate='update_estimate'){
    	global $current_language, $app_list_strings;
		$object = new ComponentEstimateCalc;
    	
    	$mod_strings = return_module_language($current_language, $object->object_name);
    	$object->retrieve($id);
    	$xtpl = new XTemplate('modules/ComponentEstimateCalc/EstimateDetails.html');
    	$xtpl->assign('MOD', $mod_strings);
    	if ($object->status == "uptodate"){
			/////////////  DETAILS  /////////////
			$prepress = $object->prepressEstimate($object->component_id);	
			$press_rate[] = $object->press_rate_a_id;
			$press_rate[] = $object->press_rate_b_id; 
			$pressestimate = $object->pressEstimate($object->component_id, $press_rate);
			$paperestimate = $object->paperEstimate($object->component_id, $object->paper_rate_id);
			$operations = $object->operationsEstimate($object->component_id, true);
			///Press 
			$xtpl->assign("press_price_lines", $pressestimate['layout_html']);
			///
			
			///Paper & Paperwaste
			$client_paper = $paperestimate['client_paper'];
			$xtpl->assign("paper_singleprice", $paperestimate['paper_singleprice']);
			$xtpl->assign("total_paper", $paperestimate['total_paper_price']);
			$xtpl->assign("clean_quantity_qp", $paperestimate['clean_quantity_qp']);
			$xtpl->assign("paperwaste_qp", $paperestimate['paperwaste_qp']);
			$xtpl->assign("qp", $paperestimate['qp']);
			$xtpl->assign("sheets_qp", $paperestimate['sheets_qp']);
			$xtpl->assign("pages", $paperestimate['pages']);$xtpl->assign("paper_waste_rows", $paperestimate['paperestimate_html']);
			$xtpl->assign("paper_operation_waste_rows", $paperestimate['operations_html']);
			$xtpl->assign("client_paper", $app_list_strings['client_paper_options'][$client_paper]);		
			///
			
			
			///Prepress
			$xtpl->assign("prepress_lines", $prepress['html']);
			///
			
			///Operations
			$xtpl->assign("operation_lines", $operations['html']);
			///
			
			$xtpl->assign("details", $details);
			////////////////////////////////////	
		}
		else{
			$xtpl->assign("details", $update_estimate);
		}

		$xtpl->parse('details');
		$xtpl->out('details');
		
    }
     
	
    
    
}
?>