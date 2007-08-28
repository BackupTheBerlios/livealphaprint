/**
 *
 * Popup helper functions
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



function send_back(module, id)
{
	var associated_row_data = associated_javascript_data[id];
	eval("var request_data = " + window.document.forms['popup_query_form'].request_data.value);
	var passthru_data = Object();
	if(typeof(request_data.passthru_data) != 'undefined')
	{
		passthru_data = request_data.passthru_data;
	}
	var form_name = request_data.form_name;
	var field_to_name_array = request_data.field_to_name_array;
	
	var call_back_function = eval("window.opener." + request_data.call_back_function);
	
	if (typeof request_data.custom_callback_fucntion != "undefined"){
		var custom_callback_fucntion = eval("window.opener." + request_data.custom_callback_fucntion);	
	}
	
	var array_contents = Array();

	// constructs the array of values associated to the bean that the user clicked
	for(var the_key in field_to_name_array)
	{
		if(the_key != 'toJSON')
		{
			var the_name = field_to_name_array[the_key];
			var the_value = '';

			if(module != '' && id != '')
			{
				the_value = associated_row_data[the_key.toUpperCase()];
			}
			
			if (typeof(the_value) == 'string') {
				the_value = the_value.replace(/\r\n/g, '\\n');
			}
			
			array_contents.push('"' + the_name + '":"' + the_value + '"');
		}
	}
	
	eval("var name_to_value_array = {" + array_contents.join(",") + "}");

	var result_data = {"form_name":form_name,"name_to_value_array":name_to_value_array,"passthru_data":passthru_data};
	var close_popup = window.opener.get_close_popup();
	
	call_back_function(result_data);
	
	if (typeof custom_callback_fucntion != "undefined"){
		custom_callback_fucntion();	
	}

	if(close_popup)
	{
		window.close();
	}
}

function send_back_selected(module, form, field, error_message)
{
	var array_contents = Array();
	var j=0;
	for (i = 0; i < form.elements.length; i++){
		if(form.elements[i].name == field) { 
			if (form.elements[i].checked == true) {
				++j;
				array_contents.push('"' + "ID_" + j  + '":"' + form.elements[i].value + '"');
			}
		}
	}
	if (array_contents.length ==0 ) {
		window.alert(error_message);	
		return;
	}
	
	eval("var selection_list_array = {" + array_contents.join(",") + "}");
	
	eval("var request_data = " + window.document.forms['popup_query_form'].request_data.value);
	var passthru_data = Object();
	if(typeof(request_data.passthru_data) != 'undefined')
	{
		passthru_data = request_data.passthru_data;
	}
	var form_name = request_data.form_name;
	var field_to_name_array = request_data.field_to_name_array;
	var call_back_function = eval("window.opener." + request_data.call_back_function);

	var result_data={"form_name":form_name,"selection_list":selection_list_array ,"passthru_data":passthru_data};
	var close_popup = window.opener.get_close_popup();
	
	call_back_function(result_data);

	if(close_popup)
	{
		window.close();
	}
}

function send_back_selected_operations(module, form, field, error_message)
{	
	var array_idContents = Array();
	var array_nameContents = Array();
	var grid = document.getElementById('return_side').value;
	
	var j=0;
	for (i = 0; i < form.elements.length; i++){
		if(form.elements[i].name == field) { 
			if (form.elements[i].checked == true) {
				++j;
				array_idContents.push(form.elements[i].value);
				
				//Get and Push element names into array
				var name = document.getElementById(form.elements[i].value).value;
				array_nameContents.push(name);
			}
		}
	}
	if (array_idContents.length ==0 || array_nameContents.length ==0) {
		window.alert(error_message);	
		return;
	}
	eval("var request_data = " + window.document.forms['popup_query_form'].request_data.value);
	var call_back_function = eval("window.opener." + request_data.call_back_function);
	var close_popup = window.opener.get_close_popup();
	call_back_function(array_idContents,array_nameContents,grid);
	if(close_popup)
	{
		window.close();
	}
}

function send_back_selected_plates(module, form, field, error_message)
{	
	var aX = new Array();
	var aY = new Array();
	var aGauge = new Array();
	var aIds = new Array();
	var aNames = new Array();
	var side = document.getElementById('return_side').value;
	eval("var request_data = " + window.document.forms['popup_query_form'].request_data.value);
	var field_to_name_array = request_data.field_to_name_array;
	var associated_row_data;
	
	
	var j=0;
	for (i = 0; i < form.elements.length; i++){
		if(form.elements[i].name == field) { 
			if (form.elements[i].checked == true) {
				++j;

				aIds.push(form.elements[i].value);
			}
		}
	}

	for (q=0; q < aIds.length; q++){
		var id = aIds[q];

		associated_row_data = associated_javascript_data[id];
		var fields = new Array("name","size_x","size_y","gauge");
		
		for( p=0; p < fields.length; p++)
		{
				if (fields[p] == "name"){
					var the_value = associated_row_data[fields[p].toUpperCase()];
					aNames.push(the_value);
				}
				if (fields[p] == "size_x"){
					var the_value = associated_row_data[fields[p].toUpperCase()];
					aX.push(the_value);
				}
				if (fields[p] == "size_y"){
					var the_value = associated_row_data[fields[p].toUpperCase()];
					aY.push(the_value);
				}
				if (fields[p] == "gauge"){
					var the_value = associated_row_data[fields[p].toUpperCase()];
					aGauge.push(the_value);
				}
				if (typeof(the_value) == 'string') {
					the_value = the_value.replace(/\r\n/g, '\\n');
				}
		}
		
	}
	if (aIds.length ==0) {
		window.alert(error_message);	
		return;
	}

	var call_back_function = eval("window.opener." + request_data.call_back_function);
	var close_popup = window.opener.get_close_popup();
	
	call_back_function(side,aX,aY,aIds,aNames,aGauge);
	if(close_popup)
	{
		window.close();
	}
}

function send_back_selected_inks(module, form, field, error_message)
{	
	
	var array_idContents = Array();
	var array_nameContents = Array();
	var side = document.getElementById('return_side').value;
	var colors = window.opener.document.getElementById('color_'+side).value;

	var j=0;
	

	for (i = 0; i < form.elements.length; i++){
		if(form.elements[i].name == field) { 
			if (form.elements[i].checked == true) {
				++j;
				array_idContents.push(form.elements[i].value);
				
				//Get and Push element names into array
				var name = document.getElementById(form.elements[i].value).value;
				array_nameContents.push(name);
			}
		}
	}
	if (array_idContents.length ==0 || array_nameContents.length ==0) {
		window.alert(error_message);	
		return;
	}

	if(colors < array_idContents.length){
		alert("Error");
		return;
	}
	eval("var request_data = " + window.document.forms['popup_query_form'].request_data.value);
	var call_back_function = eval("window.opener." + request_data.call_back_function);
	var close_popup = window.opener.get_close_popup();
	call_back_function(array_idContents,array_nameContents,side);
	if(close_popup)
	{
		window.close();
	}
}

