function check_for_clientrequest(form,id,confirm_msg){

	var available = false;
	var create_request;
	
	for (i = 0; i < form.elements.length; i++){
		if(form.elements[i].name == id) { 
			available = true;	
		}
		
	}
	if ( available == false){
			var create_request = confirm(confirm_msg);
	}
	if ( create_request == true){
			//alert('Hi');
			form.module.value='ClientRequest';
			form.action.value='EditView';
			/*document.getElementById("module").value = 'ClientRequest';
			document.getElementById("action").value = 'EditView';
			alert(document.getElementById("module").value);
			alert(document.getElementById("action").value);*/
	}
		
	return true;
}