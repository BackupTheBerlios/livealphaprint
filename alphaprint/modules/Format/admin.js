function getFormat(form,name)
{
	var selected = document.ManageFormats.format.options[document.ManageFormats.format.selectedIndex].value;
	xmlHttp=GetXmlHttpObject()
	
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	
	var format_action = "get_format"
	var url="?module=Format&action=Setformat"
	url=url+"&format_action="+format_action+"&name="+name+"&selected="+selected
	
	xmlHttp.onreadystatechange=getFormat_stateChanged 
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
	
	var format_action = 'admin_save';
	var x = document.getElementById("new_x").value;
	var y = document.getElementById("new_y").value;;
	var name = document.getElementById("new_name").value;
	var obj_name = 'format';

	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	 
	var url="?module=Format&action=Setformat"
	url=url+"&format_action="+format_action+"&x="+x+"&y="+y+"&name="+name+"&obj_name="+obj_name
	
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
	 cancelForamt();
	 document.getElementById("format_result").innerHTML = null;
 } 
}

function save_modifyFormat(form)
{
	var old_name = document.getElementById("old_name").value;
	var name = document.getElementById("new_name").value;
	var x = document.getElementById("new_x").value;
	var y = document.getElementById("new_y").value;
	
	var format_action = 'modify_save';
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	var url="?module=Format&action=Setformat"
	url=url+"&format_action="+format_action+"&name="+name+"&old_name="+old_name+"&x="+x+"&y="+y
	xmlHttp.onreadystatechange=saveModify_stateChanged 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

function saveModify_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("old_name").value = document.getElementById("new_name").value
 document.getElementById("dropdown").innerHTML = document.getElementById("dropdown_modify_saved").innerHTML
 cancelForamt();
 document.getElementById("fsize_h").value = '';
 document.getElementById("fsize_w").value = '';
 document.getElementById("format_result").innerHTML = null
 } 
}

function modifyFormat(form)
{
var name = document.ManageFormats.format.options[document.ManageFormats.format.selectedIndex].value;
var format_action = 'modify';
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Format&action=Setformat"
url=url+"&format_action="+format_action+"&name="+name
xmlHttp.onreadystatechange=Modify_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function Modify_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("newFormat").innerHTML = document.getElementById("new_format_result").innerHTML
 document.getElementById("old_name").value = document.getElementById("new_name").value
 document.getElementById("format_result").innerHTML = null
 } 
}

function deleteFormat(form)
{
var name = document.ManageFormats.format.options[document.ManageFormats.format.selectedIndex].value;
var format_action = 'delete';
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Format&action=Setformat"
url=url+"&format_action="+format_action+"&name="+name
xmlHttp.onreadystatechange=delete_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function delete_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("dropdown").innerHTML = document.getElementById("deleted_format_name").innerHTML
 document.getElementById("fsize_h").value = "";
 document.getElementById("fsize_w").value = "";
 document.getElementById("format_result").innerHTML = null
 } 
}

function select_name(form)
{
var x = document.getElementById("fsize_h").value;
var y = document.getElementById("fsize_w").value;
if (x>0 && y>0){

var format = "select_name";

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Format&action=Setformat"
url=url+"&format="+format+"&x="+x+"&y="+y
xmlHttp.onreadystatechange=SlectedName_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
}

function SlectedName_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("dropdown").innerHTML = document.getElementById("selected_format_name").innerHTML
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
