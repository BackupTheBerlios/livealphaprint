function getFormat(form,name)
{
	var selected = document.EditView.format.options[document.EditView.format.selectedIndex].value;
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
 document.getElementById("size_x").value = document.getElementById("format_x").value;
 document.getElementById("size_y").value = document.getElementById("format_y").value;
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


function select_name(form,name)
{

	
		var x = document.getElementById("size_x").value;
		var y = document.getElementById("size_y").value;	
	
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

	xmlHttp.onreadystatechange=SlectedName_format_stateChanged 
	
	 
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