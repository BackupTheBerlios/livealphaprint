<?php
require_once('data/SugarBean.php');
require_once('include/utils.php');

class Format extends SugarBean {

	
	function Format()
	{
		parent::SugarBean();

	}
	
	function Get_Dropdown_Data(){
	
		$query = 'SELECT name FROM formats ORDER BY name ASC ';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$dropdown_data = array();
         
		while($data = $this->db->fetchByAssoc($result)) {
		$v = $data['name'];
		$dropdown_data[$v] = $v;			
		}
		
		return $dropdown_data;

	}
	
	function Get_Html_Dropdown_Data($obj_name){
	
		$query = 'SELECT name FROM formats ORDER BY name ASC ';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$n = $this->db->getRowCount($result);
		
		
        //header('Content-Type: text/xml');
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
		echo '<div id="saved_'.trim($obj_name).'">';
		echo '<select name='.trim($obj_name).' tabindex="1" onChange="getFormat(form,'.trim($obj_name).'.name);">'; 
		
		    for ($i=0; $i<$n; $i++) {
				$data = $this->db->fetchByAssoc($result);
				$v = $data['name'];
				
					 echo '<option value="'.trim($v).'">'.trim($v).'</option>';
				
				
		    }
		
		echo '</select>'; 
		echo '</div>';
		
		

	}

	function Get_Format($selected_format,$name){
		
		$query = " SELECT x,y FROM formats where name='$selected_format' ";		
		$result = $this->db->query($query,true," Error getting format");
		
		$data = $this->db->fetchByAssoc($result);
		
		//header('Content-Type: text/xml');
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
		echo '<input name="'.$name.'_x" id="'.$name.'_x" value='.$data['x'].'>';
		echo '<input name="'.$name.'_y" id="'.$name.'_y" value='.$data['y'].'>';
		
	
	
	}
	
	function Modify_Format($selected_format){
		
		$query = " SELECT x,y,name FROM formats where name='$selected_format' ";		
		$result = $this->db->query($query,true," Error getting format");
		
		$data = $this->db->fetchByAssoc($result);
		
		//header('Content-Type: text/xml');
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
			
		echo '<div id="new_format_result">';
		echo '<input size="12" maxlength="50" type="text" name="new_x" id="new_x" value="'.$data['x'].'" > x ';
		echo '<input size="12" maxlength="50" type="text" name="new_y" id="new_y" value="'.$data['y'].'" >';
		echo '&nbsp;<input size="15" maxlength="50" type="text" name="new_name" id="new_name" value="'.$data['name'].'" >&nbsp;';	
		echo '<span class="dataField"><input type="button" class="button" value="Запиши" name="save_modify_format_btn" onClick="save_modifyFormat();" />&nbsp;<input type="button" class="button" value="Отказ" name="cancel_format_btn" onClick="cancelForamt();" /></span>';
		echo '</div>';
	
	}
	
	function Save_Modify_Format($name,$old_name,$x,$y){
		
		$query = " UPDATE formats SET x='$x', y='$y', name='$name' WHERE name='$old_name' ";		
		$this->db->query($query,true," Error getting format");
		$query = 'SELECT name FROM formats';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$n = $this->db->getRowCount($result);
		
		
        //header('Content-Type: text/xml');
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
		echo '<div id="dropdown_modify_saved">';
		echo '<select name="format" tabindex="1" onChange="getFormat(form,format.name);">'; 
		
		    for ($i=0; $i<$n; $i++) {
				$data = $this->db->fetchByAssoc($result);
				$v = $data['name'];
				
					 echo '<option value="'.trim($v).'">'.trim($v).'</option>';
				
				
		    }
		
		echo '</select>'; 
		echo '</div>';
	}
	
	function Delete_Format($selected_format){
		
		$query = "DELETE FROM formats where name='$selected_format' ";		
		$this->db->query($query,true," Error getting format");
		
		$query = 'SELECT name FROM formats ORDER BY name ASC ';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$n = $this->db->getRowCount($result);
		
		
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
		echo '<div id="deleted_format_name">';
		echo '<select name="format" tabindex="1" onChange="getFormat(form,format.name);">'; 
		
		    for ($i=0; $i<$n; $i++) {
				$data = $this->db->fetchByAssoc($result);
				$v = $data['name'];
				
				echo '<option value="'.trim($v).'">'.trim($v).'</option>';
											
		    }
		
		echo '</select>'; 
		echo '</div>';
		
		
	
	}
	
	function New_Format(){
	require_once('include/language/bg_bg.lang.php');

		//header('Content-Type: text/xml');
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");	
		echo '<div id="new_format_result">';
		echo '<input size="12" maxlength="50" type="text" name="new_x" id="new_x" value="ширина" > x ';
		echo '<input size="12" maxlength="50" type="text" name="new_y" id="new_y" value="височина" >';
		echo '&nbsp;<input size="15" maxlength="50" type="text" name="new_name" id="new_name" value="име" >&nbsp;';	
		echo '<span class="dataField"><input type="button" class="button" value="Запиши" name="save_format_btn" onClick="saveFormat();" />&nbsp;<input type="button" class="button" value="Отказ" name="cancel_format_btn" onClick="cancelForamt();" /></span>';
		echo '</div>';
	}
	
	function Save_Format($x, $y, $name){
		
		$query = " insert into formats values($x, $y, '$name') ";
		$this->db->query($query,true," Error inserting format");
		
	}
	
	function Select_Format_Name($x, $y, $obj_name){
		
		$query = " select name from formats where x=$x AND y=$y ";
		$result = $this->db->query($query,true," Error inserting format");
		
		$selected = $this->db->fetchByAssoc($result);
		
	
		//echo '<input name=selected_name id=selected_name value='.$data['name'].'>';

		$query = 'SELECT name FROM formats ORDER BY name ASC ';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$n = $this->db->getRowCount($result);
		
		
        //header('Content-Type: text/xml');
		header("Cache-Control: no-cache, must-revalidate");
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
		echo '<div id="selected_'.$obj_name.'">';
		echo '<select id="'.$obj_name.'" name="'.$obj_name.'" tabindex="1" onChange="getFormat(form,'.$obj_name.'.name);">'; 
		
		    for ($i=0; $i<$n; $i++) {
				$data = $this->db->fetchByAssoc($result);
				$v = $data['name'];
				if ($v == $selected['name']){
					echo '<option selected value="'.trim($v).'">'.trim($v).'</option>';	
				}
				if ($v != $selected['name']){
					echo '<option value="'.trim($v).'">'.trim($v).'</option>';
				}
				
				
		    }
		
		echo '</select>'; 
		echo '</div>';
	}

	function Get_Html_Dropdown_Data_Config(){
	
		$query = 'SELECT name FROM formats ORDER BY name ASC ';		
		$result = $this->db->query($query,true," Error selecting dropdown data");
		
		$n = $this->db->getRowCount($result);
		
	
		echo '<div id="dropdown">';
		echo '<select name="format" tabindex="1" onChange="getFormat(form);">'; 
		
		    for ($i=0; $i<$n; $i++) {
				$data = $this->db->fetchByAssoc($result);
				$v = $data['name'];
				
					 echo '<option value="'.trim($v).'">'.trim($v).'</option>';
				
				
		    }
		
		echo '</select>'; 
		echo '</div>';

	}
	
	

	}



?>