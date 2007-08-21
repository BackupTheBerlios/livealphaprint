function selectmode(){
	document.getElementById('selected_prepress_options').value = document.getElementById('prepress_options').selectedIndex;
	document.getElementById('screen').innerHTML = document.getElementById('screen_choose_mode').innerHTML;
}

function manual_mode(){
	document.getElementById('screen').innerHTML = document.getElementById('manual_mode').innerHTML;
}
function cancelManual(){
	document.getElementById('screen').innerHTML = document.getElementById('screen1').innerHTML;
}

function AddPrepressGridRow(side,aX,aY,aIds,aNames,aGauge)
{
	
	for (var iCell = 0; iCell < aIds.length; iCell++)
	{
		 
		if (aGauge[0]){
			
			var prepressGrid = document.getElementById('ctpGrid_side'+side);
			var type = "ctp";
			var count = document.getElementById('ctpGrid_side'+side).rows.length;
		}
		else {
			var prepressGrid = document.getElementById('filmGrid_side'+side);
			var type= "flm";
			var count = document.getElementById('filmGrid_side'+side).rows.length;
		}
		count++;
		
		//var prepressGrid = document.getElementById('prepressGrid');
		//var  deleteButton = document.getElementById('deleteButton');
		//var check_dup = check_dup_ComponentGridRow(prepressGrid,aCells[iCell]);

				var row = document.createElement("tr");
				row.setAttribute('id',aIds[iCell]);
				
				//####	Create Checkbox Cell	####//
				var checkboxCell = document.createElement("td");
				//checkboxCell.width = "5%";
				//Create Checkbox field
 				var checkboxInput = document.createElement('input');
				checkboxInput.setAttribute('type','checkbox');
				checkboxInput.setAttribute('name','prepress_checkbox');
				checkboxInput.setAttribute('value',aIds[iCell]);
				checkboxCell.appendChild(checkboxInput);
				
				//####	Create Count Cell	####//
				var countCell = document.createElement("td");
				//countCell.width = "5%";
				//Create Count field
 				var countInput = document.createElement('input');
				countInput.setAttribute('type','text');
				countInput.setAttribute('size','4');
				countInput.setAttribute('name',type+'_count_'+side+'_'+count);
				countInput.setAttribute('id',type+'_count_'+side+'_'+count);
				countInput.setAttribute('value', '1');
				countCell.appendChild(countInput);
				
				//####	Create Name Cell	####//
				var nameCell = document.createElement("td");
				//countCell.width = "5%";
				//Create Name field
 				var nameInput = document.createElement('input');
				nameInput.setAttribute('type','text');
				nameInput.setAttribute('name',type+'_name_'+side+'_'+count);
				nameInput.setAttribute('value',aNames[iCell]);
				nameInput.setAttribute('readOnly', true);
				nameCell.appendChild(nameInput);
				
				
				//####   Create Format and Id  #####//
				var formatCell = document.createElement("td");
				//formatCell.width = "5%";
				//Create Format field
				var formatInput = document.createElement('input');
				formatInput.setAttribute('type','text');
				formatInput.setAttribute('size','5');
		  		formatInput.setAttribute('name',type+'_format_'+side+'_'+count);
		  		formatInput.setAttribute('value',aX[iCell]+'x'+aY[iCell]);
		  		formatInput.setAttribute('readOnly', true);

				//Create Id field
				var idInput = document.createElement('input');
				idInput.setAttribute('type','hidden');
		  		idInput.setAttribute('name',type+'_prepressId_'+side+'_'+count);
		  		idInput.setAttribute('value',aIds[iCell]);
		  		
		  		formatCell.appendChild(formatInput);
		  		formatCell.appendChild(idInput);  		
				
				row.appendChild(checkboxCell);
				row.appendChild(nameCell);
				row.appendChild(formatCell);
				
				
				
				if (aGauge[0]){
				
					//####   Create Gauge Cell #####//
					var gaugeCell = document.createElement("td");
					//gaugeCell.width = "5%";
					
					//Create Gauge field
					var gaugeInput = document.createElement('input');
					gaugeInput.setAttribute('type','text');
					gaugeInput.setAttribute('size','4');
			  		gaugeInput.setAttribute('name',type+'_gauge_'+side+'_'+count);
			  		gaugeInput.setAttribute('value',aGauge[iCell]);
			  		gaugeInput.setAttribute('readOnly', true);
					gaugeCell.appendChild(gaugeInput);
					
					row.appendChild(gaugeCell);
			  	}
			  	
			  	row.appendChild(countCell);
			  	
				prepressGrid.tBodies[0].appendChild(row);
				
				var formname = "EditView";
				if(typeof validate[formname] == 'undefined') {
					addForm(formname);
				}
				validate[formname][validate[formname].length] = new Array(countInput.name, 'int',true, '');
			

			
	}
		document.getElementById('testval').value = prepressGrid.innerHTML;
	
	
}
