function getQuantity(str)
{ 
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="?module=Printing&action=ajax_query"
url=url+"&q="+str
xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}

function stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {
 //alert(xmlHttp.responseText);
 document.getElementById("ajax_result").innerHTML = xmlHttp.responseText;
 document.getElementById("whole_sheets_quantity").value = document.getElementById("quantity_result").value;
 document.getElementById("count_whole_sheets").value = document.getElementById("multiplicity_result").value;
 Calc_Print();
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

function Calc_Print()
{
var color_b = document.getElementById('color_b').value;
var quantity = document.getElementById('whole_sheets_quantity').value;
if (color_b == 0){
document.getElementById('whole_sheets_preparations').value = document.getElementById('count_whole_sheets').value;
}
if (color_b > 0){
document.getElementById('whole_sheets_preparations').value = (2*document.getElementById('count_whole_sheets').value);
}

if ( document.getElementById('reversal_whole_sheets_multiplicity').value > 0){
document.getElementById('reversal_whole_sheets_quantity').value = (quantity/document.getElementById('reversal_whole_sheets_multiplicity').value);
if(color_b == 0){document.getElementById('reversal_whole_sheets_preparations').value = document.getElementById('count_reversal_whole_sheets').value;}
if(color_b > 0){document.getElementById('reversal_whole_sheets_preparations').value = (2*document.getElementById('count_reversal_whole_sheets').value);}
}

if ( document.getElementById('multiplicity_whole_sheets_multiplicity').value > 0){
document.getElementById('multiplicity_whole_sheets_quantity').value = (quantity/document.getElementById('multiplicity_whole_sheets_multiplicity').value);
if(color_b == 0){document.getElementById('multiplicity_whole_sheets_preparations').value = document.getElementById('count_whole_sheets_multiplicity').value;}
if(color_b > 0){document.getElementById('multiplicity_whole_sheets_preparations').value = (2*document.getElementById('count_whole_sheets_multiplicity').value);}
}
}