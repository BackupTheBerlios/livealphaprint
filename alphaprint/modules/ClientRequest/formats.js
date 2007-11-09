function getFormat_clientrequest(selected,name)
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
		var format_action = "get_paper_format_clientrequest"
		var url="?module=Paperformat&action=Format_action"
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
 	document.getElementById("dropdown_base").innerHTML = xmlHttp.responseText;
 	//document.getElementById("dropdown_child").innerHTML = document.getElementById("child_callback").innerHTML;
 }
 document.getElementById("format_result").innerHTML = '';
 } 
}