
function removeDataRow(o) {
	
		var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().text();
	
		document.getElementById("dataTable1").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;														
        
		 var valamt=parseFloat($("#BillAmount").val());
		 if(parseFloat(purchaseamount)<=parseFloat(valamt)){
			 	 
			  totalamountwithservicetax=totalamountwithservicetax-purchaseamount;
			  /*$("#BillAmount").val(valamt-purchaseamount);*/
			  $("#BillAmount").val(totalamountwithservicetax);
		 }else{
			 var valamtdiscount=parseFloat($("#Discount").val());
			 var tempvalamt=valamt+valamtdiscount;
			 if(tempvalamt==valamt-tempvalamt){
				 $("#Discount").val("0");
				 $("#BillAmount").val(tempvalamt-purchaseamount);
			} 
		 }		 
}




function addRow() {
	
		var table = document.getElementById("palyzone");
		var rowCount = table.rows.length;
		var row1 = rowCount;
		
		var row = table.insertRow(rowCount);
		var lastid = document.getElementById("lastid").value;
		document.getElementById("lastid").value = eval(lastid) + 1;
		rowCount = eval(eval(lastid) + 1);
		//code for Yarn Composition cell in fabric compostion table
		var cell1 = row.insertCell(0);
		var srno = "<td align=left>" +
		"<select  id= time  class='form-control'>" +
		
		"<option value='30 min'>30 min</option>" +
		
		"<option value='1 Hour'>1 Hour</option>" +
		"<option value='1hour 30 min'>1hour 30 min</option>" +
		"<option value='2 hours'>2 hours</option>" +
		" <option value=2hour 30 min>2hour 30 min</option>"+
	 
	     "<option value='3 hour'>3 hour</option>"+
	    "<option value='3hours 30min'>3hours 30 min</option>"+
	    "<option value='4 hour'>4 hour</option>"+
	    "<option value='4 hour 30 min'>4 hour 30 min</option>"+
	 	 "<option value='5 hour'>5 hour</option>"+
	 	 "<option value='5 hour 30min'>5 hour 30min</option>"+
	 	 "<option value='6 hour'>6 hour</option>"+
	     "<option value='6 hour 30 mi'>6 hour 30 mi</option>"+
	 	 "<option value='7 hour'>7 hour</option>"+
		
		
		
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell1.innerHTML = srno;

		var cell2 = row.insertCell(1);
		var productCode1 = "<td align=left>" +
		"<select  class='form-control'  id=child>" +
		
		"<option value='1'>1</option>" +
		"<option value='2'>2</option>" +
		"<option value='3'>3</option>" +
		"  <option value='4'>4</option>" +
		"  <option value='5'>5</option>" +
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell2.innerHTML = productCode1;

		var cell8 = row.insertCell(2);
		var productName1 = "<td align=left>" +
		"<select  class='form-control'   id=adults>" +
		"<option value='0'>0</option>" +
		"<option value='1'>1</option>" +
		"<option value='2'>2</option>" +
		"<option value='3'>3</option>" +
		"  <option value='4'>4</option>" +
		"  <option value='5'>5</option>" +
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell8.innerHTML = productName1;

		

		var cell3 = row.insertCell(3);
		cell3.innerHTML = "<td ><button class='btn btn-xs btn-danger' onclick='removeRow(this);'>&times;</button></td>";

		var availableTags = productCode;
		var availableTag = productName;

		$("#table tr").each(function() {
			$(this).find("td:first").next().find("input").autocomplete({
				source : availableTags
			});
			$(this).find("td:first").next().next().find("input").autocomplete({
				source : availableTag
			});

		});

	}
   
	
	function removeRow(o) {
		
		 
		var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
	
	
		document.getElementById("palyzone").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;														
        
		
	
		
	}
	 function deleteRowExpense(o)
		{
		 


			var r = $('#expenseType tbody tr').length;

	 
						//document.getElementById("palyzone").deleteRow(p);
						var k = 1;
						var tbllen = document.getElementById("lastid").value;
						
						
						for ( var i = r; i > 2; i--) {
							
						
							//var p = o.parentNode.parentNode.rowIndex;
							 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
							document.getElementById("expenseType").deleteRow(i-1);

						}
						var lastid=r;

						var lastrowid=eval(lastid)-1;
						
						document.getElementById("lastid").value=r;														
					
	

		}
	function removeRowExpense(o) {
		
		var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
	
	
		document.getElementById("expenseType").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;														
        
		
	
		
	}	
		
	
	
	
	/*$('#table').change(function totalAmt() {
		var total = 0;
		var rows = $("#table tr:gt(0)");
		rows.children("td:nth-child(7)").each(function() {
			total += eval(($(this).find("input").val()));
		});
		
		$('#total').val(total);
		$('#totalvalue').val(total);
		$('#netAmount').val(total);
*/
	
	
	
	
	
	/*
	 * Following  is  R climing section
	*/
	
	
	
	
	
	function rclimingAddRow()
	{
		
		
	
		 
		 var table = document.getElementById("rclimbing");
			var rowCount = table.rows.length;
			var row1 = rowCount;
	
			var row = table.insertRow(rowCount);
			var lastid = document.getElementById("lastid").value;
			document.getElementById("lastid").value = eval(lastid) + 1;
			rowCount = eval(eval(lastid) + 1);
			//code for Yarn Composition cell in fabric compostion table
			var cell1 = row.insertCell(0);
			var srno = "<td align=left>" +
			"<select  class='form-control'  id=rctime> " +
		
			"<option value='30 min'>30 min</option>" +
			
			"<option value='1 Hour'>1 Hour</option>" +
			"<option value='1hour 30 min'>1hour 30 min</option>" +
			"<option value='2 hours'>2 hours</option>" +
			" <option value=2hour 30 min>2hour 30 min</option>"+
		 
		     "<option value='3 hour'>3 hour</option>"+
		    "<option value='3hours 30min'>3hours 30 min</option>"+
		    "<option value='4 hour'>4 hour</option>"+
		    "<option value='4 hour 30 min'>4 hour 30 min</option>"+
		 	 "<option value='5 hour'>5 hour</option>"+
		 	 "<option value='5 hour 30min'>5 hour 30min</option>"+
		 	 "<option value='6 hour'>6 hour</option>"+
		     "<option value='6 hour 30 mi'>6 hour 30 mi</option>"+
		 	 "<option value='7 hour'>7 hour</option>"+
			
			"<optgroup   id=sis_class_sections_filter1></optgroup>" +
			"										</select>" +
			"</td>";
			cell1.innerHTML = srno;

			var cell2 = row.insertCell(1);
			var productCode1 = "<td align=left>" +
			"<select  class='form-control'  id=child > " +
			
			"<option value='1'>1</option>" +
			"<option value='2'>2</option>" +
			"<option value='3'>3</option>" +
			"  <option value='4'>4</option>" +
			"  <option value='5'>5</option>" +
			"<optgroup   id=sis_class_sections_filter1></optgroup>" +
			"										</select>" +
			"</td>";
			cell2.innerHTML = productCode1;

			var cell8 = row.insertCell(2);
			var productName1 = "<td align=left>" +
			"<select   class='form-control'  id=adults >" +
			"<option value='0'>0</option>" +
			"<option value='1'>1</option>" +
			"<option value='2'>2</option>" +
			"<option value='3'>3</option>" +
			"  <option value='4'>4</option>" +
			"  <option value='5'>5</option>" +
			"<optgroup   id=sis_class_sections_filter1></optgroup>" +
			"										</select>" +
			"</td>";
			cell8.innerHTML = productName1;

			

			var cell3 = row.insertCell(3);
			cell3.innerHTML = "<td ><button class='btn btn-xs btn-danger' onclick='rclimbingRemoveRow(this);'>&times;</button></td>";

			var availableTags = productCode;
			var availableTag = productName;

			$("#table tr").each(function() {
				$(this).find("td:first").next().find("input").autocomplete({
					source : availableTags
				});
				$(this).find("td:first").next().next().find("input").autocomplete({
					source : availableTag
				});

			});
		
		
		
   }
	
	
	
	function rclimbingRemoveRow(o)
	{
		
		


		 var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
	
		document.getElementById("rclimbing").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;	
	}
	
	
	

	
	/*
	   FOllowing is visitor  pass Section*/
	
	
	function visitpassaddRow()
	{
		
		var table = document.getElementById("visitpass");
		var rowCount = table.rows.length;
		var row1 = rowCount;

		var row = table.insertRow(rowCount);
		var lastid = document.getElementById("lastid").value;
		document.getElementById("lastid").value = eval(lastid) + 1;
		rowCount = eval(eval(lastid) + 1);
		//code for Yarn Composition cell in fabric compostion table
		var cell1 = row.insertCell(0);
		var srno = "<td align=left>" +
		"<select  class='form-control'  id=pass>" +
	
		"<option value='1'>One </option> <option value='2'>Two</option>" +
		
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell1.innerHTML = srno;

		var cell2 = row.insertCell(1);
		/*var productCode1 = "<td align=left>" +
		"<select id=time>" +
	
		"<option value='30'>30 Min</option>" +
		"<option value='60'>1 Hour</option>" +
		"<option value='90'>1.5 Hour</option>" +
		"  <option value='120'>2 Hour</option>" +
		"  <option value='150'>other</option>" +
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";*/
		var productCode1 = "<td align=left>" +
		"<input type='text' class='form-control visitpassauto' id='visitpassauto' name='visitpassauto' value='0'  autocomplete='on' onChange='visitPass(this.value);'>"+
		"</td>";
		
		cell2.innerHTML = productCode1;

		var cell8 = row.insertCell(2);
		var productName1 = "<td align=left>" +
		"<select  class='form-control'  id=adults >" +
		"<option value='0'>0</option>" +
		"<option value='1'>1</option>" +
		"<option value='2'>2</option>" +
		"<option value='3'>3</option>" +
		"  <option value='4'>4</option>" +
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell8.innerHTML = productName1;

		

		var cell3 = row.insertCell(3);
		cell3.innerHTML = "<td ><button class='btn btn-xs btn-danger' onclick='visitpassRemoveRow(this);'>&times;</button></td>";

		var availableTags = productCode;
		var availableTag = productName;

		$("#table tr").each(function() {
			$(this).find("td:first").next().find("input").autocomplete({
				source : availableTags
			});
			$(this).find("td:first").next().next().find("input").autocomplete({
				source : availableTag
			});

		});
		
		
	}
	
	
	
	function visitpassRemoveRow(o)
	{
		
		
		 var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
		
	
		document.getElementById("visitpass").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;
		
		
	}
	
	
	
	/*
	this is monthly pass code*/
	
	
	
	
	function monthlypassaddRow()
	{
		
		
		var table = document.getElementById("monthlypass");
		var rowCount = table.rows.length;
		var row1 = rowCount;

		var row = table.insertRow(rowCount);
		var lastid = document.getElementById("lastid").value;
		document.getElementById("lastid").value = eval(lastid) + 1;
		rowCount = eval(eval(lastid) + 1);
		//code for Yarn Composition cell in fabric compostion table
		var cell1 = row.insertCell(0);
		var srno = "<td align=left>" +
		"<select class='form-control'  id=pass >" +
		"<option value=''>Monthly</option>" +

		
		
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell1.innerHTML = srno;

		var cell2 = row.insertCell(1);
		var productCode1 = "<td align=left>" +
		"<select   class='form-control'   id=time>" +
		"<option value='30'>30 Min</option>" +
		"<option value='60'>1 Hour</option>" +
		"<option value='90'>1.5 Hour</option>" +
		"  <option value='120'>2 Hour</option>" +
		"  <option value='150'>other</option>" +
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell2.innerHTML = productCode1;

		var cell8 = row.insertCell(2);
		var productName1 = "<td align=left>" +
		"<select class='form-control'  id=adults >" +
		"<option value='0'>0</option>" +
		"<option value='1'>1</option>" +
		"<option value='2'>2</option>" +
		"<option value='3'>3</option>" +
		"  <option value='4'>4</option>" +
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell8.innerHTML = productName1;

		

		var cell3 = row.insertCell(3);
		cell3.innerHTML = "<td ><button class='btn btn-xs btn-danger' onclick='monthlypassRemoveRow(this);'>&times;</button></td>";

		var availableTags = productCode;
		var availableTag = productName;

		$("#table tr").each(function() {
			$(this).find("td:first").next().find("input").autocomplete({
				source : availableTags
			});
			$(this).find("td:first").next().next().find("input").autocomplete({
				source : availableTag
			});

		});
		
		
		
	}
	
	
	function monthlypassRemoveRow(o)
	{
		
		
		var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();

	
		document.getElementById("monthlypass").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;	
	}
	
	
	
	
	/*
	this is birthay*/
	
	
	
	
	function addbirthdayRow()
	{
		
		
	
		var table = document.getElementById("birthday");
		var rowCount = table.rows.length;
		var row1 = rowCount;

		var row = table.insertRow(rowCount);
		var lastid = document.getElementById("lastid").value;
		document.getElementById("lastid").value = eval(lastid) + 1;
		rowCount = eval(eval(lastid) + 1);
		//code for Yarn Composition cell in fabric compostion table
		var cell1 = row.insertCell(0);
		var srno = "<td align=left>" +
		"<select  class='form-control'   id=package >" +
	
		"<option value=''>package1</option>" +
		"<option value=''>package2</option>" +
		"<option value=''>package3</option>" +

		
		
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell1.innerHTML = srno;

		var cell2 = row.insertCell(1);
		var productCode1 = "<td align=left>" +
	
		"<input type='number' class='form-control' id='birthDayChild' name='birthDayChild' value='0'  autocomplete='on' min='1' max='100'  onChange='BirthDayPackChild(this.value);'>"+
		"</td>";
		cell2.innerHTML = productCode1;

		var cell8 = row.insertCell(2);
		var productName1 = "<td align=left>" +

		"<input type='number' class='form-control' id='birthDayAdult' name='birthDayAdult' value='0'  min='1' max='100'  autocomplete='on' onChange='BirthDayPackAdult(this.value);'>"+
		"</td>";
		cell8.innerHTML = productName1;


		

		var cell3 = row.insertCell(3);
		cell3.innerHTML = "<td ><button class='btn btn-xs btn-danger' onclick='birthdayRemoveRow(this);'>&times;</button></td>";

		var availableTags = productCode;
		var availableTag = productName;

		$("#table tr").each(function() {
			$(this).find("td:first").next().find("input").autocomplete({
				source : availableTags
			});
			$(this).find("td:first").next().next().find("input").autocomplete({
				source : availableTag
			});

		});
		
		
	}
	
	
	function birthdayRemoveRow(o)
	{
		
	
		var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
	
		document.getElementById("birthday").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;
		
	}
	
	/*
	This is rock related*/
	
	
	
	
	 function rockaddRow()
	 {
		 
		 var table = document.getElementById("rock");
			var rowCount = table.rows.length;
			var row1 = rowCount;

			var row = table.insertRow(rowCount);
			var lastid = document.getElementById("lastid").value;
			document.getElementById("lastid").value = eval(lastid) + 1;
			rowCount = eval(eval(lastid) + 1);
			//code for Yarn Composition cell in fabric compostion table
			var cell1 = row.insertCell(0);
			var srno = "<td align=left>" +
			"<select  class='form-control'  id=attempts >" +
		
			"<option value='2'>2</option>" +
			"<option value='4'>4</option>" +
			"<option value='6'>6</option>" +
			"<option value='8'>8</option>" +
			"<option value='10'>10</option>" +

			
			
			"<optgroup   id=sis_class_sections_filter1></optgroup>" +
			"										</select>" +
			"</td>";
			cell1.innerHTML = srno;

			var cell2 = row.insertCell(1);
			var productCode1 = "<td align=left>" +
			"<select  class='form-control'  id=adults>" +
			"<option value='0'>0</option>" +
			"<option value='1'>1</option>" +
			"<option value='2'>2</option>" +
			"<option value='3'>3</option>" +
			"<option value='4'>4</option>" +
			
			
			"<optgroup   id=sis_class_sections_filter1></optgroup>" +
			"										</select>" +
			"</td>";
			cell2.innerHTML = productCode1;

			var cell8 = row.insertCell(2);
			var productName1 = "<td align=left>" +
			
			"</td>";
			cell8.innerHTML = productName1;

			

			var cell3 = row.insertCell(3);
			cell3.innerHTML = "<td ><button class='btn btn-xs btn-danger' onclick='rockRemoveRow(this);'>&times;</button></td>";

			var availableTags = productCode;
			var availableTag = productName;

			$("#table tr").each(function() {
				$(this).find("td:first").next().find("input").autocomplete({
					source : availableTags
				});
				$(this).find("td:first").next().next().find("input").autocomplete({
					source : availableTag
				});

			});
		 
	 }
	 
	 function rockRemoveRow(o)
	 {
		 
		 var p = o.parentNode.parentNode.rowIndex;
		 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
	
	
		document.getElementById("rock").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
	
		for ( var i = 1; i <= tbllen; i++) {
			if (document.getElementById("srno" + i) != null)
				document.getElementById("srno" + i).value = k++;
		}
		var lastid=document.getElementById("lastid").value;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=lastrowid;
		
		 
	 }
	 
	 
	 /*
	 this is for dynamically delete rows*/
	 
	 
	 function deleteplayzone2(o)
		{

			var r = $('#palyzone tbody tr').length;

	 
						//document.getElementById("palyzone").deleteRow(p);
						var k = 1;
						var tbllen = document.getElementById("lastid").value;
						
						
						for ( var i = r; i > 2; i--) {
							
						
							//var p = o.parentNode.parentNode.rowIndex;
							 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
							document.getElementById("palyzone").deleteRow(i-1);

						}
						var lastid=r;

						var lastrowid=eval(lastid)-1;
						
						document.getElementById("lastid").value=r;														
					
	

		}
	
	 
	function  deletRclimbing2(o)
	 {
		 
		 
		var r = $('#rclimbing tbody tr').length;
			//document.getElementById("palyzone").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
		
		
		for ( var i = r; i > 2; i--) {
			
		
			//var p = o.parentNode.parentNode.rowIndex;
			 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
			document.getElementById("rclimbing").deleteRow(i-1);

		}
		var lastid=r;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=r;														
	
		 
		 
	 }
	
	
	
	 
	function  deletVisitpass2(o)
	 {
		 
		
		 
		var r = $('#visitpass tbody tr').length;
			//document.getElementById("palyzone").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
		
		
		for ( var i = r; i > 2; i--) {
			
		
			//var p = o.parentNode.parentNode.rowIndex;
			 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
			document.getElementById("visitpass").deleteRow(i-1);

		}
		var lastid=r;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=r;														
	
		 
		 
	 }
	 
	 
	 function  deletBirthday2(o)
	 {
		 
		
		var r = $('#birthday tbody tr').length;
			//document.getElementById("palyzone").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
		
		
		for ( var i = r; i > 2; i--) {
			
		
			//var p = o.parentNode.parentNode.rowIndex;
			 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
			document.getElementById("birthday").deleteRow(i-1);

		}
		var lastid=r;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=r;													
	
		 
		 
	 }	

	 function  deletMonthlypass2(o)
	 {
		 
		
		 
		var r = $('#monthlypass tbody tr').length;
			//document.getElementById("palyzone").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
		
		
		for ( var i = r; i > 2; i--) {
			
		
			//var p = o.parentNode.parentNode.rowIndex;
			 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
			document.getElementById("monthlypass").deleteRow(i-1);

		}
		var lastid=r;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=r;													
	
		 
		 
	 }
	 
	 
	 function  deleteRock2(o)
	 {
		 
		
		
		var r = $('#rock tbody tr').length;
			//document.getElementById("palyzone").deleteRow(p);
		var k = 1;
		var tbllen = document.getElementById("lastid").value;
		
		
		for ( var i = r; i > 2; i--) {
			
		
			//var p = o.parentNode.parentNode.rowIndex;
			 var purchaseamount= $(o).parent('td').prev().prev().find('input').val();
			document.getElementById("rock").deleteRow(i-1);

		}
		var lastid=r;

		var lastrowid=eval(lastid)-1;
		
		document.getElementById("lastid").value=r;													
	
		 
		 
	 }
	 
