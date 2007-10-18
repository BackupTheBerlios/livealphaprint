var size_name;
function getFormat(selected,name)
{
size_name = name;
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var format_action = "get_format"
var url="?module=Paperformat&action=Format_action"
url=url+"&format_action="+format_action+"&name="+name+"&selected="+selected

xmlHttp.onreadystatechange=getFormat_callback


xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function getFormat_callback() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("x").value = document.getElementById(size_name+"_x").value;
 document.getElementById("y").value = document.getElementById(size_name+"_y").value;
 document.getElementById("dropdown_child").innerHTML =  document.getElementById("dropdown_child_callback").innerHTML;
 //document.getElementById("format_result").innerHTML = '';
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
	
	var url="?module=Paperformat&action=Format_action"
	url=url+"&format_action="+format_action
	xmlHttp.onreadystatechange=newFormat_callback 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

function newFormat_callback() 
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
	
	var format_action = 'save';
	var x = document.getElementById("new_x").value;
	var y = document.getElementById("new_y").value;;
	//var name = document.getElementById("new_name").value;
	var obj_name = 'base_format';

	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	 
	var url="?module=Paperformat&action=Format_action"
	url=url+"&format_action="+format_action+"&x="+x+"&y="+y+"&obj_name="+obj_name
	
	xmlHttp.onreadystatechange=saveFormat_callback 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}


function saveFormat_callback() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {
	 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	 document.getElementById("dropdown_base").innerHTML = document.getElementById("saved_base_format").innerHTML
	 cancelForamt();
	 document.getElementById("format_result").innerHTML = '';
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
