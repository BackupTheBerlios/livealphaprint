<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('data/SugarBean.php');

require_once('include/utils.php');

require_once('modules/Layoutline/Layoutline.php');
require_once('modules/ComponentPrepress/ComponentPrepress.php');
require_once('modules/ProductOperations/ProductOperation.php');
require_once('modules/ComponentInk/ComponentInk.php');

class ProductComponents extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;


	var $number;
	var $number_pref;
	var $number_suf;
	var $type;
	var $paper;
	var $volume;
	var $quantity;
	var $paperid;
	var $client_paper;
	var $format;
	var $color_side_a;
    var $color_side_b;
	var $machine;
	var $price_id;
	var $price;
	var $supplier_id;
	var $supplier_name;
	var $fsize_h;
    var $fsize_w;
    
    var $bleed_format;
    var $bleed_size_x;
	var $bleed_size_y;
        
    var $run_format;
    var $run_size_x;
    var $run_size_y;
    
    var $press_format;
    var $press_size_x;
    var $press_size_y;

	
	var $name;
	var $status;
	var $date_due;
	var $time_due;
	var $date_start;
	var $time_start;
	var $parent_id;
	var $priority;
	var $description;
	var $order_number;
	var $task_number;
	var $depends_on_id;
	var $milestone_flag;
	var $estimated_effort;
	var $actual_effort;
	var $utilization;
	var $percent_complete;
	var $deleted;

	// related information
	var $assigned_user_name;
	var $parent_name;
	var $depends_on_name;
	var $email_id;




	var $table_name = 'products_components';
	var $object_name = 'ProductComponents';
	var $module_dir = 'ProductComponents';


	var $field_name_map;
	var $new_schema = true;

	
	//////////////////////////////////////////////////////////////////
	// METHODS
	//////////////////////////////////////////////////////////////////

	/*
	 *
	 */
	function ProductComponents()
	{
		parent::SugarBean();

		// default value for a clean instantiation
		$this->utilization = 100;

		global $current_user;
		if(empty($current_user))
		{
			$this->assigned_user_id = 1;
			$this->assigned_user_name = 'admin';
		}
		else
		{
			$this->assigned_user_id = $current_user->id;
			$this->assigned_user_name = $current_user->user_name;
		}












	}
	
	function save($check_notify = FALSE){
		parent::save($check_notify);
	}
	
	/**
	 * overriding the base class function to do a join with users table
	 */
	function create_list_query($order_by, $where, $show_deleted = 0)
	{
		$custom_join = $this->custom_fields->getJOIN();

		$query = "SELECT users.user_name assigned_user_name, products.name parent_name, products.assigned_user_id parent_name_owner, products_components.*";

		if($custom_join)
		{
			$query .=  $custom_join['select'];
		}




		$query .= " FROM products_components ";





		
		$query .= "LEFT JOIN users ON products_components.assigned_user_id=users.id ";
		$query .= "LEFT JOIN products ON products_components.parent_id=products.id ";
		



		
		if($custom_join)
		{
			$query .=  $custom_join['join'];
		}

			$where_auto = '1=1';
				if($show_deleted == 0){
                	$where_auto = "$this->table_name.deleted=0 AND products.deleted=0";
				}else if($show_deleted == 1){
                	$where_auto = "$this->table_name.deleted=1";
				}

				if($where != '')
						  $query .= "where ($where) AND ".$where_auto;
				else
						  $query .= "where ".$where_auto;

				if(!empty($order_by))
						  $query .= " ORDER BY $order_by";
		//die($query);
		return $query;
	}

	/*
	 *
	 */
   function fill_in_additional_detail_fields()
   {
      $this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);



		$this->depends_on_name = $this->_get_depends_on_name($this->depends_on_id);
		if(empty($this->depends_on_name))
		{
			$this->depends_on_id = '';
		}
		$this->parent_name = $this->_get_parent_name($this->parent_id);
		if(empty($this->parent_name))
		{
			$this->parent_id = '';
		}
   }

	/*
	 *
	 */
   function fill_in_additional_list_fields()
   {
      $this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
      $this->parent_name = $this->_get_parent_name($this->parent_id);
   }

	/*
	 *
	 */
	function get_summary_text()
	{
		return $this->name;
	}

	/*
	 *
	 */
	function _get_depends_on_name($depends_on_id)
	{
		$return_value = '';

		$query  = "SELECT name, assigned_user_id FROM {$this->table_name} WHERE id='{$depends_on_id}'";
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		if($row != null)
		{
			$this->depends_on_name_owner = $row['assigned_user_id'];
			$this->depends_on_name_mod = 'ProductComponents';
			$return_value = $row['name'];
		}

		return $return_value;
	}

	/*
	 *
	 */
	function _get_parent_name($parent_id)
	{
		$return_value = '';

		$query  = "SELECT name, assigned_user_id FROM products WHERE id='{$parent_id}'";
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		if($row != null)
		{
			$this->parent_name_owner = $row['assigned_user_id'];
			$this->parent_name_mod = 'Products';
			$return_value = $row['name'];
		}

		return $return_value;
	}

	/*
	 *
	 */
	function build_generic_where_clause ($the_query_string)
	{
		$where_clauses = array();
		$the_query_string = PearDatabase::quote(from_html($the_query_string));
		array_push($where_clauses, "products_components.name like '$the_query_string%'");

		$the_where = "";
		foreach($where_clauses as $clause)
		{
			if($the_where != "") $the_where .= " or ";
			$the_where .= $clause;
		}

		return $the_where;
	}

	function get_list_view_data(){
		global $action, $currentModule, $focus, $current_module_strings, $app_list_strings, $image_path, $timedate;
		$today = $timedate->handle_offset(date("Y-m-d H:i:s", time()), $timedate->dbDayFormat, true);
		$task_fields =$this->get_list_view_array();
		if (isset($this->parent_type)) 
			$task_fields['PARENT_MODULE'] = $this->parent_type;
		
		$task_fields['CONTACT_NAME']= return_name($task_fields,"FIRST_NAME","LAST_NAME");
		$task_fields['TITLE'] = '';
		if (!empty($task_fields['CONTACT_NAME'])) {
			$task_fields['TITLE'] .= $current_module_strings['LBL_LIST_CONTACT'].": ".$task_fields['CONTACT_NAME'];
		}
		
		return $task_fields;
	}
	
	function bean_implements($interface){
		switch($interface){
			case 'ACL':return true;
		}
		return false;
	}
	function listviewACLHelper(){
		$array_assign = parent::listviewACLHelper();
		$is_owner = false;
		if(!empty($this->parent_name)){
			
			if(!empty($this->parent_name_owner)){
				global $current_user;
				$is_owner = $current_user->id == $this->parent_name_owner;
			}
		}
			if(ACLController::checkAccess('Products', 'view', $is_owner)){
				$array_assign['PARENT'] = 'a';
			}else{
				$array_assign['PARENT'] = 'span';
			}
		$is_owner = false;
		if(!empty($this->depends_on_name)){
			
			if(!empty($this->depends_on_name_owner)){
				global $current_user;
				$is_owner = $current_user->id == $this->depends_on_name_owner;
			}
		}
			if( ACLController::checkAccess('ProductComponents', 'view', $is_owner)){
				$array_assign['PARENT_TASK'] = 'a';
			}else{
				$array_assign['PARENT_TASK'] = 'span';
			}
		
		return $array_assign;
	}
	
	
	function create_export_query(&$order_by, &$where)
    {
      	$custom_join = $this->custom_fields->getJOIN();
		$query = "SELECT
				products_components.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM products_components ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON products_components.assigned_user_id=users.id ";




        $where_auto = " products_components.deleted=0 ";

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

	function pnum_sort($array, $type='desc'){
	   $result=array();
	   foreach($array as $var => $val){
	       $set=false;
	       foreach($result as $var2 => $val2){
	           if($set==false){
	               if($val>$val2 && $type=='desc' || $val<$val2 && $type=='asc'){
	                   $temp=array();
	                   foreach($result as $var3 => $val3){
	                       if($var3==$var2) $set=true;
	                       if($set){
	                           $temp[$var3]=$val3;
	                           unset($result[$var3]);
	                       }
	                   }
	                   $result[$var]=$val;   
	                   foreach($temp as $var3 => $val3){
	                       $result[$var3]=$val3;
	                   }
	               }
	           }
	       }
	       if(!$set){
	           $result[$var]=$val;
	       }
	   }
	   return $result;
	}

	function get_pnum(){
				
			$query = 'SELECT pnum_suf';
			$query.= ' FROM products';
			$query.= " WHERE products.id='$_REQUEST[products_id]' ";
			$query.= " AND pnum_suf IS NOT NULL";
			$result = $this->db->query($query,true," Error filling in additional detail fields: ");
			$row = $this->db->fetchByAssoc($result);
			return $row['pnum_suf'];
	}

	function generate_number(){
			$return_value = '';
			$number_filed = array('number_suf');
			$rown = '';
					
			$query = 'SELECT  number_suf';
			$query.= ' FROM products_components';
			$query.= " WHERE deleted=0 AND parent_id='$_REQUEST[products_id]'";
			$query.= " AND  number_suf IS NOT NULL";
			$query.= " ORDER by  number_suf ASC";
			
			$result = $this->db->query($query,true," Error filling in additional detail fields: ");
			$n = $this->db->getRowCount($result);
			if ($n > 0){
				while ($row = $this->db->fetchByAssoc($result)) {
			
					foreach($number_filed as $num_field)
					{
							for ($i=0; $i<$n; $i++ ){
							$rown[$i] = $row[$num_field];
							}
						
					}
					
				}
			}
				
			if($rown != null)
			{
				$return_value = $rown;
				$number = ProductComponents::pnum_sort($return_value);
				$numb = $number[0] + 1;
			}
			else { $numb = 001;}
			
			return $numb;
		}
    
    function generate_number_auto($id){
        $return_value = '';
        $number_filed = array('number_suf');
        $rown = '';
                
        $query = 'SELECT  number_suf';
        $query.= ' FROM products_components';
        $query.= " WHERE deleted=0 AND parent_id='$id'";
        $query.= " AND  number_suf IS NOT NULL";
        $query.= " ORDER by  number_suf ASC";
        
        $result = $this->db->query($query,true," Error filling in additional detail fields: ");
        $n = $this->db->getRowCount($result);
        if ($n > 0){
            while ($row = $this->db->fetchByAssoc($result)) {
        
                foreach($number_filed as $num_field)
                {
                        for ($i=0; $i<$n; $i++ ){
                        $rown[$i] = $row[$num_field];
                        }
                    
                }
                
            }
        }
            
        if($rown != null)
        {
            $return_value = $rown;
            $number = ProductComponents::pnum_sort($return_value);
            $numb = $number[0] + 1;
        }
        else { $numb = 001;}
        
        return $numb;
    }
    
    
	function getLayoutRows() {
		$return_array = array();
		if($this->id != "") {
			$layoutline = new Layoutline();
			$return_array = $layoutline->get_full_list("id","product_component_id='".$this->id."'");
		}
		return $return_array;
	}

	function getLayoutRow($layoutrow,$index,$is_editview=false,$is_quickedit=false) {
        global $mod_strings;
        global $app_strings;
        global $app_list_strings;
        
        $changebutton = $app_strings['LBL_CHANGE_BUTTON_TITLE'];
        $changebuttonkey = $app_strings['LBL_CHANGE_BUTTON_KEY'];
        $changebuttontitle = $app_strings['LBL_CHANGE_BUTTON_LABEL'];
        $tablerow = '<tr><td>';
        $count = $index + 1;
        $tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="product_row_table_'.$count.'" name="product_row_table">';
        $tablerow = $tablerow.'            <TR>';
        if($is_editview != true)                         
        {                                             // DetailView
       
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=15%>'.$layoutrow->number_lots.'</TD>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=15%>'.$layoutrow->number_units.'</TD>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=15%>'.$app_list_strings['layout_type_options'][$layoutrow->run_style].'</TD>';
			$tablerow = $tablerow.'                <TD class="tabDetailViewDF" width=55%></TD>';
        }
	 	else if ($is_quickedit == true)
        {                                         //Editview
            $tablerow = $tablerow.'                <TD class=dataField width=15%><input type=text size=7 value="'.$layoutrow->number_lots.'" id=number_lots_'.$count.' name=number_lots_'.$count.' /></TD>';            
            $tablerow = $tablerow.'                <TD class=dataField width=15%><input type=text size=7 value="'.$layoutrow->number_units.'" id=number_units_'.$count.' name=number_units_'.$count.' /></TD>';
            $tablerow = $tablerow.'                <TD class=dataField width=15%><select tabindex="1" id="run_style_'.$count.'" name="run_style_'.$count.'">'.get_select_options_with_id($app_list_strings['layout_type_options'], $layoutrow->run_style).'</select></TD>';            
            $tablerow = $tablerow.'                <TD class="dataLabel" width=55%><input type=hidden id=rowIndexId_'.$index.' value='.$index.'><INPUT class="button" id="remove" onclick="Delete(productComponentsQuickCreate,rowIndexId_'.$index.')" type="button" value="'.$mod_strings["LBL_REMOVEROW"].'" name="remove"> </TD>';
        }
        
        else
        {                                         //Editview
            $tablerow = $tablerow.'                <TD class=dataField width=15%><input type=text size=7 value="'.$layoutrow->number_lots.'" id=number_lots_'.$count.' name=number_lots_'.$count.' />';
            $tablerow = $tablerow.'				   								 <input type=hidden value="'.$layoutrow->id.'" id=layout_id_'.$count.' name=layout_id_'.$count.' /></TD>';            
            $tablerow = $tablerow.'                <TD class=dataField width=15%><input type=text size=7 value="'.$layoutrow->number_units.'" id=number_units_'.$count.' name=number_units_'.$count.' /></TD>';
            $tablerow = $tablerow.'                <TD class=dataField width=15%><select tabindex="1" id="run_style_'.$count.'" name="run_style_'.$count.'">'.get_select_options_with_id($app_list_strings['layout_type_options'], $layoutrow->run_style).'</select></TD>';            
            $tablerow = $tablerow.'                <TD class="dataLabel" width=55%><input type=hidden id=rowIndexId_'.$index.' value='.$index.'><INPUT class="button" id="remove" onclick="Delete(EditView,rowIndexId_'.$index.')" type="button" value="'.$mod_strings["LBL_REMOVEROW"].'" name="remove"> </TD>';
        }
        $tablerow = $tablerow.'                            </TR>';
        $tablerow = $tablerow.'                </TABLE></td></tr>';
        return $tablerow;
    }
    
	function getPrepressRows() {
		$return_array = array();
		if($this->id != "") {
			$componentPrepress = new ComponentPrepress();
			$return_array = $componentPrepress->get_full_list("id","component_id='".$this->id."'");
		}
		return $return_array;
	}

	function getPrepressRow($prepressrow,$index,$is_editview=false) {
        global $mod_strings;
        $table = "ratefilm";
        $fields = "name, size_x, size_y";
        if ($prepressrow->type == "ctp"){
        	$fields = $fields.", gauge";
        	$table = "rateplate";	
        }

        
        $query = "SELECT $fields FROM $table ";
		$query.= " WHERE deleted=0 AND id='$prepressrow->rate_id'";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		$format = $data['size_x']."x".$data['size_y'];

        if($is_editview != true)                         
        {                                             // DetailView
            $tablerow = $tablerow.'<TR>';
            //prepress name
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=20%>'.$data['name'].'</TD>';
            
           	//prepress type
            if ($prepressrow->type == "ctp"){
				$tablerow = $tablerow.'<TD class=tabDetailViewDF>'.$mod_strings['LBL_CTP'].'</TD>';
			}
			else{
				$tablerow = $tablerow.'<TD class=tabDetailViewDF>'.$mod_strings['LBL_FILM'].'</TD>';
			}
			
			//prepress format
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF>'.$format.'</TD>';
			
			//prepress gauge
            if ($prepressrow->type == "ctp"){
				$tablerow = $tablerow.'<TD class=tabDetailViewDF>'.$data['gauge'].'</TD>';
			}
			else{
				$tablerow = $tablerow.'<TD class=tabDetailViewDF>-</TD>';
			}
			
			//prepress side
			 if ($prepressrow->side == "a"){
				$tablerow = $tablerow.'<TD class=tabDetailViewDF>'.$mod_strings['LBL_SIDE_A'].'</TD>';
			}
			else{
				$tablerow = $tablerow.'<TD class=tabDetailViewDF>'.$mod_strings['LBL_SIDE_B'].'</TD>';
			}
			
			$tablerow = $tablerow.'                <TD class=tabDetailViewDF>'.$prepressrow->count.'</TD>';
         	$tablerow = $tablerow.'</TR>';
         /* $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=10%>'.$prepressrow->unit.'</TD>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=15%>'.$prepressrow->singlep.'</TD>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width=15%>'.$prepressrow->price.'</TD>';
         	$tablerow = $tablerow.'                <TD class="tabDetailViewDF" width=10%></TD>';*/ 
        }
	else
        {                                         //Editview
            $tablerow = "";
            $tablerow = $tablerow.'<TR id='.$prepressrow->rate_id.'>';
        	$tablerow = $tablerow.'<TD><input type=checkbox  value="'.$prepressrow->rate_id.'" name="prepress_checkbox" /></TD>';
        	
        	$tablerow = $tablerow.'<TD><input type=text value="'.$data['name'].'" readOnly name=Name_'.$index.' />';
	        $tablerow = $tablerow.'<input type=hidden name="'.$prepressrow->type.'_prepressId_'.$prepressrow->side.'_'.$index.'" value="'.$prepressrow->rate_id.'" /></TD>';  
	                  
	        $tablerow = $tablerow.'<TD><input type=text value="'.$format.'" readOnly size=5 name=format'.$index.' /></TD>';
			if ($prepressrow->type == "ctp"){
				$tablerow = $tablerow.'<TD><input type=text value="'.$data['gauge'].'" readOnly size=5 name=Gauge'.$index.' /></TD>';
			}
			$tablerow = $tablerow.'<TD colspan=6><input type=text value="'.$prepressrow->count.'" size=5 name="'.$prepressrow->type.'_count_'.$prepressrow->side.'_'.$index.'" /></TD>';
			
            $tablerow = $tablerow.'</TR>';
        }
        return $tablerow;
    }
    
    
    function genLayoutname ($index,$component){
    	global $mod_strings;
    	/*$query = " SELECT name FROM layout WHERE deleted=0 AND product_component_id = '$id' ORDER BY name DESC  ";
	    $result = $this->db->query($query,true," Error filling in additional detail fields: ");
	    $field = 'name';
	    	    $n = $this->db->getRowCount($result);
	        if ($n > 0){
	            while ($row = $this->db->fetchByAssoc($result)) {
	        
	                foreach($field as $name_field)
	                {
	                        for ($i=0; $i<$n; $i++ ){
	                        $name_array[$i] = $row[$name_field];
	                        }
	                    
	                }
	                
	            }
	        }
	      
	    $index = substr($name_array[0],-1,1);
	    if ($index == null){
	    	$index = 1;
	    }
	    else{
	    	$index = $index + 1;
	    }*/
	    
	    $name = $mod_strings['LBL_LAYOUT_NAME_PREF']."-".$component."-".$index;  
	    
	    return $name;
	}
	
	function getOperationsRows() {
		$return_array = array();
		if($this->id != "") {
			$operationrow = new ProductOperation();
			$return_array = $operationrow->get_full_list("id","component_id='".$this->id."'");
		}
		return $return_array;
	}

	function getOperationsRow($operationrow,$index,$is_editview=false) {
        
		$query = 'SELECT name FROM operations ';
		$query.= " WHERE deleted=0 AND id='$operationrow->operation_id'";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		$type = $this->getOperationtype($operationrow->operation_id);
		
        if($is_editview != true)                         
        {                                             // DetailView
       
            $tablerow = $tablerow.'				   <TR>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width="5%">'.$data['name'].'</TD>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width="5%">'.$type.'</TD>';
            $tablerow = $tablerow.'                <TD class=tabDetailViewDF width="90%">'.$operationrow->operations_count.'</TD>';
			$tablerow = $tablerow.'				   </TR>';
        }
	    
        else
        {                                         //Editview
            $tablerow = "";
            $tablerow = $tablerow.'<TR id='.$operationrow->operation_id.'>';
        	$tablerow = $tablerow.'<TD><input type=checkbox  value="'.$operationrow->operation_id.'" name="opr_checkbox" />';
        	if ($type == "Книговезане"){
        	    
        		$tablerow = $tablerow.'&nbsp;<input type=text value="'.$data['name'].'" readOnly name=CutngOperations_Name_'.$index.' />';
	            $tablerow = $tablerow.'<input type=hidden id="CutngOperations_Id_'.$index.'" name="CutngOperations_Id_'.$index.'" value="'.$operationrow->operation_id.'" />&nbsp;';            
	        	$tablerow = $tablerow.'<input type=text size=4 id="CutngOperations_count_'.$index.'" name="CutngOperations_count_'.$index.'" value="'.$operationrow->operations_count.'" /></TD>';
        	}
       		
	        else{
        	    
        		$tablerow = $tablerow.'&nbsp;<input type=text value="'.$data['name'].'" readOnly name=OtherOperations_Name_'.$index.' />';
	            $tablerow = $tablerow.'<input type=hidden id="OtherOperations_Id_'.$index.'" name="OtherOperations_Id_'.$index.'" value="'.$operationrow->operation_id.'" />&nbsp;';            
	        	$tablerow = $tablerow.'<input type=text size=4 id="OtherOperations_count_'.$index.'" name="OtherOperations_count_'.$index.'" value="'.$operationrow->operations_count.'" /></TD>';            
	        
	        }
            $tablerow = $tablerow.'</TR>';
        }
        return $tablerow;
    }
    
    function getOperationtype($id){	
    	$query = 'SELECT type FROM operations ';
		$query.= " WHERE deleted=0 AND id='$id'";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		
		return $data['type'];
    	
    }
    
	function getInkRows() {
		$return_array = array();
		if($this->id != "") {
			$componentink = new ComponentInk();
			$return_array = $componentink->get_full_list("id","component_id='".$this->id."'");
		}
		return $return_array;
	}
	
	function getInkNames($id) {
		$query = 'SELECT name FROM ink ';
		$query.= " WHERE deleted=0 AND id='$id'";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		return $data['name'];
	}
	
	function getInkRow($inkrow, $index) {

			$tablerow = "";
            $tablerow = $tablerow.'<TR id='.$inkrow->color_id.'>';
          	$tablerow = $tablerow.'<TD><input type=hidden name="colorId_side_'.$inkrow->side.'_'.$index.'" value="'.$inkrow->color_id.'" /></TD>';  
	        $tablerow = $tablerow.'</TR>';
        
        return $tablerow;
    }
    
    function inksDetailView($inks){
    	$output = "";
    	for ($i = 0; $i < count($inks); $i++) {
			$output = $output.''.$inks[$i]['name'].',';
		}
		
		return $output;	
    }
    
    function get_pressmachine_by_format($format){
    	$query = " SELECT id,name from pressmachine where s_f='$format' ";
    	$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		return $data;
    }
    
    function get_press_id($layout_id){
    	$query = " SELECT press_id from pressline WHERE layout_id='$layout_id' ";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
    	return $data;
    }
    
    function get_paper_info($paper_id){
    	global $app_list_strings;
    	
    	$query = " SELECT size_h, size_w, color, absorbtion, weight, texture, chrome, side FROM paper WHERE id='$paper_id'";
   		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		
		$return_arr = array();
		$return_arr['size_h'] = $data['size_h'];
		$return_arr['size_w'] = $data['size_w'];
		$return_arr['color'] = $app_list_strings['paper_color_dom'][$data['color']];
		$return_arr['absorbtion'] = $app_list_strings['paper_absorption_dom'][$data['absorbtion']];
		$return_arr['weight'] = $data['weight']; //$app_list_strings['paper_weight_unit_dom'][$data['weight']];
		$return_arr['texture'] = $app_list_strings['paper_texture_dom'][$data['texture']];
		$return_arr['chrome'] = $app_list_strings['paper_chrome_dom'][$data['chrome']];
		$return_arr['side'] = $app_list_strings['paper_side_dom'][$data['side']];
		
		return $return_arr;
		
   
    }
    
	
    
    
    
	
}
?>