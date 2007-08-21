<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Data access layer for the componentestimate table
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

/**
 *
 */
class ComponentEstimate extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;



	var $name;
	
	var $total_paper;
	var $total_press;
	var $total_prepress;
	var $total_operations;
	
	var $component_name;
	var $component_id;
	var $product_name;
	var $product_id;
	
	var $description;
	var $deleted;

	// related information
	var $assigned_user_name;
	var $modified_by_name;
	var $created_by_name;




	var $account_id;
	var $contact_id;
	var $opportunity_id;



	var $email_id;

	// calculated information
	var $total_estimated_effort;
	var $total_actual_effort;

	var $object_name = 'ComponentEstimate';
	var $module_dir = 'ComponentEstimate';
	var $new_schema = true;
	var $table_name = 'componentestimate';

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
	function ComponentEstimate()
	{
		parent::SugarBean();












	}

	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, componentestimate.*";

		if($custom_join){ $query .=  $custom_join['select']; }




		$query .= " FROM componentestimate ";




          $query .= "LEFT JOIN users ON componentestimate.assigned_user_id=users.id ";
          //$query .= "LEFT JOIN componentestimate_relation ON componentestimate.id=componentestimate_relation.componentestimate_id ";



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
		array_push($where_clauses, "componentestimate.name LIKE '%$the_query_string%'");

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
				componentestimate.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM componentestimate ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON componentestimate.assigned_user_id=users.id ";




        $where_auto = " componentestimate.deleted=0 ";

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
    	$query = " select quantity FROM products_components where deleted=0 and id='$id' ";
    	$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		
		return $data['quantity'];	
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
    	$query = " SELECT color_side_a, color_side_b FROM products_components WHERE deleted=0 and id='$id' ";
    	$result = $this->db->query($query,true,"Error filling layout fields: ");
    	$data = $this->db->fetchByAssoc($result);
    	
    	return $data;
    
    }
    
    function getPressColors($id){
        $colors = array();
        $query = " SELECT color_side_a, color_side_b FROM products_components WHERE deleted=0 and id='$id' ";
        $result = $this->db->query($query,true,"Error filling layout fields: ");
        $data = $this->db->fetchByAssoc($result);
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
        foreach($presspricelist as $res){
    		$sortData[] = $res['impressions_number'];
    	}
    
   		array_multisort($sortData, SORT_ASC, $presspricelist);
    	
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
        $layout_where = " product_component_id = '$componentid' ";
        
        $layout = $this->getComponentListData($layout_fields,$layout_query_fields,"layout",$layout_where,true);
       
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
   function error_check($data,$labels){
   	foreach ($data as $value){
   		
   	}
   }
   	
   } 
  //--------------------------------------------------------------------------//  
    function paperEstimate($componentid){
		global $app_list_strings, $mod_strings;
    	$paperEstimate = array();
		
		$layout_fields = array("id", "number_lots", "number_units", "run_style");
		$layout_query_fields = " id, number_lots, number_units, run_style ";
		$layout_where = " product_component_id = '$componentid' ";
		
		$query = "SELECT client_paper FROM products_components WHERE deleted=0 AND id='$componentid' ";
		$result = $this->db->query($query,true,"Error filling layout fields: ");
    	$data = $this->db->fetchByAssoc($result);
		$client_paper = $data['client_paper'];
		
		$query_fields = " paperid, press_size_x, press_size_y, price ";
		$where = " id='$componentid' ";
		$fields = array("paperid", "press_size_x", "press_size_y", "price");		
		$press_format_and_price = $this->custQuery($query_fields, "products_components", $where, $fields);
		
		$query_fields = " size_h, size_w ";
		$where = ' id="'.$press_format_and_price['paperid'].'" ';
		$fields = array("size_h", "size_w");		
		$paper_format = $this->custQuery($query_fields, "paper", $where, $fields);
		
		//Calculate qp sheets in sheet
		$sheets_qp = array();
		$sheets_qp['a1'] = floor($paper_format['size_h']/$press_format_and_price['press_size_x']);
		$sheets_qp['b1'] = floor($paper_format['size_w']/$press_format_and_price['press_size_y']);
		$sheets_qp['a2'] = floor($paper_format['size_h']/$press_format_and_price['press_size_y']);
		$sheets_qp['b2'] = floor($paper_format['size_w']/$press_format_and_price['press_size_x']);
		
		if($sheets_qp['a1']<$sheets_qp['b1']){
			$sheets_qp['a'] = $sheets_qp['b1'];
		}
		else {
			$sheets_qp['a'] = $sheets_qp['a1'];
		}
    	
		if($sheets_qp['a2']<$sheets_qp['b2']){
			$sheets_qp['b'] = $sheets_qp['b2'];
		}
		else {
			$sheets_qp['b'] = $sheets_qp['a2'];
		}
		$sheets_qp['sheets_qp'] = $sheets_qp['a']*$sheets_qp['b'];

		$quantity = $this->getComponentQuantity($componentid);
		$layout = $this->getLayout($componentid,$quantity);
		$colors = $this->getComponentColors($componentid);
		
		$clean_quantity_qp = 0; // total cleant quantity
		$presswaste_amount = 0; // total presswaste amaunt
		$operationwaste_amount = 0;// total operation waste
		$paperestimate_html = "";//Output Paperwaste
		$subtotal_cleantqty_press_html = "";//Output total clean quantity_qp, total presswaste
		$operations_html = "";//Output Operations
		$operationwastelist = array(); 
		for ($i=0; $i < count($layout); $i++){
		
			
			if (($layout[$i]['run_style'] == 3) || ($layout[$i]['run_style'] == 2)){
				$layout[$i]['clean_quantity_qp'] = ($layout[$i]['number_lots'])*($layout[$i]['quantity']/2);
				$clean_quantity_qp = $clean_quantity_qp + (($layout[$i]['number_lots'])*($layout[$i]['quantity']/2));
			}
			
			else{
				$layout[$i]['clean_quantity_qp'] = $layout[$i]['quantity']*$layout[$i]['number_lots'];
				$clean_quantity_qp = $clean_quantity_qp + ($layout[$i]['quantity']*$layout[$i]['number_lots']);		
			}
			
			
			
			$layout_id = $layout[$i]['id'];//<----
			
			$query = "SELECT press_id FROM pressline WHERE deleted=0 AND component_id='$componentid' ";
			$result = $this->db->query($query,true,"Error filling layout fields: ");
    		$data = $this->db->fetchByAssoc($result);
			$press_id = $data['press_id'];//<----
			
    		$query = "SELECT pressmachine_id FROM press WHERE deleted=0 AND id='$press_id' ";
			$result = $this->db->query($query,true,"Error filling layout fields: ");
    		$data = $this->db->fetchByAssoc($result);
			$pressmachine_id = $data['pressmachine_id'];//<----
    		
			$color_num = $colors['color_side_a'] + $colors['color_side_b']; //<----
    		$query = "SELECT id,step_amount FROM paperwaste WHERE deleted=0 AND active='on' AND pressmachine_id='$pressmachine_id' AND setup_waste_per_plate=$color_num ";
			$result = $this->db->query($query,true,"Error filling layout fields: ");
    		$data = $this->db->fetchByAssoc($result);//<---- id, step_amount
    		
    		if (($data == null) || empty($data) || !isset($data)){
    			$paperEstimate['Error'] = true;
    			$paperEstimate['Msg'] = $mod_strings['LBL_NO_PAPERWASTE_RATE'];
    			$paperEstimate['return_module'] = "Paperwaste";
    			return $paperEstimate;
    		}
    			
    		
    		
    		$paperwaste_id = $data['id'];//<----
    		$step_amount = $data['step_amount'];
			
			$presswaste_fields = array("impressions_number", "base_waste", "step_waste");
			$presswaste_query_fields = " impressions_number, base_waste, step_waste ";
			$presswaste_where = " paperwaste_id='$paperwaste_id' ";
			$order_by = "ORDER BY impressions_number ASC ";
			
			// GET PRESS PAPERWASTE
			$paperwaste = $this->getComponentListData($presswaste_fields,$presswaste_query_fields,"paperwasteline",$presswaste_where,false,$order_by);
			
			$layout[$i]['presswaste_amount'] = $color_num * $this->getWaste($paperwaste, $layout[$i]['clean_quantity_qp'], $step_amount);
		    $presswaste_amount = $presswaste_amount + $color_num*$this->getWaste($paperwaste, $layout[$i]['clean_quantity_qp'], $step_amount);
			
		    
		    // GET OPERATIONS PAPERWASTE
			$operationlist = $this->getComponentListData($fields = array("operation_id", "operation_name"),"operation_id, operation_name","productoperations","component_id='$componentid'");
			
            $operation = array(); 
			for ($p=0; $p < count($operationlist);$p++){
				$operation_id = $operationlist[$p]['operation_id'];
				$operation_name = $operationlist[$p]['operation_name'];
				
				$query = "SELECT id,step_amount FROM paperwaste WHERE deleted=0 AND active='on' AND operation_id='$operation_id' ";
				$result = $this->db->query($query,true,"Error filling layout fields: ");
	    		$data = $this->db->fetchByAssoc($result);//<---- id, step_amount
	    		$op_paperwaste_id = $data['id'];//<----	
				$op_step_amount = $data['step_amount'];
				
				$op_presswaste_fields = array("impressions_number", "base_waste", "step_waste");
				$op_presswaste_query_fields = " impressions_number, base_waste, step_waste ";
				$op_presswaste_where = " paperwaste_id='$op_paperwaste_id' ";
		
				$op_paperwaste = $this->getComponentListData($op_presswaste_fields,$op_presswaste_query_fields,"paperwasteline",$op_presswaste_where);
				
				$operationwaste = $this->getWaste($op_paperwaste,$layout[$i]['quantity'],$op_step_amount);
			  
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
			
			$paperestimate_html = $paperestimate_html.'<tr>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="lots_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_lots'].'" /></span sugar="slot"></td>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="unites_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_units'].'" /></span sugar="slot"></td>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="run_style_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$app_list_strings['layout_type_options'][$layout[$i]['run_style']].'" /></span sugar="slot"></td>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="qunatity_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['quantity'].'" /></span sugar="slot"></td>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="clean_quantity_qp_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['clean_quantity_qp'].'" /></span sugar="slot"></td>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="presswaste_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['presswaste_amount'].'" /></span sugar="slot"></td>';
            $paperestimate_html = $paperestimate_html.'<td   style="background:inherit;" width="52%" ></td>';
            $paperestimate_html = $paperestimate_html.'</tr>';
		
				
		
		}
		

        for ($i=0; $i<count($operationwastelist); $i++){
			$operations_html = $operations_html.'<tr>';
	        $operations_html = $operations_html.'<td  style="background:inherit;"  class=tabDetailViewDF ><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="operation_name_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$operationwastelist[$i]['name'].':" /></span sugar="slot"></td>';
		    $operations_html = $operations_html.'<td  style="background:inherit;"  class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="operation_waste_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$operationwastelist[$i]['paperwaste'].'" /></span sugar="slot"></td>';
		    //$operations_html = $operations_html.'<td  style="background:inherit;" width="84%" ></td>';
		    $operations_html = $operations_html.'</tr>';
		}     
		
		$subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<tr>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF colspan=4 align=right >'.$mod_strings['LBL_SUBTOTAL_CLEANQTY_PRESS'].'</td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="subtotal_clean_qty" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$clean_quantity_qp.'" /></span sugar="slot"></td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="subtotal_presswaste" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$presswaste_amount.'" /></span sugar="slot"></td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'<td  style="background:inherit;" width="52%" ></td>';
        $subtotal_cleantqty_press_html = $subtotal_cleantqty_press_html.'</tr>';
        
                                                                        
		
		
		
				
		$paperEstimate['operations_html'] = $operations_html;
		$paperEstimate['paperestimate_html'] = $paperestimate_html.$subtotal_cleantqty_press_html;
		
		$paperEstimate['clean_quantity_qp'] = $clean_quantity_qp;
		$paperEstimate['paperwaste_qp'] = $operationwaste_amount + $presswaste_amount;
		$paperEstimate['qp'] = $paperEstimate['paperwaste_qp'] + $clean_quantity_qp;
		$paperEstimate['client_paper'] = $client_paper;
		$paperEstimate['sheets_qp'] = $sheets_qp['sheets_qp'];
		$paperEstimate['pages'] = ceil($paperEstimate['qp']/$sheets_qp['sheets_qp']);
		$paperEstimate['paper_sigleprice'] = $press_format_and_price['price'];
		$paperEstimate['total_paper_price'] = ceil($paperEstimate['paper_sigleprice']*$paperEstimate['pages']);
		return $paperEstimate;
    
	
    
    }
    
    
  //------------------------------------------------------------------------------//  
    function pressEstimate($componentid){
    	global $app_list_strings, $mod_strings;
    	
        $quantity = $this->getComponentQuantity($componentid); 
        $colors = $this->getPressColors($componentid);
        $layout = $this->getLayout($componentid, $quantity);
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
                $fields = array("id", "step_amount");
                $data = $this->custQuery("id,step_amount","presspricelist","deleted=0 AND active='on' AND pressmachine_id='$pressmachine_id' AND inks_number=$colors[$l] ",$fields);
                $presspricelist_id = $data['id'];//<----
                $step_amount = $data['step_amount'];
                
                $presspricelist_fields = array("impressions_number", "base_price", "step_price");
                $presspricelist_query_fields = " impressions_number, base_price, step_price ";
                $presspricelist_where = " pricelist_id='$presspricelist_id' ";
        
                //0 - side a ; 1 - side b
                $presspricelist = $this->getComponentListData($presspricelist_fields,$presspricelist_query_fields,"pricelistlines",$presspricelist_where);
                if (($layout[$i]['run_style'] == 2) || ($layout[$i]['run_style'] == 3)){
                	$layout[$i]['singleprice_side'.$l] = $this->getPrice($presspricelist, $quantity, $step_amount);
                	$layout[$i]['price_side'.$l] = $layout[$i]['singleprice_side'.$l] * $layout[$i]['number_lots'];
               		$layout[$i]['singleprice_side1'] = 0;
                	$layout[$i]['price_side1'] = 0;
               	
                }
                else{
           	    	$layout[$i]['singleprice_side'.$l] = $this->getPrice($presspricelist, $quantity, $step_amount);
                	$layout[$i]['price_side'.$l] = $layout[$i]['singleprice_side'.$l] * $layout[$i]['number_lots'];
                }
                $total_price_side['totalprice_side'.$l] = $total_price_side['totalprice_side'.$l] + $layout[$i]['price_side'.$l];
                
                
            }
        	
            $layout_html = $layout_html.'<tr>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center;" readOnly name="lots_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_lots'].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="unites_number_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['number_units'].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="run_style_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$app_list_strings['layout_type_options'][$layout[$i]['run_style']].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="qunatity_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['quantity'].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input style="background:inherit; border-style:none;text-align:center" readOnly name="preparations_'.$i.'" tabindex="1" size="6" maxlength="50" type="text" value="" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_singleprice_sidea_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['singleprice_side0'].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_singleprice_sideb_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['singleprice_side1'].'" /></span sugar="slot"></td>';
        	$layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_price_sidea_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['price_side0'].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="8%" class=tabDetailViewDF><span sugar="slot1b"><input name="press_price_sideb_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$layout[$i]['price_side1'].'" /></span sugar="slot"></td>';
            $layout_html = $layout_html.'<td   style="background:inherit;" width="28%" ></td>';
            $layout_html = $layout_html.'</tr>';
            
            
        }
        $total_side_html = $total_side_html.'<tr>';
        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF colspan=7 align=right >'.$mod_strings['LBL_TOTAL_SIDE'].'</td>';
        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="press_total_price_sidea" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$total_price_side['totalprice_side0'].'" /></span sugar="slot"></td>';
        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="press_total_price_sideb" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$total_price_side['totalprice_side1'].'" /></span sugar="slot"></td>';
        $total_side_html = $total_side_html.'<td  style="background:inherit;" width="28%" ></td>';
        $total_side_html = $total_side_html.'</tr>';
	    
        $pressEstimate['layout_html'] = $layout_html.$total_side_html;
        $pressEstimate['total_price'] = $total_price_side['totalprice_side0'] + $total_price_side['totalprice_side1'];
		return $pressEstimate;
    }
    
     //------------------------------------------------------------------------------//  
     
     function operationsEstimate($componentid){
     	$quantity = $this->getComponentQuantity($componentid); 
        $layout = $this->getLayout($componentid, $quantity);
        $lots = 0;
        $operatio_html= "";
        $total_price = 0;
        
        for ($i=0;$i < count($layout); $i++){
        	$lots = $lots + $layout[$i]['number_lots'];	
        }
        
        $operation_fields = array("operation_id", "operations_count");
        $operation_query_fields = " operation_id, operations_count ";
        $operation_where = " component_id='$componentid' ";
        
        $operationslist = $this->getComponentListData($operation_fields,$operation_query_fields,"productoperations",$operation_where);

        for ($i=0; $i<count($operationslist); $i++){
        	$operation = $this->custQuery(" sp,tir, kol, name", "operations",'id="'.$operationslist[$i]['operation_id'].'"', $fields = array("sp","tir", "kol", "name") );
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
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_name_'.$i.'" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="6" maxlength="50" type="text" value="'.$operation['name'].'" /></span sugar="slot"></td>';
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_sp_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$sigle_price.'" /></span sugar="slot"></td>';
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_lots_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$operation['kol'].'" /></span sugar="slot"></td>';
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_quantity_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$operation['tir'].'" /></span sugar="slot"></td>';
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_count_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$operation['count'].'" /></span sugar="slot"></td>';
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="operation_price_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$operation['price'].'" /></span sugar="slot"></td>';
	        $operatio_html = $operatio_html.'<td  style="background:inherit;" width="52%" ></td>';
	        $operatio_html = $operatio_html.'</tr>';
	    	
	        $total_price = $total_price + $operation['price'];
        	
        }
     	
        $operationsData['total_price'] = $total_price;
        $operationsData['html'] = $operatio_html;
     	return $operationsData;
     
     }
     
//------------------------------------------------------------------------------//  
     
     function prepressEstimate($componentid){
     	$prepress_html= "";
        $total_price = 0;
        
        $format = $this->custQuery(" press_size_x as x, press_size_y as y ", "products_components",'id="'.$componentid.'"', $fields = array("x","y") );
        	
        
        
        $prepress_fields = array("rate_id", "type", "count");
        $prepress_query_fields = " rate_id, type, count ";
        $prepress_where = " component_id='$componentid' ";
        
        $prepresslist = $this->getComponentListData($prepress_fields,$prepress_query_fields,"componentprepress",$prepress_where);

        for ($i=0; $i<count($prepresslist); $i++){
        	
        	if ($prepresslist[$i]['type'] == "ctp"){
        		$table = "rateplate";
        	}
        	else {
        		$table = "ratefilm";
        	}
        	
        	$prepress = $this->custQuery(" price, name", $table,'id="'.$prepresslist[$i]['rate_id'].'" AND size_x='.$format['x'].' AND size_y='.$format['y'].' ', $fields = array("price", "name") );
			
        	$prepress['price'] = $prepress['price'] * $prepresslist[$i]['count'];
        	$prepress['count'] = $prepresslist[$i]['count'];
        	$total_price = $total_price + $prepress['price'];
        	
        	$prepress_html = $prepress_html.'<tr>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="18%"  class=tabDetailViewDF><span sugar="slot1b"><input name="prepress_name_'.$i.'" style="background:inherit; border-style:none;text-align:center;" readOnly tabindex="1" size="18" maxlength="50" type="text" value="'.$prepress['name'].'" /></span sugar="slot"></td>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="prepress_count_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$prepress['count'].'" /></span sugar="slot"></td>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="8%"  class=tabDetailViewDF><span sugar="slot1b"><input name="prepress_price_'.$i.'" style="text-align:center;" tabindex="1" size="6" maxlength="50" type="text" value="'.$prepress['price'].'" /></span sugar="slot"></td>';
	        $prepress_html = $prepress_html.'<td  style="background:inherit;" width="74%" ></td>';
	        $prepress_html = $prepress_html.'</tr>';
	    	
	        
        }
     	
        $prepressData['total_price'] = $total_price;
        $prepressData['html'] = $prepress_html;
     	return $prepressData;
     
     }
     
	
    
    
}
?>