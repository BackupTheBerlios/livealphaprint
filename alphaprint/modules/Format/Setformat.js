function getFormat(form,name)
{
var formname = document.getElementById("formname").value
	if (formname == "productComponentsQuickCreate"){
		if(name == "format"){
			var selected = document.productComponentsQuickCreate.format.options[document.productComponentsQuickCreate.format.selectedIndex].value;
		}
		if(name == "run_format"){
			var selected = document.productComponentsQuickCreate.run_format.options[document.productComponentsQuickCreate.run_format.selectedIndex].value;
		}
		if(name == "bleed_format"){
			var selected = document.productComponentsQuickCreate.bleed_format.options[document.productComponentsQuickCreate.bleed_format.selectedIndex].value;
		}
		if(name == "press_format"){
			var selected = document.productComponentsQuickCreate.press_format.options[document.productComponentsQuickCreate.press_format.selectedIndex].value;
		}
	}
	
	else{
		if(name == "format"){
			var selected = document.EditView.format.options[document.EditView.format.selectedIndex].value;
		}
		if(name == "run_format"){
			var selected = document.EditView.run_format.options[document.EditView.run_format.selectedIndex].value;
		}
		if(name == "bleed_format"){
			var selected = document.EditView.bleed_format.options[document.EditView.bleed_format.selectedIndex].value;
		}
		if(name == "press_format"){
			var selected = document.EditView.press_format.options[document.EditView.press_format.selectedIndex].value;
		}
	} 

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var format_action = "get_format"
var url="?module=Format&action=Setformat"
url=url+"&format_action="+format_action+"&name="+name+"&selected="+selected

if (name == "format"){
	xmlHttp.onreadystatechange=getFormat_stateChanged 
}

if (name == "run_format"){

	xmlHttp.onreadystatechange=getRun_format_stateChanged 
}

if (name == "bleed_format"){
	
	xmlHttp.onreadystatechange=getBleed_format_stateChanged 
}

if (name == "press_format"){
	
	xmlHttp.onreadystatechange=getPress_format_stateChanged 
}

xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function getFormat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("fsize_h").value = document.getElementById("format_x").value;
 document.getElementById("fsize_w").value = document.getElementById("format_y").value;
 document.getElementById("format_result").innerHTML = null
 } 
}

function getRun_format_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {
 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("run_size_x").value = document.getElementById("run_format_x").value;
 document.getElementById("run_size_y").value = document.getElementById("run_format_y").value;
 document.getElementById("format_result").innerHTML = null
 } 
}

function getBleed_format_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("bleed_size_x").value = document.getElementById("bleed_format_x").value;
 document.getElementById("bleed_size_y").value = document.getElementById("bleed_format_y").value;
 document.getElementById("format_result").innerHTML = null
 } 
}

function getPress_format_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("press_size_x").value = document.getElementById("press_format_x").value;
 document.getElementById("press_size_y").value = document.getElementById("press_format_y").value;
 document.getElementById("format_result").innerHTML = null
 } 
}

function newFormat()
{

var format_action = 'new';

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Format&action=Setformat"
url=url+"&format_action="+format_action
xmlHttp.onreadystatechange=newFormat_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function newFormat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 //alert(document.getElementById("new_format_result").innerHTML);
 document.getElementById("newFormat").innerHTML = document.getElementById("new_format_result").innerHTML
 document.getElementById("format_result").innerHTML = null

 } 
}

function cancelForamt()
{

document.getElementById("newFormat").innerHTML = '';

}

function saveFormat(form)
{

var format_action = 'component_save';
var x = document.getElementById("new_x").value;
var y = document.getElementById("new_y").value;;
var name = document.getElementById("new_name").value;
alert(name);
var obj_name1 = 'format';
var obj_name2 = 'run_format';
var obj_name3 = 'bleed_format';
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
 
var url="?module=Format&action=Setformat"
url=url+"&format_action="+format_action+"&x="+x+"&y="+y+"&name="+name+"&obj_name1="+obj_name1+"&obj_name2="+obj_name2+"&obj_name3="+obj_name3

xmlHttp.onreadystatechange=saved_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}


function saved_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {
	 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	 document.getElementById("dropdown").innerHTML = document.getElementById("saved_format").innerHTML
	 document.getElementById("dropdown_run_format").innerHTML = document.getElementById("saved_run_format").innerHTML
	 document.getElementById("dropdown_bleed_format").innerHTML = document.getElementById("saved_bleed_format").innerHTML
	 cancelForamt();
	// document.getElementById("format_result").innerHTML = null;
 } 
}

function select_name(form,name)
{

	if(name == "format"){
		var x = document.getElementById("fsize_h").value;
		var y = document.getElementById("fsize_w").value;	
	}
	if(name == "run_format"){
		var x = document.getElementById("run_size_x").value;
		var y = document.getElementById("run_size_y").value;
	}
	if(name == "bleed_format"){
		var x = document.getElementById("bleed_size_x").value;
		var y = document.getElementById("bleed_size_y").value;
	}
	
	if(name == "press_format"){
		var x = document.getElementById("press_size_x").value;
		var y = document.getElementById("press_size_y").value;
	}

	if (x>0 && y>0){
	
	var format_action = "select_name";
	
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	 
	var url="?module=Format&action=Setformat"
	url=url+"&format_action="+format_action+"&x="+x+"&y="+y+"&name="+name

	if (name == "format")
	 {
		xmlHttp.onreadystatechange=SlectedName_format_stateChanged 
	 }
	 if (name == "run_format")
	 {
		xmlHttp.onreadystatechange=SlectedName_runformat_stateChanged 
	 }
	 if (name == "bleed_format")
	 {
		xmlHttp.onreadystatechange=SlectedName_bleedformat_stateChanged 
	 }
	 if (name == "press_format")
	 {
		xmlHttp.onreadystatechange=SlectedName_pressformat_stateChanged 
	 }
	 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
}

function SlectedName_format_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("dropdown").innerHTML = document.getElementById("selected_format").innerHTML
 document.getElementById("format_result").innerHTML = null
 } 
}

function SlectedName_runformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("dropdown_run_format").innerHTML = document.getElementById("selected_run_format").innerHTML
 document.getElementById("format_result").innerHTML = null
 } 
}

function SlectedName_bleedformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("dropdown_bleed_format").innerHTML = document.getElementById("selected_bleed_format").innerHTML
 document.getElementById("format_result").innerHTML = null
 } 
}

function SlectedName_pressformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("dropdown_press_format").innerHTML = document.getElementById("selected_press_format").innerHTML
 document.getElementById("format_result").innerHTML = null
 } 
}

function GetXmlHttpObject()
{
var xmlHttp=null;
try
 {
 // Firefox, Opera 8.0+, Safari
 xmlHttp=new XMLHttpRequest();
 }
catch (e)
 {
 //Internet Explorer
 try
  {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e)
  {
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
