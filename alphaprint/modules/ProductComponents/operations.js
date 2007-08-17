function AddComponentGridRow(aCells, aNames, Grid)
{
	
	var count = document.getElementById('ComponentsGrid_'+Grid).rows.length;
	for (var iCell = 0; iCell < aCells.length; iCell++)
	{
		count++;
		var tempGrid = document.getElementById('ComponentsGrid_'+Grid);
		//var  deleteButton = document.getElementById('deleteButton');
		var check_dup = check_dup_ComponentGridRow(tempGrid,aCells[iCell]);
		
			if(check_dup == true){
				continue;
			}
			
			else{
			
			
				var row = document.createElement("tr");
				row.setAttribute('id',aCells[iCell]);
				
				//####	Create Checkbox Cell	####//
				var checkboxCell = document.createElement("td");
				checkboxCell.width = "5%";
				//Create Checkbox field
 				var checkboxInput = document.createElement('input');
				checkboxInput.setAttribute('type','checkbox');
				checkboxInput.setAttribute('name','opr_checkbox');
				checkboxInput.setAttribute('value',aCells[iCell]);
				
				
				checkboxCell.appendChild(checkboxInput);
				
				//####   Create Name & Id Cell  #####//
				var idInputCell = document.createElement("td");
				
				//Create Name field
				var nameInput = document.createElement('input');
				nameInput.setAttribute('type','text');
		  		nameInput.setAttribute('name',Grid+'_Name_'+count);
		  		nameInput.setAttribute('value',aNames[iCell]);
		  		nameInput.setAttribute('readOnly', true);

				//Create Id field
				var idInput = document.createElement('input');
				idInput.setAttribute('type','hidden');
		  		idInput.setAttribute('name',Grid+'_Id_'+count);
		  		idInput.setAttribute('value',aCells[iCell]);
		  		
		  		idInputCell.appendChild(nameInput);
		  		idInputCell.appendChild(idInput); 
		  		
		  		//####   Create Count Cell  #####//
				var countCell = document.createElement("td");
		  		var countInput = document.createElement('input');
				countInput.setAttribute('type','text');
				countInput.setAttribute('size','4');
		  		countInput.setAttribute('name',Grid+'_count_'+count);
		  		countInput.setAttribute('value',''); 
		  		
		  		countCell.appendChild(countInput);		
		
				row.appendChild(checkboxCell);
				row.appendChild(idInputCell);
				row.appendChild(countCell);
				
				tempGrid.tBodies[0].appendChild(row);
			}
	}
	

	
}


function check_dup_ComponentGridRow(Grid,id){

	for (var k=0; k < Grid.rows.length;k++){
		if (Grid.rows[k].id == id){
			return true;
		}
	}
	
	return false;
}

function deleteRow(form,name,grid){

	var array_idContents = new Array();
	var tempGrid = document.getElementById(grid);
	for (i = 0; i < form.elements.length; i++){
			if(form.elements[i].name == name) { 
				if (form.elements[i].checked == true) {
					++j;
					array_idContents.push(form.elements[i].value);
						
				}
			}
		}
		
	for (var k=0; k < array_idContents.length;k++){
			var id = deleteRow_idCheck(tempGrid,array_idContents[k]);
			if (id!=-1){
				tempGrid.deleteRow(id);
						
			}
			
		}
		

}

function deleteRow_idCheck(Grid,id){

	for (var k=0; k < Grid.rows.length;k++){
		if (Grid.rows[k].id == id){
			return k;
		}
	}
	
	return -1;
}