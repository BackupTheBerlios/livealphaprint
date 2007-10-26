function getPaperInfo(paper_id)
{

xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=EstimateComponents&action=get_paper_info"
url=url+"&paper_id="+paper_id
xmlHttp.onreadystatechange=stateChanged_getPaperInfo 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function stateChanged_getPaperInfo() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {
	 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	 document.getElementById("papersize_x").value = document.getElementById("x").value;
	 document.getElementById("papersize_y").value = document.getElementById("y").value;
	 document.getElementById("paper_weight").value = document.getElementById("weight").value;
	 document.getElementById("paper_type").value = document.getElementById("type").value;
	 document.getElementById("paper_texture").value = document.getElementById("texture").value;
	 document.getElementById("paper_color").value = document.getElementById("color").value;
	 document.getElementById("paper_absorbtion").value = document.getElementById("absorbtion").value;
	 document.getElementById("paper_print_type").value = document.getElementById("side").value;
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