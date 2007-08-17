function getFormat(form)
{

var format = document.EditView.format.options[document.EditView.format.selectedIndex].value;

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Format&action=Setformat"
url=url+"&format="+format
xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("size_x").value = document.getElementById("x").value;
 document.getElementById("size_y").value = document.getElementById("y").value;
 document.getElementById("format_result").innerHTML = null
 } 
}

function newForamt()
{

var format = 'new';

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Format&action=Setformat"
url=url+"&format="+format
xmlHttp.onreadystatechange=newForamt_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function newForamt_stateChanged() 
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

var format = 'save';
var x = document.getElementById("new_x").value;
var y = document.getElementById("new_y").value;;
var name = document.getElementById("new_name").value;

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
 
var url="?module=Format&action=Setformat"
url=url+"&format="+format+"&x="+x+"&y="+y+"&name="+name
xmlHttp.onreadystatechange=saved_stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}


function saved_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 
 document.getElementById("dropdown").innerHTML = document.getElementById("dropdown_saved").innerHTML
 cancelForamt();
 document.getElementById("fsize_h").value = null
 document.getElementById("size_y").value = null
 document.getElementById("format_result").innerHTML = null

 } 
}













function select_name(form)
{
var x = document.getElementById("size_x").value;
var y = document.getElementById("size_y").value;
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