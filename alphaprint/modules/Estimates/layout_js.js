function add(form)
	{ 
	    var i=0
		var count = document.getElementById("estimatetableid2").rows.length; 
		
		 count ++;
		 var temp = document.getElementById("estimatetableid2");
		 temp.insertRow(temp.rows.length);
		 temp.rows.item(temp.rows.length - 1).insertCell(0);
		 var xx=temp.rows.length -1 ;//-1
		 
		 var sHTML = document.getElementById("estimate_row_id").innerHTML;
		 sHTML = sHTML.replace('estimate_row_table','estimate_row_table_' + count);
		
         
         sHTML = sHTML.replace('number_lots','number_lots_' + count);
		 sHTML = sHTML.replace('number_units','number_units_' + count );
         sHTML = sHTML.replace('run_style','run_style_' + count);
         
		 sHTML = sHTML.replace('removeRow(0)','Delete(estimateComponentsQuickCreate,rowIndexId_'+count+')');
	 	 sHTML = sHTML.replace('rowIndexId','rowIndexId_'+count);
	 	 sHTML = sHTML.replace('order_id','order_id_'+count);
		 sHTML = sHTML.replace('rowIdx',temp.rows.length-1);   

		 temp.rows.item(temp.rows.length-1).cells.item(0).innerHTML=sHTML;
		
	}
	
	function Delete(form,x)
	{ 
		 var temp = document.getElementById("estimatetableid2");
		 var count = document.getElementById("estimatetableid2").rows.length;
		 if(temp.rows.length == 1)
		 {
		 	alert('$err_one_estimate_required');
		 	return;
		 }
		 
		 var curIdxId = x.id
		 var curCount = eval(curIdxId.substr(curIdxId.indexOf("_")+1));
		 var curIdx = x.value;
		 temp.deleteRow(x.value)
	
	 	 while (curCount <= count)
		 {
		 	curCount++;
		 	var rowIdx = document.getElementById("rowIndexId_" + curCount);
		 	if(rowIdx != null && rowIdx != undefined)
		 	{
		 		rowIdx.value=curIdx++;
		 	}
		 }
		
	}
	
	function removeRow(form,count,index) {
		if(count > 1) {
			var temp = document.getElementById("estimatetable2");
			var table1 = document.getElementById('estimate_row_table_' + count);
			temp.deleteRow(index);
			count--;
		}
		
		
	}

	
	
	
	

	
	function check_estimate(form)
	{
		var temp = document.getElementById("estimatetableid2");
		var hasEstimate = false;
		for(var i = 1; i <= count ; i++)
		{
			
			var estimateid = form.elements['estimateid_' + i];
			
			if(estimateid != undefined)
			{
				if(estimateid.value != '')
				{
				
					hasEstimate = true;
				}
			}
		}
		
		if(!hasEstimate)alert('$err_one_estimate_required');
		return hasEstimate;
	}