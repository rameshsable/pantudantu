

function savePass()

{
	var visitPassId=0;
	var MonthPassId=0;
	
	var date1= $("#datepicker").val();	
	var date2=$("#datepicker2").val();
	var date3= $("#datepicker3").val();
	var date4= $("#datepicker4").val();
	
	
	
	var startDate= $("#datepicker").val();
	var type=$("#passtype").val();
	var endDate=$("#datepicker2").val();
	var hidden=$("#hidden").val();

	var totalAmount=$("#paidAmount").val();
	
	var id1=$("#id1").val();
	var startDatem= $("#datepicker3").val();
	var typem=$("#mpasstype").val();
	var endDatem=$("#datepicker4").val();
	var hiddenm=$("#hidden1").val();
	var totalAmountm=$("#paidAmount").val();
	
	var tamount =$("#amount").val();

	if(totalAmountm<tamount){
		$("#completeamt").slideDown();
		$("#completeamt").fadeOut(3000);
		
		return false;
	}
	

		var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
		
		
		var cname= $("#cname").val();
		var lname= $("#lname").val();
		var fathername= $("#fathername").val();
		var mothername= $("#mothername").val();
		var email= $("#email").val();
		var mno1= $("#mno1").val();
		var mno2= $("#mno2").val();
		var locality= $("#locality").val();
		var address= $("#address").val();
		var datepicker12= $("#datepicker12").val();
		
	 
		/*
		if(startDate=="")
		{
		
			$("#startDateselect").slideDown();
			$("#startDateselect").fadeOut(3000);
			
			return false;
		}
		
		
		if(endDate=="")
		{
		
			$("#endDateselect").slideDown();
			$("#endDateselect").fadeOut(3000);
			return false;
		}
		
		if(type=="")
		{
		
			$("#typeselect").slideDown();
			$("#typeselect").fadeOut(3000);
			return false;
		}*/
		
		var filter = /^[0-9-+]+$/;

		
			if($('#cname').val() == ""){

	   $("#cnameselect").slideDown();
	   $("#cnameselect").fadeOut(3000);
	   return false;
			}


			if($("#lname").val() == ""){

				$("#lnameselect").slideDown();
				$("#lnameselect").fadeOut(3000);
				return false;
			}

			if($("#fathername").val()==""){

				$("#fathernameselect").slideDown();
				$("#fathernameselect").fadeOut(3000);
				return false;
			}



			if($("#mothername").val()==""){

				$("#mothernameselect").slideDown();
				$("#mothernameselect").fadeOut(3000);
				return false;
			}

			if($('#mno1').val() == ""){

	   			$("#mon1select").slideDown();
	   			$("#mon1select").fadeOut(3000);
	   			return false;

			}
	if($('#mon2').val() == ""){
	   
	    $("#cnameselect").slideDown();
		   $("#cnameselect").fadeOut(3000);
	    return false;
	  
	   }


	if($("#email").val() == "" ){
		  
		  
	    $("#emailselect").slideDown();
		 $("#emailselect").fadeOut(3000);
	    return false;
	  }
	if(!emailRegex.test(email)){
	   
	    $("#emailselect").slideDown();
		 $("#emailselect").fadeOut(3000);
	    return false;
	  }



		if(datepicker12=="")
		{

			$("#dateselect").slideDown();
			$("#dateselect").fadeOut(3000);
			return false;
		}

	 if(address==""){
		   
		 	$("#addressselect").slideDown();
			   $("#addressselect").fadeOut(3000);
		    return false;
		  
		   }
	   
	   
	 
	 if(totalAmount=="" && creditAmoun =="undefined"){
		 totalAmount=0.0;
		}
		
		
		   var paidAmount =$("#paidAmount").val(); 
		   
		    var chequeNo =    $("#chequeNo").val();
			
			var chequeBank =    $("#chequeBank").val();
			
			var payMode =    $("#payMode").val();
		    
		    var countryCodeMob1=$("#countryCodeMob1").val();
		    var countryCodeMob2=$("#countryCodeMob2").val();
		$.ajax({
			url : "assignPass",
			type : "POST",
			
			data :"startDate="+startDate +"&type="+type+"&endDate="+endDate+
			"&hidden="+hidden+"&cname="+cname+"&lname="+lname+
			"&fathername="+fathername+"&mothername="+mothername+
			"&email="+email+"&mno1="+mno1+"&mno2="+mno2+
			"&locality="+locality+"&address="+address+
			"&datepicker12="+datepicker12+
			"&id1="+id1+"&totalAmount="+totalAmount+
			"&startDatem="+startDatem+"&typem="+typem+
			"&endDatem="+endDatem+"&hiddenm="+hiddenm+
			"&date1="+date1+"&date2="+date2+
			"&date3="+date3+"&date4="+date4+
			"&mpassPrice="+$("#monthlypassHidden").val()+
			"&visitpassPrice="+$("#visitpassHidden").val()+
			"&paidAmount="+paidAmount+
			"&paymentchequeNo="+chequeNo+
			"&paymentchequeBank="+chequeBank+
			"&payMode="+payMode+
			"&countryCodeMob1="+countryCodeMob1+
			"&countryCodeMob2="+countryCodeMob2,
			
			success : function(data) { 
		    	
				
				
				 $("#datepicker").val("");
				 $("#datepicker2").val("");
				 $("#datepicker3").val("");
				 $("#datepicker4").val("");
				 $("#cname").val("");
				 $("#lname").val("");
				 $("#fathername").val("");
				 $("#mothername").val("");
				 $("#email").val("");
				 $("#mno2").val("");
				 $("#mno1").val("");
				 $("#locality").val("");
				 $("#address").val("");
				 $("#id1").val("0");
				 $("#amount").val("0");
				 $("#paidAmount").val("0");
				 
				 $("#visitpassHidden").val("0");
				 $("#monthlypassHidden").val("0");
				 
				 
				 $("#datepicker12").val("");
				 
				 
				 $("#successForm").slideDown();
				 $("#successForm").fadeOut(3000);
				 
					
					document.getElementById('printlight').style.display = 'block';
					document.getElementById('printfade').style.display = 'block';
			
			
					$("#printMyBill").html(data);
				
				
				
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});
		
		
			}
		




