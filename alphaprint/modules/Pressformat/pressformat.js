var format_type;
var action;

function getFormat(selected,name)
{
	if ((selected == '-') && (name == 'child_format')){
			document.getElementById("child_x").value = '';
			document.getElementById("child_y").value = '';	
	}
	else{
	
		format_type = name;
		xmlHttp=GetXmlHttpObject()
		if (xmlHttp==null)
		 {
		 alert ("Browser does not support HTTP Request")
		 return
		 }
		var format_action = "get_format"
		var url="?module=Pressformat&action=Format_action"
		url=url+"&format_action="+format_action+"&name="+name+"&selected="+selected
		
		xmlHttp.onreadystatechange=getFormat_callback
		
		
		xmlHttp.open("GET",url,true)
		xmlHttp.send(null)
	}
}

function getFormat_callback() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {

 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
 if (format_type == "base_format"){
 	document.getElementById("dropdown_base").innerHTML = document.getElementById("base_callback").innerHTML;
 	//document.getElementById("dropdown_child").innerHTML = document.getElementById("child_callback").innerHTML;
 }
 document.getElementById("format_result").innerHTML = '';
 } 
}

function newFormat(type)
{

	var format_action = 'new';
	format_type = type 
	//alert(type);	
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	
	var url="?module=Pressformat&action=Format_action"
	url=url+"&format_action="+format_action+"&type="+type
	xmlHttp.onreadystatechange=newFormat_callback 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

function newFormat_callback() 
{ 
	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
	 {
	
		 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
		 document.getElementById(format_type+"_newFormat").innerHTML = document.getElementById("new_format_callback").innerHTML
		 document.getElementById("format_result").innerHTML = '';
		
	 } 
}

function cancelForamt(type)
{
	document.getElementById(type+"_newFormat").innerHTML = '';
}

function saveFormat(type,action,old_name)
{
	//alert(action);
	var error = false;
	var format_action = 'save';
	if (action == 'modify_save'){
		format_action = 'modify_save'
	}
	var x = parseInt(document.getElementById("new_x").value);
	var y = parseInt(document.getElementById("new_y").value);
	alert(document.getElementById("new_name").value);
	var name = encodeURIComponent(document.getElementById("new_name").value);
	alert(name);
	old_name = escape(old_name);
	if (type == 'child'){
		var base_x = parseInt(document.getElementById("base_x").value);
		var base_y = parseInt(document.getElementById("base_y").value);
		//alert (base_x+','+base_y+':'+x+','+y);	
		if (x < y){
			if ((x < base_x) && (y < base_y)){
				//alert('false');
				error = false;
			}
			else {
				//alert('true');
				error = true; 
			}
		}
		else if (x > y){
			if ((y<=base_x) && (x <= base_y)){
				//alert('false2');
				error = false;
			}
			else {
			    //alert('true2');
				error = true; 
			}	
		}
	}
	
	if (error === true){
		alert('Child formats are to big')
	}
	else{
		format_type = type;
		parent_name = window.document.getElementById('base_format').value;
		//var name = document.getElementById("new_name").value;
		//alert(type);
		xmlHttp=GetXmlHttpObject()
		if (xmlHttp==null)
		 {
			 alert ("Browser does not support HTTP Request")
			 return
		 }
		 
		var url="?module=Pressformat&action=Format_action"
		url=url+"&format_action="+format_action+"&x="+x+"&y="+y+"&type="+type+"&name="+name+"&parent_name="+parent_name+"&old_name="+old_name
		//alert(url);
		xmlHttp.onreadystatechange=saveFormat_callback 
		xmlHttp.open("POST",url,true)
		xmlHttp.send(null)
	}
}


function saveFormat_callback() 
{ 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 {
	 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	 if (document.getElementById(format_type+"_callback")){
	 	document.getElementById("dropdown_"+format_type).innerHTML = document.getElementById(format_type+"_callback").innerHTML;
	 }
	 if ((format_type == "base") && (document.getElementById("child_callback"))){
	 	document.getElementById("dropdown_child").innerHTML = document.getElementById("child_callback").innerHTML;
	 }
	 cancelForamt(format_type);
	 //document.getElementById("format_result").innerHTML = '';
 } 
}



function modifyFormat(type)
{

	var format_action = 'modify';
	var x = document.getElementById(type+"_x").value;
	var y = document.getElementById(type+"_y").value;
	//var name = document.getElementById(type+"_y").value;
	format_type = type; 
	var old_name = document.getElementById(type+"_format").value;
	//alert(old_name);	
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
		 alert ("Browser does not support HTTP Request")
		 return
	 }
	
	var url="?module=Pressformat&action=Format_action"
	url=url+"&format_action="+format_action+"&type="+type+"&x="+x+"&y="+y+"&old_name="+old_name
	xmlHttp.onreadystatechange=modifyFormat_callback 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

function modifyFormat_callback() 
{ 
	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
	 {
	
		 document.getElementById("format_result").innerHTML = xmlHttp.responseText;
		 //alert(xmlHttp.responseText.edit);
		 var edit = document.getElementById("edit").value;
		 if (edit == "true"){
		 	document.getElementById(format_type+"_newFormat").innerHTML = document.getElementById("new_format_callback").innerHTML
		 }
		 else{
		 	document.getElementById("dropdown_base").innerHTML = document.getElementById("base_callback").innerHTML
		 }
		 document.getElementById("format_result").innerHTML = '';
		
	 } 
}

function deleteFormat(type, selected)
{
//alert(selected);
if ((selected != '-') && (typeof(selected) != 'undefined')){
	var format_action = 'delete';
	var x = document.getElementById(type+"_x").value;
	var y = document.getElementById(type+"_y").value;
	format_type = type;
	action = 'delete';
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
	 alert ("Browser does not support HTTP Request")
	 return
	 }
	var url="?module=Pressformat&action=Format_action"
	url=url+"&format_action="+format_action+"&type="+type+"&x="+x+"&y="+y
	//alert(url);
	xmlHttp.onreadystatechange=deleteFormat_callback 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}
}

function deleteFormat_callback() 
{ 
	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
	{
	
	document.getElementById("format_result").innerHTML = xmlHttp.responseText;
	if (document.getElementById(format_type+"_callback")){
		document.getElementById("dropdown_"+format_type).innerHTML = document.getElementById(format_type+"_callback").innerHTML;
	}
	//document.getElementById("format_result").innerHTML = '';
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
