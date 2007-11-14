<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('data/SugarBean.php');

require_once('include/utils.php');

require_once('modules/Layoutline/Layoutline.php');
require_once('modules/ComponentPrepress/ComponentPrepress.php');
require_once('modules/ProductOperations/ProductOperation.php');
require_once('modules/ComponentInk/ComponentInk.php');
require_once('modules/EstimateCalc/EstimateCalc.php');
require_once('modules/ComponentEstimateCalc/ComponentEstimateCalc.php');
require_once('modules/Estimates/Estimates.php');

class EstimateComponents extends SugarBean {
	// database table columns
	var $id;
	var $date_entered;
	var $date_modified;
	var $assigned_user_id;
	var $modified_user_id;
	var $created_by;


	var $number;
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
	
	var $paper_rate;
	var $paper_rate_id;
	var $rate_price;
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
    

    
    var $pressformat;
    var $pressformat_x;
    var $pressformat_y;

	var $base_format;
	var $base_format_id;
	var $base_x;
	var $base_y;
	
	var $child_format;
	var $child_format_id;
	var $child_x;
	var $child_y;
	
	var $name;
	var $status;
	var $description;
	var $order_number;

	var $auto_price;
	
	var $deleted;	
	
	// Client Request fields
	var $paper_description;
	var $paper_weight;
	var $paper_type;
	var $colors_a;
	var $colors_b;
	var $operations;
	var $format_description;
	var $paper_supplier_description;
	
	
	
	var $component_modified = false;

	// related information
	var $assigned_user_name;
	var $calculant_id;
	var $calculant_name;
	var $parent_name;
	var $parent_id;
	var $parent_bean;
	var $bean_name;
	var $email_id;




	var $table_name = 'estimates_components';
	var $object_name = 'EstimateComponents';
	var $module_dir = 'EstimateComponents';


	var $field_name_map;
	var $new_schema = true;
	
	
	var $actions = array(
   		'estimate' => 'estimated',
   		'quote' => 'quoted',
   		'purchase' => 'purchased',
	);
	
	
	var $observed_fields = array(
   		'volume' => 'volume',
   		'quantity' => 'quantity',
   		'fsize_h' => 'fsize_h',
   		'fsize_w' => 'fsize_w',
   		'run_size_x' => 'run_size_x',
   		'run_size_y' => 'run_size_y',
   		'bleed_size_x' => 'bleed_size_x',
   		'bleed_size_y' => 'bleed_size_y',

   		'pressformat_x' => 'pressformat_x',
   		'pressformat_y' => 'pressformat_y',
   		'paperid' => 'paperid',
   		'price' => 'price',
   		'supplier_id' => 'supplier_id',
   		'color_side_a' => 'color_side_a',
   		'color_side_b' => 'color_side_b',
   );
   
   var $observed_where_fields = array(
   		
   		'volume' => array(
   			'id' => 'id',
		),
		
		'quantity' => array(
   			'id' => 'id',
		),
		
		'fsize_h' => array(
   			'id' => 'id',
		),
		
		'fsize_w' => array(
   			'id' => 'id',
		),
		
		'run_size_x' => array(
   			'id' => 'id',
		),
		
		'run_size_y' => array(
   			'id' => 'id',
		),
		
		'bleed_size_x' => array(
   			'id' => 'id',
		),
		
		'bleed_size_y' => array(
   			'id' => 'id',
		),
		
	
		
		'pressformat_x' => array(
   			'id' => 'id',
		),
		
		'pressformat_y' => array(
   			'id' => 'id',
		),
		
		'paperid' => array(
   			'id' => 'id',
		),
		
		'price' => array(
   			'id' => 'id',
		),
		
		'supplier_id' => array(
   			'id' => 'id',
		),
		
		'color_side_a' => array(
   			'id' => 'id',
		),
		
		'color_side_b' => array(
   			'id' => 'id',
		),
		
		
		
		
		
		
   );

	
	//////////////////////////////////////////////////////////////////
	// METHODS
	//////////////////////////////////////////////////////////////////

	/*
	 *
	 */
	function EstimateComponents()
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

		$query = "SELECT users.user_name assigned_user_name, ";//estimates.name parent_name, estimates.assigned_user_id parent_name_owner, 
		$query .= "estimates_components.*";

		if($custom_join)
		{
			$query .=  $custom_join['select'];
		}




		$query .= " FROM estimates_components ";





		
		$query .= "LEFT JOIN users ON estimates_components.assigned_user_id=users.id ";
		//$query .= "LEFT JOIN estimates ON estimates_components.parent_id=estimates.id ";
		



		
		if($custom_join)
		{
			$query .=  $custom_join['join'];
		}

			$where_auto = '1=1';
				if($show_deleted == 0){
                	$where_auto = "$this->table_name.deleted=0 ";
                	//$where_auto .= " AND estimates.deleted=0";
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



		/*$this->depends_on_name = $this->_get_depends_on_name($this->depends_on_id);
		if(empty($this->depends_on_name))
		{
			$this->depends_on_id = '';
		}
		$this->parent_name = $this->_get_parent_name($this->parent_id);
		if(empty($this->parent_name))
		{
			$this->parent_id = '';
		}*/
   }

	/*
	 *
	 */
   function fill_in_additional_list_fields()
   {
      $this->assigned_user_name = get_assigned_user_name($this->assigned_user_id);
      //$this->parent_name = $this->_get_parent_name($this->parent_id);
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
	/*function _get_depends_on_name($depends_on_id)
	{
		$return_value = '';

		$query  = "SELECT name, assigned_user_id FROM {$this->table_name} WHERE id='{$depends_on_id}'";
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		if($row != null)
		{
			$this->depends_on_name_owner = $row['assigned_user_id'];
			$this->depends_on_name_mod = 'EstimateComponents';
			$return_value = $row['name'];
		}

		return $return_value;
	}*/

	/*
	 *
	 */
	/*function _get_parent_name($parent_id)
	{
		$return_value = '';

		$query  = "SELECT name, assigned_user_id FROM estimates WHERE id='{$parent_id}'";
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		$row = $this->db->fetchByAssoc($result);
		if($row != null)
		{
			$this->parent_name_owner = $row['assigned_user_id'];
			$this->parent_name_mod = 'Estimates';
			$return_value = $row['name'];
		}

		return $return_value;
	}*/

	/*
	 *
	 */
	function build_generic_where_clause ($the_query_string)
	{
		$where_clauses = array();
		$the_query_string = PearDatabase::quote(from_html($the_query_string));
		array_push($where_clauses, "estimates_components.name like '$the_query_string%'");

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
			if(ACLController::checkAccess('Estimates', 'view', $is_owner)){
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
			if( ACLController::checkAccess('EstimateComponents', 'view', $is_owner)){
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
				estimates_components.*,
                users.user_name as assigned_user_name ";



        if($custom_join){
			$query .=  $custom_join['select'];
		}
        $query .= "FROM estimates_components ";
        




		if($custom_join){
			$query .=  $custom_join['join'];
		}
        $query .= " LEFT JOIN users
                   	ON estimates_components.assigned_user_id=users.id ";




        $where_auto = " estimates_components.deleted=0 ";

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

	

	function generate_number($field, $table, $parent_id, $parent_table)
	{
		$query = 'SELECT '.$field.' FROM '.$parent_table.' WHERE deleted=0 AND '.$field.' IS NOT NULL ORDER by '.$field.' DESC ';
		$result = $this->db->query($query,true," Error filling in additional detail fields: ");
		while (($row = $this->db->fetchByAssoc($result)) != null){
	    	
			$list[] = $row[$field];
    
    	}
		if (($list != null) && !empty($list))
		{
			$pref = $list[0];
			$pref = substr($pref,0,9);
			$number = substr($list[0],-1,1);
			$number = intval($number) + 1;
			return  $pref.'-'.$number;
		}
		else { 
			$query = 'SELECT number FROM '.$parent_table.' WHERE deleted=0 AND id="'.$parent_id.'" ';
			$result = $this->db->query($query,true," Error filling in additional detail fields: ");
			$row = $this->db->fetchByAssoc($result);
			return $row['number'].'-1';
		}
	}
    
	function getLayoutRows() {
		$return_array = array();
		if($this->id != "") {
			$layoutline = new Layoutline();
			$return_array = $layoutline->get_full_list("id","component_id='".$this->id."'");
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
        $tablerow = $tablerow.'<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 id="estimate_row_table_'.$count.'" name="estimate_row_table">';
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
            $tablerow = $tablerow.'                <TD class=dataField width=15%><input style="background:inherit;" type=text size=7 value="'.$layoutrow->number_lots.'" id=number_lots_'.$count.' name=number_lots_'.$count.' /></TD>';            
            $tablerow = $tablerow.'                <TD class=dataField width=15%><input  style="background:inherit;" type=text size=7 value="'.$layoutrow->number_units.'" id=number_units_'.$count.' name=number_units_'.$count.' /></TD>';
            $tablerow = $tablerow.'                <TD class=dataField width=15%><select  style="background:inherit;" tabindex="1" id="run_style_'.$count.'" name="run_style_'.$count.'">'.get_select_options_with_id($app_list_strings['layout_type_options'], $layoutrow->run_style).'</select></TD>';            
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
    
    //Get PDF export rows functions for Pre-press, Press & Post-Press
	    function getPrepressRowPdf ($prepressrow,$index) {
		global $mod_strings, $pdf_font_size;
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
			
			$tablerow = '';
			$tablerow .= "<tr>";
		    $tablerow .= "<td><font size=$pdf_font_size>".$data['name']."</font></td>";
		     		
	 		if ($prepressrow->type == "ctp") 
	 			$tablerow .= "<td><font size=$pdf_font_size>".$mod_strings['LBL_CTP']."</font></td>";
			else 
				$tablerow .= "<td><font size=$pdf_font_size>".$mod_strings['LBL_FILM']."</font></td>";
			
			$tablerow .= "<td><font size=$pdf_font_size>$format</font></td>";
			
			if ($prepressrow->type == "ctp") 
				$tablerow .= "<td><font size=$pdf_font_size>".$data['gauge']."</font></td>";
			else 
				$tablerow .= "<td><font size=$pdf_font_size>-</font></td>";
			
			if ($prepressrow->side == "a") 
				$tablerow .= "<td><font size=$pdf_font_size>".$mod_strings['LBL_SIDE_A']."</font></td>";
			else
				$tablerow .= "<td><font size=$pdf_font_size>".$mod_strings['LBL_SIDE_B']."</font></td>";
			
			$tablerow .= "<td><font size=$pdf_font_size>".$prepressrow->count."</font></td>";
	     	$tablerow .= "</tr>";	
	     	
	     return $tablerow;	
		} 
		
		function getLayoutRowPdf($layoutrow,$index) {
	        global $app_list_strings, $pdf_font_size;
	        
	        $tablerow = '';
	        $tablerow .= "<tr>";
	        $tablerow .= "<td><font size=$pdf_font_size>".$layoutrow->number_lots."</font></td>";
	        $tablerow .= "<td><font size=$pdf_font_size>".$layoutrow->number_units."</font></td>";
	        $tablerow .= "<td><font size=$pdf_font_size>".$app_list_strings['layout_type_options'][$layoutrow->run_style]."</font></td>";
	        $tablerow .= "</tr>";
	       
	        return $tablerow;
	    }	
	    
	    
	    function getOperationsRowPdf ($operationrow,$index) {
        
		$query = 'SELECT name FROM operations ';
		$query.= " WHERE deleted=0 AND id='$operationrow->operation_id'";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		$type = $this->getOperationtype($operationrow->operation_id);
		
	 	$tablerow .= "<tr>";
        $tablerow .= "<td><font size=$pdf_font_size>".$data['name']."</font></td>";
        $tablerow .= "<td><font size=$pdf_font_size>$type</font></td>";
        $tablerow .= "<td><font size=$pdf_font_size>".$operationrow->operations_count."</font></td>";
        $tablerow .= "</tr>";
		
		return $tablerow;
        }
	    
	    
    //End of PDF rows functions 
    
    
    
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
		$tablerow = '';
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
    	/*$query = " SELECT name FROM layout WHERE deleted=0 AND estimate_component_id = '$id' ORDER BY name DESC  ";
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
    
    function get_quantity($id){
		$query = " SELECT quantity FROM estimates WHERE id='$id' ";
		$result = $this->db->query($query,true,"");
		$data = $this->db->fetchByAssoc($result);
		
		return $data['quantity'];
		 	
    }
    
    function get_calc_record($id){
    	$query = " SELECT id FROM componentestimatecalc WHERE component_id='$id' AND deleted=0 ";
		$result = $this->db->query($query,true,"");
		$data =  $this->db->fetchByAssoc($result);	
		return $data['id'];
    }
    
    function change_calc_status($id){
    	$query = " UPDATE componentestimatecalc SET status='outdated' WHERE component_id='$id' AND deleted=0 ";
		$this->db->query($query,true,"");

    }
    
    /*function check_modified_fields($keys, $bean, $component_id){
    	$count = 0;
    	$db_count_field = false;
    	$count_flag = "";
    	foreach ($bean->observed_fields as $key => $value ){
			
			if($bean->object_name == "ProductOperation"){
				$key = "operations_count";	
			}
			if($bean->object_name == "ComponentPrepress"){
				$key = "count";	
			}
			
			if (empty($count_flag)){
				$count_flag = $key;
			}
			if ($bean->object_name == "EstimateComponents"){
				$count_flag = $key;
			}
			for ($i = 0; $i < count($keys); $i++) {
				if((substr_count($keys[$i], $value) > 0)) {
			    	if (($bean->object_name != "EstimateComponents") && (($keys[$i] == 'lots_run_style_1') || ($keys[$i] == 'lots_run_style_2'))){
			    		continue;
			    	}		    	
			    	$index = substr($keys[$i],-1,1);
			    	
			    	if ($count_flag == $key){
			    		$count = $count + 1;
			    	}
			    	
			    	//Operations Case
			    	if ($value == "CutngOperations_count_"){
			    		$where = ' AND component_id="'.$_POST['id'].'" AND operation_id="'.$_POST['CutngOperations_Id_'.$index].'"';
			    	}
			    	elseif($value == "OtherOperations_count_"){
			    		$where = ' AND component_id="'.$_POST['id'].'" AND operation_id="'.$_POST['OtherOperations_Id_'.$index].'"';
			    	}
			    	//Prerpess Case 
			    	elseif($value == "ctp_count_a_"){
			    		$where = ' AND component_id="'.$_POST['id'].'" AND rate_id="'.$_POST["ctp_prepressId_a_".$index].'" AND type="ctp" AND side="a" ';
			    	}
			    	elseif($value == "ctp_count_b_"){
			  			$where = ' AND component_id="'.$_POST['id'].'" AND rate_id="'.$_POST["ctp_prepressId_b_".$index].'" AND type="ctp" AND side="b" ';
			    	}
			    	elseif($value == "flm_count_a_"){
			  			$where = ' AND component_id="'.$_POST['id'].'" AND rate_id="'.$_POST["flm_prepressId_a_".$index].'" AND type="flm" AND side="a" ';
			    	}
			    	elseif($value == "flm_count_b_"){
			  			$where = ' AND component_id="'.$_POST['id'].'" AND rate_id="'.$_POST["flm_prepressId_b_".$index].'" AND type="flm" AND side="b" ';
			    	}
			    	
			    	else{
			    		$where = $this->build_observed_fields_where_clause($bean->observed_where_fields[$key], $index);
			     		
			    	}
			    	
			     	$query = 'SELECT '.$key.' FROM '.$bean->table_name.' WHERE deleted=0 '.$where.'';
			     	$result = $this->db->query($query,true,"");
					$data = $this->db->fetchByAssoc($result);
					if (isset($_POST[$value.$index]) && !is_null($_POST[$value.$index]) && ($_POST[$value.$index] == $data[$key])){
						continue;
					}
					elseif (isset($_POST[$value]) && !is_null($_POST[$value]) && ($_POST[$value] == $data[$key])){
						continue;
					}
					else{
						$this->component_modified = true;
					}       
			    }
			    
			}
			if ($db_count_field == false){
				$field1 = $key;
				$db_count_field = true;
			}
		}
		
		if (($bean->object_name == "Layoutline") || ($bean->object_name == "ProductOperation") || ($bean->object_name == "ComponentPrepress")){
				if ($bean->object_name == "Layoutline"){
					$where = "AND component_id='$component_id'"; 
					
				}
				else{
					$where = "AND component_id='$component_id'"; 
				}
			
				$query = 'SELECT '.$field1.' FROM '.$bean->table_name.' WHERE deleted=0 '.$where.'';
		    	$result = $this->db->query($query,true,"");
		    	$dbcount = $this->db->getRowCount($result);
		    	if ($dbcount != $count){
		    		$this->component_modified = true;	
		    	}
			}
    }*/
    
    function build_observed_fields_where_clause ($fields, $index){
    	foreach ($fields as $key => $value){
    		if (!empty($_POST[$value.$index]) && isset($_POST[$value.$index])){
    			$where .= ' AND '.$key.'="'.$_POST[$value.$index].'" ';
    		}
    		elseif($value == "layout_id_"){
    			$where .= ' AND '.$key.'="" ';	
    		}
    		
    		elseif (!empty($_POST[$value]) && isset($_POST[$value])){
    			$where .= ' AND '.$key.'="'.$_POST[$value].'" ';
    		}
    		
    		
			else{
				$where .= ' AND '.$key.'="'.$value.'" ';
    		}	
    	}
    	return $where;
	}
	
	function status_update($status,$id, $action='', $calculant_id=''){
		if($calculant_id != ''){
			$status = 'waiting_estimate';	
		}
		elseif ($action != ''){
			$status = $this->actions[$action];	
		}
		else{
			$status = $this->status;
		}
		
		$query = ' UPDATE '.$this->table_name.' SET status="'.$status.'" WHERE id="'.$id.'" AND deleted=0 ';
		$this->db->query($query,true,"");
	}
	
	function component_update($id, $close=false){
		
		$estimate_estimate = new EstimateCalc();
		$components_estimate = new ComponentEstimateCalc();
		$estimate = new Estimates();
		
		$query = ' SELECT id FROM '.$components_estimate->table_name.' WHERE component_id="'.$id.'" AND deleted=0 ';
		$result = $this->db->query($query,true,"");
		if ($result != false){
			while ($data = $this->db->fetchByAssoc($result)){
				$components_estimate->mark_deleted($data['id']);
			}
		}
		
		$query = ' UPDATE '.$estimate->table_name.' SET status="draft" WHERE id="'.$this->parent_id.'" AND deleted=0 ';
		$this->db->query($query,true,"");
		
		$query = ' UPDATE '.$estimate_estimate->table_name.' SET status="outdated" WHERE id="'.$this->parent_id.'" AND deleted=0 ';
		$this->db->query($query,true,"");
		
	}
	
	function get_calculant(){
		if (isset($this->calculant_id) && !empty($this->calculant_id) && !is_null($this->calculant_id)){
			return $this->calculant_id;
		}
		return null;
	}
	
	function get_paper_price ($paperid) {
		$paper = new Paper();
		$query = 'SELECT price FROM '.$paper->table_name.' where id="'.$paperid.'" AND deleted=0';
		$result = $this->db->query($query,true,"");
		$data =  $this->db->fetchByAssoc($result);
		if ($data == null){
			return "";
		}	
		return $data['price'];
	}
}
?>