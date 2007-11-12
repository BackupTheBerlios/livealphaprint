function checkFloat(floatStr) {
	if((floatStr == '')) {
		
		return false;
	}
	if((floatStr == null)) {
		
		return false;
	}
	if(floatStr.length== 0) {
		
		return false;
	}
	floatStr = unformatNumber(floatStr, num_grp_sep, dec_sep).toString();

	if(!/^[0-9\.]+$/.test(floatStr))
	{
		
		return false
	}
	return true	
}
function checkLayout(value, type){
	if((value == '') || (value == null) || (value == 0)) {
		return false;
	}
	if(typeof num_grp_sep != 'undefined' && typeof dec_sep != 'undefined')
		value = unformatNumber(value, num_grp_sep, dec_sep).toString();

	var i;
    for (i = 0; i < value.length; i++){
        // Check that current character is number.
        var c = value.charAt(i);
        if (((c < "0") || (c > "9"))) 
        {
	        return false;
        }
    }
    // All characters are numbers.
    return true;
}
function checkColor(value){
	if((value == '') || (value == null) || (value == 0)) {
		return false;
	}
	if(typeof num_grp_sep != 'undefined' && typeof dec_sep != 'undefined')
		value = unformatNumber(value, num_grp_sep, dec_sep).toString();

	var i;
    for (i = 0; i < value.length; i++){
        // Check that current character is number.
        var c = value.charAt(i);
        if (((c < "0") || (c > "9"))) 
        {
	        return false;
        }
    }
    // All characters are numbers.
    return true;
}
function get_preress_data(form){
	if (!checkFloat(document.EditView.pressformat_x.value)){
		pressformat_error();
		return
	}
	if (!checkFloat(document.EditView.pressformat_y.value)){
		pressformat_error();
		return
	}
	document.EditView.prepress_x.value = document.EditView.pressformat_x.value;	
	document.EditView.prepress_y.value = document.EditView.pressformat_y.value;
	var number_lots = 0;
	var run_style = 0;

	for (i = 0; i < form.elements.length; i++){
		//alert(form.elements[i].name);
		if(form.elements[i].name.match("number_lots_")) {
		 
			var length = form.elements[i].name.length;
			length = length - 1;		 
			var index = form.elements[i].name.substr(length);	

			if (document.getElementById('run_style_'+index).value == 1) {
				if (!checkLayout(form.elements[i].value,1)){
					layout_error();
					return
				}
				number_lots = number_lots + form.elements[i].value;	
			}
			
			if (document.getElementById('run_style_'+index).value != 1) {
				if (!checkLayout(form.elements[i].value,2)){
					layout_error();
					return
				}
				run_style = run_style + form.elements[i].value;	
			}
		}
	
	}
	/*if (!checkColor(document.EditView.color_side_a.value)){
		color_error();
		return
	}
	if (!checkColor(document.EditView.color_side_b.value)){
		color_error();
		return
	}*/
	//alert(number_lots);
	//alert(run_style);
	document.EditView.lots_run_style_1.value = number_lots;	
	document.EditView.lots_run_style_2.value = run_style;
	gen_prepress_rows();
	//alert(document.EditView.lots_run_style_1.value);
	//alert(document.EditView.lots_run_style_2.value);
	
		
	
}

function gen_prepress_rows()
{

var lots_run_style_1 = document.EditView.lots_run_style_1.value;
var lots_run_style_2 = document.EditView.lots_run_style_2.value;
var prepress_x = document.EditView.prepress_x.value;
var prepress_y = document.EditView.prepress_y.value;
var prepress_type = document.EditView.prepress_type.value;
var color_side_a = document.EditView.color_side_a.value;
var color_side_b = document.EditView.color_side_b.value;

lots_run_style_1 = parseInt(lots_run_style_1);
lots_run_style_2 = parseInt(lots_run_style_2);

/*alert(lots_run_style_1);
alert(lots_run_style_2);
alert(prepress_x);
alert(prepress_y);
alert(prepress_type);
alert(color_side_a);
alert(color_side_b);*/

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Home&action=PrepressCreates"
url=url+"&lots_run_style_1="+lots_run_style_1
url=url+"&lots_run_style_2="+lots_run_style_2
url=url+"&prepress_x="+prepress_x
url=url+"&prepress_y="+prepress_y
url=url+"&prepress_type="+prepress_type
url=url+"&color_side_a="+color_side_a
url=url+"&color_side_b="+color_side_b

xmlHttp.onreadystatechange=gen_prepress_rows_callback 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function gen_prepress_rows_callback() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 SUGAR.util.evalScript(xmlHttp.responseText);
 document.getElementById("screen").style.display = 'none';
 document.getElementById("manual_mode").style.display = '';

 } 
}

function cancelManual(){
	toggleDisplay('screen');
	toggleDisplay('manual_mode');
	document.getElementById("ctp").style.display = 'none';
	document.getElementById("film").style.display = 'none';
	var grids = new Array();
	grids[0] = "ctpGrid_sidea";
	grids[1] = "ctpGrid_sideb";
	grids[2] = "filmGrid_sidea";
	grids[3] = "filmGrid_sideb";
	for (var p=0; p<grids.length; p++){
		//alert (grids[p]);
		var rows = document.getElementById(grids[p]).rows.length;
		//alert(rows);
		for (var i=0; i<rows; i++){
			document.getElementById(grids[p]).deleteRow(0);	
		}
	}
}

function AddPrepressGridRow(side,aX,aY,aIds,aNames,aGauge,count_value)
{
	if (count_value == ""){
		count_value = 1;
	}	
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
				countInput.setAttribute('value', count_value);
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
		
	
}
