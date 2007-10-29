<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


require_once('modules/EstimateComponents/EstimateComponents.php');
require_once('modules/Layoutline/Layoutline.php');
require_once('modules/ComponentInk/ComponentInk.php');
require_once('modules/Press/Press.php');
require_once('modules/ProductOperations/ProductOperation.php');
require_once('include/formbase.php');

	
	$component = new EstimateComponents();
	$component = populateFromPost('', $component);
	
	if(!$component->ACLAccess('Save')){
			ACLController::displayNoAccess(true);
			sugar_cleanup(true);
	}
	
	$component->save($GLOBALS['check_notify']);
	
	$component->status_update('',$component->id);
	
	$return_id = $component->id;
	

	//Layout Save -------------------------------------------------------/		
	$layoutLine1 = new Layoutline();
		//$this->mark_deletedByid($return_id);
	$count = count($_POST);
	$keys = array_keys($_POST);
	
	//$component->check_modified_fields($keys, $component, $component->id);
	
	//$component->check_modified_fields($keys, $layoutLine1, $component->id);
		//get edit fields
		$sum = 0;
		for($i = 0;$i< $count; $i++) {
			
			if(substr_count($keys[$i],"number_lots_") > 0) {
	            $index = substr($keys[$i],-1,1);
	            
	            if (isset($_POST["layout_id_".$index])){
	            	$edit_fields[] = $_POST["layout_id_".$index];
	            }
	    	}
		}
		
	$deleted_fields = $layoutLine1->mark_deletedByid("component_id",$return_id,$edit_fields);
	
	$sum = 0;
	for($i = 0;$i< $count; $i++) {
		
		if(substr_count($keys[$i],"number_lots_") > 0) {
            $index = substr($keys[$i],-1,1);
            if (!isset($_POST["layout_id_".$index]) || is_null($_POST["layout_id_".$index]) || empty($_POST["layout_id_".$index])){
                $number_lots = $_POST["number_lots_".$index];
	            $number_units = $_POST["number_units_".$index];
	            $run_style = $_POST["run_style_".$index];
	            $format = $_POST["press_format"];
	            
	            $layoutLine = new Layoutline();
	            $layoutLine->name = $component->genLayoutname($index,$component->name);
	            $layoutLine->number_lots = $number_lots;
	            $layoutLine->number_units = $number_units;
	            $layoutLine->run_style = $run_style;
	            $layoutLine->format = $format;
				$layoutLine->component_id = $component->id;
	            $layoutLine->save();
	            
	            //Create press, presslines and pass data
	            $press = new Press();
	            $pressLine = new Pressline();
	            
	            $press_machine = $component->get_pressmachine_by_format($format);
	            $press->pressmachine_id = $press_machine['id'];
	            $press->pressmachine_name = $press_machine['name'];
	            $press->save();
	            
	            $pressLine->component_id = $component->id;
	            $pressLine->press_id = $press->id;
	            $pressLine->layout_name = $layoutLine->name;
	            $pressLine->layout_id = $layoutLine->id;
	            $pressLine->part = "100";
	            $pressLine->save();
            }
            if (isset($_POST["layout_id_".$index]) && !is_null($_POST["layout_id_".$index]) && !empty($_POST["layout_id_".$index])){
            	$layout_id = $_POST["layout_id_".$index];
            	$format = $_POST["press_format"];
            	$number_lots = $_POST["number_lots_".$index];
	            $number_units = $_POST["number_units_".$index];
	            $run_style = $_POST["run_style_".$index];
	            
	            $lots  = "";
	            $units = "";
	            $style = "";
            	
	            if (isset($number_lots) && !is_null($number_lots) && !empty($number_lots)){
	            	$lots=",number_lots=$number_lots ";
	            }
           		 if (isset($number_units) && !is_null($number_units) && !empty($number_units)){
	            	$units=",number_units=$number_units ";
	            }
           		 if (isset($run_style) && !is_null($run_style) && !empty($run_style) ){
	            	$style=",run_style=$run_style ";
	            }
            	
            	//Update layout format
            	$query = " UPDATE layout set format='$format'$lots $units $style WHERE id='$layout_id' ";
            	$component->db->query($query,true,"");
            	
            	//Update press format
            	$data = $component->get_press_id($layout_id);
				$press_machine = $component->get_pressmachine_by_format($format);
				$query = ' UPDATE press set pressmachine_id="'.$press_machine["id"].'" ,pressmachine_name="'.$press_machine["name"].'" WHERE id="'.$data['press_id'].'" ';
				$component->db->query($query,true,"");
            	

            	
            }
		}
	}
	
	for ($i=0; $i<count($deleted_fields); $i++){
        if (!is_null($deleted_fields[$i])){
            
		    $data = $component->get_press_id($deleted_fields[$i]->id);
		    $query = ' UPDATE layout set deleted=1 WHERE id="'.$deleted_fields[$i]->id.'"  ';
		    $component->db->query($query,true,"");

		    $query = ' UPDATE pressline set deleted=1 WHERE layout_id="'.$deleted_fields[$i]->id.'"  ';
		    $component->db->query($query,true,"");
		    
		    $query = ' UPDATE press set deleted=1 WHERE id="'.$data['press_id'].'"  ';
		    $component->db->query($query,true,"");
        }
         
	}
	
	// Inks Save ----------------------------------------------------/
	$componentInk1 = new ComponentInk();
	//$component->check_modified_fields($keys, $componentInk1, $component->id);
	
	$componentInk1->mark_deletedByComponentId($return_id);
    $inks_sides = array (0 => "a", 1 => "b");
    for ($l = 0;$l < count($inks_sides);$l++){
        
	    $sum = 0;
	    for($i = 0;$i< $count; $i++) {
		    
		    if(substr_count($keys[$i],"colorId_side_".$inks_sides[$l]."_") > 0) {
                $index = substr($keys[$i],-1,1);
                
                $color_id = $_POST["colorId_side_".$inks_sides[$l]."_".$index];
               
                $componentInk = new ComponentInk();
                $componentInk->color_id = $color_id;
                $componentInk->side = $inks_sides[$l];
			    $componentInk->component_id = $component->id;
                $componentInk->save();
		    }
	    }
    }
	
	//Operations save ----------------------------------------------/
	$operations1 = new ProductOperation();
	//$component->check_modified_fields($keys, $operations1, $component->id);
	
	$operations1->mark_deletedByComponentId($return_id);
	$operation_types = array(0 => 'CutngOperations', 1 => 'OtherOperations');
	for ($p = 0; $p<count($operation_types);$p++){
		
		for($i = 0;$i< $count; $i++) {
			
			if(substr_count($keys[$i],"$operation_types[$p]_Id_") > 0) {
	            $index = substr($keys[$i],-1,1);
	            
	            $operation_id = $_POST["$operation_types[$p]_Id_".$index];
	            $operation_name = $_POST["$operation_types[$p]_Name_".$index];
	            $operations_count = $_POST["$operation_types[$p]_count_".$index];
	            $component_id = $component->id;
	            $parent_id = $component->parent_id;
	
	 	        
	            $operations = new ProductOperation();
	            $operations->operation_id = $operation_id;
	            $operations->operation_name = $operation_name;
	            $operations->name = $component->name."-".$operation_name;
	            $operations->component_id = $component_id;
				$operations->component_name = $component->name;
				$operations->operations_count = $operations_count;
	            $operations->estimate_id = $parent_id;
	            $operations->save();
			}
		}
	}
	
	
	//Prepress Save -------------------------------------------------/
	$componentPrepress1 = new ComponentPrepress();
	//$component->check_modified_fields($keys, $componentPrepress1, $component->id);
	$componentPrepress1->mark_deletedByComponentId($return_id);
	$type_array = array(0 => "ctp", 1 => "flm");
	$side_array = array(0 => "a", 1 => "b");
						
	for ($p = 0; $p<count($type_array); $p++){
		
		for ($q = 0; $q<count($side_array); $q++){
						
			for($i = 0;$i< $count; $i++) {
				
				if(substr_count($keys[$i],$type_array[$p]."_prepressId_".$side_array[$q]."_") > 0) {
		            $index = substr($keys[$i],-1,1);

		            
		            $id = $_POST[$type_array[$p]."_prepressId_".$side_array[$q]."_".$index];
		            $rate_count = $_POST[$type_array[$p]."_count_".$side_array[$q]."_".$index];
		
		 	        
		            $componentPrepress = new ComponentPrepress();
		            $componentPrepress->rate_id = $id;
		            $componentPrepress->count = $rate_count;
		            $componentPrepress->side = $side_array[$q];
		            $componentPrepress->type = $type_array[$p];
		            $componentPrepress->component_id = $component->id;
		            $componentPrepress->save();
				}
			}
		}
	}
	
	//// Status Update
	if (isset($_REQUEST['calculant_id']) && !empty($_REQUEST['calculant_id']) && !is_null($_REQUEST['calculant_id'])){
		$component->status_update('', $component->id, '', $_REQUEST['calculant_id']);
	}
	elseif (isset($_REQUEST['stat_action']) && !empty($_REQUEST['stat_action']) && !is_null($_REQUEST['stat_action'])){
		$component->status_update('', $component->id, $_REQUEST['stat_action'], '');
	}
	else{
		$component->status_update('', $component->id, '', '');
	}
	/////////////////
	
	$record = $component->get_calc_record($component->id);
	if (!empty($record) && !is_null(!$record)){
		if ($component->component_modified == true){
			$component->change_calc_status($component->id);
		}
	}
	
	
	handleRedirect($return_id,'ComponentEstimateCalc');

?>