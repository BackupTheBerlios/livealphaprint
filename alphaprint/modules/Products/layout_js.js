function add(form)
	{ 
	    var i=0
		var count = document.getElementById("producttableid2").rows.length; 
		
		 count ++;
		 var temp = document.getElementById("producttableid2");
		 temp.insertRow(temp.rows.length);
		 temp.rows.item(temp.rows.length - 1).insertCell(0);
		 var xx=temp.rows.length -1 ;//-1
		 
		 var sHTML = document.getElementById("product_row_id").innerHTML;
		 sHTML = sHTML.replace('product_row_table','product_row_table_' + count);
		
         
         sHTML = sHTML.replace('number_lots','number_lots_' + count);
		 sHTML = sHTML.replace('number_units','number_units_' + count );
         sHTML = sHTML.replace('run_style','run_style_' + count);
         
		 sHTML = sHTML.replace('removeRow(0)','Delete(productComponentsQuickCreate,rowIndexId_'+count+')');
	 	 sHTML = sHTML.replace('rowIndexId','rowIndexId_'+count);
	 	 sHTML = sHTML.replace('order_id','order_id_'+count);
		 sHTML = sHTML.replace('rowIdx',temp.rows.length-1);   

		 temp.rows.item(temp.rows.length-1).cells.item(0).innerHTML=sHTML;
		
	}
	
	function Delete(form,x)
	{ 
		 var temp = document.getElementById("producttableid2");
		 var count = document.getElementById("producttableid2").rows.length;
		 if(temp.rows.length == 1)
		 {
		 	alert('$err_one_product_required');
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
			var temp = document.getElementById("producttable2");
			var table1 = document.getElementById('product_row_table_' + count);
			temp.deleteRow(index);
			count--;
		}
		
		
	}

	
	
	
	

	
	function check_product(form)
	{
		var temp = document.getElementById("producttableid2");
		var hasProduct = false;
		for(var i = 1; i <= count ; i++)
		{
			
			var productid = form.elements['productid_' + i];
			
			if(productid != undefined)
			{
				if(productid.value != '')
				{
				
					hasProduct = true;
				}
			}
		}
		
		if(!hasProduct)alert('$err_one_product_required');
		return hasProduct;
	}