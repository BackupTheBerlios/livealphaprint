function AddInkGridRow(aCells, aNames, side)
{
	var names = "";
	var tempGrid = document.getElementById('InkGrid_'+side);
	clearInks(tempGrid,side);
	
	for (var iCell = 0; iCell < aCells.length; iCell++)
	{
				if (names == ""){
					names = aNames[iCell];
				}
				else {
					names = names+","+aNames[iCell];
				}
				
				var row = document.createElement("tr");
				row.setAttribute('id',aCells[iCell]);
				//####   Create Name & Id Cell  #####//
				var idInputCell = document.createElement("td");

				//Create Id field
				var idInput = document.createElement('input');
				idInput.setAttribute('type','hidden');
		  		idInput.setAttribute('name','colorId_'+side+'_'+iCell);
		  		idInput.setAttribute('value',aCells[iCell]);

		  		idInputCell.appendChild(idInput);  		
				row.appendChild(idInputCell);
				
				tempGrid.tBodies[0].appendChild(row);
			
	}
		window.document.getElementById('inks_names_'+side).value = names;	
}

function check_dup_inks(Grid,id){

	for (var k=0; k < Grid.rows.length;k++){
		if (Grid.rows[k].id == id){
			return true;
		}
	}
	
	return false;
}

function clearInks(Grid,side){

	for (var k=0; k = Grid.rows.length;k++){
		//alert('row N:'+k);
		Grid.deleteRow(0);
	}
	document.getElementById('inks_names_'+side).value = "";
}
