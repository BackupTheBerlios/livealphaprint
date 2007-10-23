function getFormat(selected)
{
	xmlHttp=GetXmlHttpObject()
	
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 } 
	
	var format_action = "get_paper_format"
	 
	var url="?module=Paperformat&action=Format_action"
	url=url+"&format_action="+format_action+"&selected="+selected

	xmlHttp.onreadystatechange=getFormat_callback 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

function getFormat_callback() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

		 //document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	 	 document.getElementById("dropdown_format").innerHTML = xmlHttp.responseText;
		 

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
