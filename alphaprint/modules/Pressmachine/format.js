function getFormat(form,name)
{
	//var format = document.EditView.s_f.options[document.EditView.s_f.selectedIndex].value;
	if(name == "s_f"){
		var selected = document.EditView.s_f.options[document.EditView.s_f.selectedIndex].value;
	}
	if(name == "m_f"){
		var selected = document.EditView.m_f.options[document.EditView.m_f.selectedIndex].value;
	}
	if(name == "mp_f"){
		var selected = document.EditView.mp_f.options[document.EditView.mp_f.selectedIndex].value;
	}
	xmlHttp=GetXmlHttpObject()
	
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 } 
	
	var format_action = "get_format"
	 
	var url="?module=Format&action=Setformat"
	url=url+"&format_action="+format_action+"&selected="+selected+"&name="+name
	 if (name == "s_f")
	 {
		xmlHttp.onreadystatechange=get_Sformat_stateChanged 
	 }
	 if (name == "m_f")
	 {
		xmlHttp.onreadystatechange=get_Mformat_stateChanged 
	 }
	 if (name == "mp_f")
	 {
		xmlHttp.onreadystatechange=get_MPformat_stateChanged 
	 }
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

function get_Sformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

		 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	 	 document.getElementById("s_x").value = document.getElementById("s_f_x").value;
		 document.getElementById("s_y").value = document.getElementById("s_f_y").value;
		 document.getElementById("format_result").innerHTML = null

 } 
}

function get_Mformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

		 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
		 document.getElementById("m_x").value = document.getElementById("m_f_x").value;
		 document.getElementById("m_y").value = document.getElementById("m_f_y").value;
		 document.getElementById("format_result").innerHTML = null
	
 } 
}

function get_MPformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

		 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
		 document.getElementById("mp_x").value = document.getElementById("mp_f_x").value;
		 document.getElementById("mp_y").value = document.getElementById("mp_f_y").value;
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

var format_action = 'component_save';
var x = document.getElementById("new_x").value;
var y = document.getElementById("new_y").value;;
var name = document.getElementById("new_name").value;
var obj_name1 = 's_f';
var obj_name2 = 'm_f';
var obj_name3 = 'mp_f';
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
 
 document.getElementById("s_dropdown").innerHTML = document.getElementById("saved_s_f").innerHTML
 document.getElementById("m_dropdown").innerHTML = document.getElementById("saved_m_f").innerHTML
 document.getElementById("mp_dropdown").innerHTML = document.getElementById("saved_mp_f").innerHTML
 
 cancelForamt();
 document.getElementById("format_result").innerHTML = null

 } 
}

function select_name(form,name)
{

	if(name == "s_f"){
		var x = document.getElementById("s_x").value;
		var y = document.getElementById("s_y").value;	
	}
	if(name == "m_f"){
		var x = document.getElementById("m_x").value;
		var y = document.getElementById("m_y").value;
	}
	if(name == "mp_f"){
		var x = document.getElementById("mp_x").value;
		var y = document.getElementById("mp_y").value;
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
if (name == "s_f")
	 {
		xmlHttp.onreadystatechange=SlectedName_sformat_stateChanged 
	 }
	 if (name == "m_f")
	 {
		xmlHttp.onreadystatechange=SlectedName_mformat_stateChanged 
	 }
	 if (name == "mp_f")
	 {
		xmlHttp.onreadystatechange=SlectedName_mpformat_stateChanged 
	 }
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
}

function SlectedName_sformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("s_dropdown").innerHTML = document.getElementById("selected_s_f").innerHTML
 document.getElementById("format_result").innerHTML = null
 } 
}

function SlectedName_mformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("m_dropdown").innerHTML = document.getElementById("selected_m_f").innerHTML
 document.getElementById("format_result").innerHTML = null
 } 
}

function SlectedName_mpformat_stateChanged() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 document.getElementById("mp_dropdown").innerHTML = document.getElementById("selected_mp_f").innerHTML
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
