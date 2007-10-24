function mark_cmyk_default(cmyk,form){

	if (cmyk.checked == true){
		for (i = 0; i < form.elements.length; i++){
			if(form.elements[i].name != 'CMYK') { 
				if (form.elements[i].checked == false) {
					form.elements[i].checked = true;				
				}
			}
		}	
	
	}
	if (cmyk.checked == false){
		for (i = 0; i < form.elements.length; i++){
			if(form.elements[i].name != 'CMYK') { 
				if (form.elements[i].checked == true) {
					form.elements[i].checked = false;				
				}
			}
		}	
	
	}
	
	count_inks(form);
}

function count_inks(form){
	var count = 0;
	for (i = 0; i < form.elements.length; i++){
		if(form.elements[i].type == 'checkbox') { 
			if (form.elements[i].checked == true) {
				count = count + 1;				
			}
		}
		if(form.elements[i].name == 'pantone') {
			//check_pantone_number('all');
		}
		
	}	

}