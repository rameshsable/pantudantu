function validate(){

	//alert("welcome in register finc");
	
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	 var email = $("#email").val();
	 var cname = $("#cname").val();
	 var lname = $("#lname").val();
	 var fathername = $("#fathername").val();
	 var mothername = $("#mothername").val();
	 var datepicker1=$("#datepicker1").val();
	 var datepicker=$("#datepicker").val();     
	 var mno1 = $("#mno1").val();
	 var mon2 = $("#mon2").val();
	 var locality = $("#locality").val();
	 var address=$("#address").val();
	 
	 var filter = /^[0-9-+]+$/;

	
   if($('#cname').val() == ""){
		 
			   $("#cnameselect").slideDown();
			   $("#cnameselect").fadeOut(3000);
				$("#saveandprintQuot").prop('disabled', false);
		    return false;
		  }
   
   
	if($("#lname").val() == ""){
		
		    $("#lnameselect").slideDown();
			 $("#lnameselect").fadeOut(3000);
				$("#saveandprintQuot").prop('disabled', false);
		    return false;
		  }
	
	 if($("#fathername").val()==""){
		  
		    $("#fathernameselect").slideDown();
			 $("#fathernameselect").fadeOut(3000);
				$("#saveandprintQuot").prop('disabled', false);
		    return false;
		  }
	 


	 if($("#mothername").val()==""){
		  
		    $("#mothernameselect").slideDown();
			 $("#mothernameselect").fadeOut(3000);
				$("#saveandprintQuot").prop('disabled', false);
		    return false;
		  }
	 
		   if($('#mno1').val() == ""){
		   
			   			$("#mon1select").slideDown();
			   			$("#mon1select").fadeOut(3000);
			   			$("#saveandprintQuot").prop('disabled', false);
		    return false;
		  
		   }
		   if($('#mon2').val() == ""){
			   
			    $("#cnameselect").slideDown();
				   $("#cnameselect").fadeOut(3000);
					$("#saveandprintQuot").prop('disabled', false);
			    return false;
			  
			   }
		   
		   
		   if($("#email").val() == "" ){
				  
				  
			    $("#emailselect").slideDown();
				 $("#emailselect").fadeOut(3000);
					$("#saveandprintQuot").prop('disabled', false);
			    return false;
			  }
		   if(!emailRegex.test(email)){
			   
			    $("#emailselect").slideDown();
				 $("#emailselect").fadeOut(3000);
					$("#saveandprintQuot").prop('disabled', false);
			    return false;
			  }
		   
			
	  if(datepicker=="")
		   {
		   //$('#dis').slideDown().html("<span>Please select Date</span>");
		   $("#dateselectbill").slideDown();
		   $("#dateselectbill").fadeOut(3000);
			$("#saveandprintQuot").prop('disabled', false);
		   return false;
		   }
	  if(datepicker1=="")
	   {
	   //$('#dis').slideDown().html("<span>Please select Date</span>");
	   $("#dateselect").slideDown();
	   $("#dateselect").fadeOut(3000);
	   
		$("#saveandprintQuot").prop('disabled', false);
	   return false;
	   }
		   
			 if(address==""){
				   
				    $("#addressselect").slideDown();
					   $("#addressselect").fadeOut(3000);
						$("#saveandprintQuot").prop('disabled', false);
				    return false;
				  
				   }
			   
			   if(locality==""){
				   
				    $("#localityselect").slideDown();
					   $("#localityselect").fadeOut(3000);
						$("#saveandprintQuot").prop('disabled', false);
				    return false;
				  
				   }
	
}


function closePopUpBill() {
	  
	

		document.getElementById('lightbill').style.display = 'none';
		document.getElementById('fadebill').style.display = 'none';
		/*location.reload(true);*/
		return false;
	}
	window.onkeyup = function(e) {

		var key = e.keyCode ? e.keyCode : e.which;

		if (key == 27) {
			closePopUpBill();
		}
	
	};

function saveAndPrintBill(){
	
	
	 
	// bookingId remainingAmt  remainingPaidAmt
	
	var bookingId=$("#birthAdvanceBook").val();
	//var remainingAmt=$("#remainingHiddenAmount").val();
	//var remainingPaidAmt=$("#remainingHiddenPaidAmount").val();
	
	
	
	
	
$("#saveandprintQuot").prop('disabled', true);

var x=	validate();
if(x==false){
	$("#saveandprintQuot").prop('disabled', false);
	return false;
}


    
var billValAmt= $("#BillAmount").val();

var billPaidValAmt=$("#paidAmount").val();

if(billValAmt !=billPaidValAmt){
	
	$("#payBillAmount").slideDown();
	$("#payBillAmount").fadeOut(3000);
	$("#saveandprintQuot").prop('disabled', false);
	return false;
}

var r = $('#dataTable1 tbody tr').length;
     
    r=r-1;
  var i=0;

    $("#dataTable1 tr").each(function() {
    	
    	
          var time=$(this).find("td:first").next().text();	
          var noOfChild=$(this).find("td:first").next().next().text();
          var noOfAdult=$(this).find("td:first").next().next().next().text();
          var noOfAttempt=$(this).find("td:first").next().next().next().next().text();
          var type=$(this).find("td:first").next().next().next().next().next().text();
          var PassType=$(this).find("td:first").next().next().next().next().next().next().text();
          var passNum= $(this).find("td:first").next().next().next().next().next().next().next().text();
          var amount= $(this).find("td:first").next().next().next().next().next().next().next().next().text();	
     
         
          if(i==0){
			}else{
				
				
				billtime.push(time);
				billnoOfChild.push(noOfChild); 
				billnoOfAdult.push(noOfAdult);  
				billnoOfAttempt.push(noOfAttempt);
				billtype.push(type); 
				billPassType.push(PassType);
				billamount.push(amount);
				passNumber.push(passNum);
			}
          i++;
			r++;
		});
    
  
		var discount =    $("#Discount").val();
		var othercharge =    $("#OtherCharges").val();
		var servicetax =    $("#serviceTax").val();
		var paidamt =    $("#paidAmount").val();
		var hiddenCustId =    $("#hiddenCustId").val();
		var AllBillAmount =    $("#BillAmount").val();
		var osfhandling =    $("#osfhandling").val();
		
		
	
		
		var chequeNo =    $("#chequeNo").val();
		
		var chequeBank =    $("#chequeBank").val();
		
		var payMode =    $("#payMode").val();
		          
		
		
		
	    var datepicker=$("#datepicker").val();  
	    
	
	    var countryCodeMob1=$("#countryCodeMob1").val();
	    var countryCodeMob2=$("#countryCodeMob2").val();
	    
		var formData = $("#accordinForm").serialize();
		formData += "&billtime=" + encodeURIComponent(billtime);
		formData += "&billnoOfChild=" + encodeURIComponent(billnoOfChild); 
		formData +="&billnoOfAdult="+encodeURIComponent(billnoOfAdult);
		formData +="&billnoOfAttempt="+encodeURIComponent(billnoOfAttempt);
		formData +="&billtype="+encodeURIComponent(billtype);
		formData +="&billPassType="+encodeURIComponent(billPassType);
		formData +="&passNumber="+encodeURIComponent(passNumber);
		formData +="&billamount="+encodeURIComponent(billamount);
		formData +="&discount="+encodeURIComponent(discount);
		formData +="&othercharge="+encodeURIComponent(othercharge);
		formData +="&servicetax="+encodeURIComponent(servicetax);
		formData +="&paidamt="+encodeURIComponent(paidamt);
		formData +="&hiddenCustId="+encodeURIComponent(hiddenCustId);
		formData +="&datepicker="+encodeURIComponent(datepicker);
		formData +="&payMode="+encodeURIComponent(payMode);
		formData +="&paymentchequeNo="+encodeURIComponent(chequeNo);
		formData +="&paymentchequeBank="+encodeURIComponent(chequeBank);
		
		formData +="&AllBillAmount="+encodeURIComponent(AllBillAmount);
		formData +="&osfhandling="+encodeURIComponent(osfhandling);
		formData +="&countryCodeMob1="+encodeURIComponent(countryCodeMob1);
		formData +="&countryCodeMob2="+encodeURIComponent(countryCodeMob2);
		formData +="&bookingId="+encodeURIComponent(bookingId);
		
		
		
		
		// bookingId remainingAmt  remainingPaidAmt
	/*	formData +="&paymentcash="+encodeURIComponent(paymentcash);
		formData +="&paymentchequeNo="+encodeURIComponent(paymentchequeNo);
		formData +="&paymentchequeBank="+encodeURIComponent(paymentchequeBank);
		formData +="&paymentchequeAmount="+encodeURIComponent(paymentchequeAmount);
	*/
		
		$.ajax({
			url : "saveBill",
			type : "POST",
			data :formData,
			success : function(data) {
				
				var mno1 =$("#mno1").val();
				var mno2 =$("#mno2").val();
				
				var billIdCustom  =data.split("/");
				
				
				
				if($("#hiddenCustId").val()=="0" || $("#hiddenCustId").val()==0){
				
					customerId.push(billIdCustom[1]);

					custMobCountry1.push(countryCodeMob1);
					custMobCountry2.push(countryCodeMob2);

					customer.push($("#cname").val());// it enters child name into array named customer
					 mob1.push($("#mno1").val());
					
					 if($("#mon2").val()=='undefined'){
						 mob2.push(""); 
					 }else{
						 mob2.push($("#mon2").val());
					 }
					 	
					
					 lastName.push($("#lname").val());
					 fatherName.push($("#fathername").val());
					 motherName.push($("#mothername").val());
					 email.push($("#email").val());
					 
					 address.push($("#address").val());
					 locality.push($("#locality").val());

					 var mySplitResult1= $("#datepicker1").val().split("/");
					 var bdate = mySplitResult1[2]+"-"+mySplitResult1[0]+"-"+mySplitResult1[1];
					 dob.push(bdate);
					 
					 var availableTags1 = mob1;
					 $(".mobCodeClass" ).autocomplete({source: availableTags1});
					 
				}
				if($("#email").val()=="abc@gmail.com" || $("#email").val()=="ABC@GMAIL.COM"){
					
				}else{
					$.ajax({
						url : "sendEmail",
						type : "GET",
						data :"billID="+$("#email").val(),
						success : function(data) {
						
						},
						error : function(xhr, ajaxOptions, thrownError) {
							alert(xhr+"   "+ajaxOptions+"   "+thrownError);
						}
					});
				}
				  			  
				var mobno="";
				if(!mno1==""){
					mobno=countryCodeMob1+mno1;
				}else if(!mno2==""||!mno2=="undefined"){
					mobno=countryCodeMob2+mno2;
				}
				$.ajax({
					url : "sendsms",
					type : "GET",
					data :"mobno="+mobno,
					success : function(data) {
					
					},
					error : function(xhr, ajaxOptions, thrownError) {
						alert("err" + thrownError + xhr.responseText);
						$("#saveandprintQuot").prop('disabled', false);
						return false;
					}
				});
			
			
				
				
				$.ajax({
					url : "printBill",
					type : "POST",
					data :"billID="+billIdCustom[0],
					success : function(data) {
					
						document.getElementById('lightbill').style.display = 'block';
						document.getElementById('fadebill').style.display = 'block';
						
						$("#lightbill").html(data);
						/*location.reload(true);*/
						$("#HiddenOtherCharges").val(0);
						$("#Hiddenosfhandling").val(0);
						$("#BillAmount").val(0);
						$("#osfhandling").val(0);
						$("#HiddenDiscount").val(0);
						$("#hiddenCustId").val(0);
						$("#HiddenOtherCharges").val(0);
						$("#Hiddenosfhandling").val(0);
						
						$(".monthpassauto").val(0);
						$("#birthAdvanceBookHidden").val(0);
						$("#OtherCharges").val(0);
						$("#advBirthHiddenAdult").val(0);
						$("#advBirthHiddenChild").val(0);
						$("#birthDayAdult").val(0);
						$("#birthDayChild").val(0);
						$("#Discount").val(0);
						$("#OtherCharges").val(0);
						$("#osfhandling").val(0);
						$("#totalAmountOfBill").val(0);
						$("#lastid").val(1);
						$("#deleterow1").val("");
						$("#osfhandling").val(0);
						$("#paidAmount").val(0);
						$("#birthAdvanceBook").val(0);
						 $(".visitpassauto").val(0);
						$("#fathername").val("");
						$("#mothername").val("");
						$("#lname").val("");
						$("#cname").val("");
						$("#email").val("abc@gmail.com");
						$("#mno1").val("");
						$("#mon2").val("");
						$("#address").val("");
						
						$("#saveandprintQuot").prop('disabled', false);                      
						
					},
					error : function(xhr, ajaxOptions, thrownError) {
						$("#saveandprintQuot").prop('disabled', false);
						alert("err" + thrownError + xhr.responseText);

						return false;
					}
				});
				
			/*	printTable();*/
				/*location.reload(true);
				 $(window).scrollTop(0);
	 				$("#muAdddedSuccessfully").slideDown();
	 				$("#muAdddedSuccessfully").fadeOut(4000);*/
			
			},
			error : function(xhr, ajaxOptions, thrownError) {
				$("#saveandprintQuot").prop('disabled', false);
				alert("err" + thrownError + xhr.responseText);
				
				return false;
			}
			
			
		});
  
}

function hiddenDiscount(){
	if(isNaN($("#Discount").val())){
		$("#Discount").val(0)
		return false;
	}
	if($("#Discount").val()==''){
		$("#Discount").val(0);
	}
	var  hiddenval=parseFloat($("#HiddenDiscount").val());
	var totalhidden=Math.ceil(eval(hiddenval)+eval(parseFloat($("#BillAmount").val())));
	if(totalhidden < parseFloat(hiddenval)){
		return false;
	}
	
	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat($("#Discount").val()))));
	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));

	//BillAmount
}

function hiddenDiscountInPercentage(abc){
	
	if(isNaN($("#Discount").val())){
		$("#Discount").val(0)
		return false;
	}
	if($("#Discount").val()==''){
		$("#Discount").val(0);
	}
	
	var discountFlagOtherCharges=0;
	var amountOfFlagOtherCharges=0;
	if(isNaN($("#OtherCharges").val())){
		$("#OtherCharges").val(0)
		discountFlagOtherCharges=1;
	}
	if($("#OtherCharges").val()==''){
		$("#OtherCharges").val(0);
		discountFlagOtherCharges=1;
	}
	if($("#OtherCharges").val()==0){
		$("#OtherCharges").val(0);
		discountFlagOtherCharges=1;
	}
	

	if(discountFlagOtherCharges!=1){
		amountOfFlagOtherCharges=$("#OtherCharges").val();
	}
	
	
	var	discountFlagOsfhandling=0;
	var amountOfFlagOsfhandling=0;
	if(isNaN($("#osfhandling").val())){
		$("#osfhandling").val(0)
		discountFlagOsfhandling=1;
	}
	if($("#osfhandling").val()==''){
		$("#osfhandling").val(0);
		discountFlagOsfhandling=1;
	}
	if($("#osfhandling").val()==0){
		$("#osfhandling").val(0);
		discountFlagOsfhandling=1;
	}
	
	if(discountFlagOsfhandling!=1){
		amountOfFlagOsfhandling=$("#osfhandling").val();
	}
	
	
	
	var  hiddenval=parseFloat($("#HiddenDiscount").val());
	
	var temp=eval(parseFloat($("#BillAmount").val()))-eval(parseFloat(amountOfFlagOtherCharges));
	
	var	totalBillValWithoutOtherChargeAndOfsHandling=eval(parseFloat(temp))-eval(parseFloat(amountOfFlagOsfhandling));
	
	
	var totalhidden=Math.ceil(eval(hiddenval)+eval(parseFloat(totalBillValWithoutOtherChargeAndOfsHandling)));
	
//	totalhidden=totalhidden+eval(parseFloat(amountOfFlagOtherCharges))+eval(parseFloat(amountOfFlagOsfhandling));
	
	if(totalhidden < parseFloat(hiddenval)){
		return false;
	}
	
	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*abc/100))));
	var total =Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
	total=total+eval(parseFloat(amountOfFlagOtherCharges))+eval(parseFloat(amountOfFlagOsfhandling));
	$("#BillAmount").val(total);

	//BillAmount
}




function hiddenOtherCharges(){
	if(isNaN($("#OtherCharges").val())){
		$("#OtherCharges").val(0)
		return false;
	}
	if($("#OtherCharges").val()==''){
		$("#OtherCharges").val(0);
	}
	var  othiddenval=parseFloat($("#HiddenOtherCharges").val());
	var totalhidden=parseFloat(eval($("#BillAmount").val()))-eval(parseFloat(othiddenval));
	
	
	$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))+eval($("#HiddenOtherCharges").val())));
	
	//BillAmount
}

function hiddenosfhandling(){
	if(isNaN($("#osfhandling").val())){
		$("#osfhandling").val(0)
		return false;
	}
	if($("#osfhandling").val()==''){
		$("#osfhandling").val(0);
	}
	var  othiddenval=parseFloat($("#Hiddenosfhandling").val());
	var totalhidden=parseFloat(eval($("#BillAmount").val()))-eval(parseFloat(othiddenval));
	
	
	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))+eval($("#Hiddenosfhandling").val())));
}


function playzoneBill()
					{
					var r = $('#dataTable1 tbody tr').length;
	                 
	                r=r-1;
	                var i=0;
	                var type="playzone";
			        $("#palyzone tr").each(function() {
			        	
			        var val=$(this).find("td:first").find('select option:selected').text();	
				    var val1=$(this).find("td:first").next().find('select option:selected').text();
				    var val2=$(this).find("td:first").next().next().find('select option:selected').text();
				     
		  				if(i==0){
		  				
		  				}
		  				else{
		  					
		  					var actAmount=0;
		  				  
		  					for(var pz=0;pz<playzoneTime.length;pz++){
		  						
		  						/*
		  						alert(playzoneTime[pz]);*/

						         // playzoneId.length;
						          if(val==playzoneTime[pz])
						        	  {
						        	  			
						        	  			
						        	  	    if(val1 < 2)
						        	  	     {
						        	  			if(val2 < 2)
						        	  				{
						        	  					var amt=	playzonePrice[pz];
						        	  					//actAmount=Math.ceil(val1*amt+(amt*14.50/100));
						        	  					actAmount=Math.ceil(val1*amt);
						        	  					totalamountwithservicetax=totalamountwithservicetax+actAmount;
						        	  			
						        	  				}
						        	  			else
						        	  				{
						        	  					var amt=playzonePrice[pz];
						        	  					actAmount=Math.ceil((val1*amt)+((val2*50)-50));
						        	  					totalamountwithservicetax=totalamountwithservicetax+actAmount;
						        	  				}
						        	  			
						        	  	     }
						        	  	    
						        	  	    
						        	  	    if(val1 >=2)
						        	  	    	{
						        	  	    		if(val2 < 2)
						        	  	    		{   
						        	  	    		var amt1=playzonePrice[pz];
						        	  	    		amt=amt1*val1;
						        	  	    		actAmount=Math.ceil(amt);
						        	  	    		totalamountwithservicetax=totalamountwithservicetax+actAmount;
						        	  	    		}
						        	  	    		else
						        	  	    		{
						        	  	    			var amt1=playzonePrice[pz];
						        	  	    			amt=amt1*val1;
						        	  	    			
						        	  	    			
						        	  					if(val1==val2){
						        	  					
						        	  					amt=amt1*val1;
							        	  	    		actAmount=Math.ceil(amt);
						        	  						
						        	  					}else if(val1>val2){
						        	  						
						        	  						amt=amt1*val1;
								        	  	    		actAmount=Math.ceil(amt);
						        	  						
						        	  					}
						        	  					else if(val2>val1){
						        	  						
						        	  						amt=amt1*val1;
						        	  						var tvar2=val2-val1;
								        	  	    		actAmount=Math.ceil(amt+((tvar2*50)));
						        	  						
						        	  					}
						        	  					
						        	  				
						        	  	    			totalamountwithservicetax=totalamountwithservicetax+actAmount;
						        	  	    		
						        	  	    		}
						        	  	    	
						        	  	    	}
						        	  	    
						        	  	    
						        	  }
						            
					          }		
		  					
		  					       
		  				  var x="<tr><td>"+r+"</td><td>"+ val+"</td><td>"+val1+"</td><td>" +val2+"</td><td align='center'>-</td><td>"+type+"</td>" +
		  				  		"<td align='center'>-</td><td align='center'>-</td><td>"+Math.ceil(actAmount)+"</td><td><button class='btn btn-xs btn-danger no-print' onclick='removeDataRow(this);'>&times;</button></td></tr>";
		  						
/*		  				 var html = [];
		  				    
			                html.push('<tr><td>', val)
			                html.push('</td><td>', val1)
			                html.push('</td><td>', val2)

			                html.push('</td></tr>')*/
			                $("#dataTable1").append(x);
		  				}i++;
		  				r++;
		        		});
			        $("#BillAmount").val(Math.ceil(totalamountwithservicetax));
			      
			        var discountFlag=0;
			        var AllBillAmountForWithCalculation=totalamountwithservicetax;
			    	
			        //calculations of discount on actual bill
			        if(isNaN($("#Discount").val())){
			    		$("#Discount").val(0)
			    		discountFlag=1;
			    		
			    	}
			    	if($("#Discount").val()==''){
			    		$("#Discount").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#Discount").val()==0){
			    		$("#Discount").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	
			    	if(discountFlag!=1){
			    		
			    		if($("#Discount").val()!=0){
			    			
			    			var totalhidden=eval(parseFloat(totalamountwithservicetax));
					    
					    	
					    	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*eval(parseFloat($("#Discount").val()))/100))));
					    //	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));
					    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
					    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    		}else{
			    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
			    		}
			    	}
			    	
			    	// calculations of other charges after discount
			    	discountFlag=0;
			    	if(isNaN($("#OtherCharges").val())){
			    		$("#OtherCharges").val(0)
			    		discountFlag=1;
			    	}
			    	if($("#OtherCharges").val()==''){
			    		$("#OtherCharges").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#OtherCharges").val()==0){
			    		$("#OtherCharges").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	if(discountFlag!=1){
			    		$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
				    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#HiddenOtherCharges").val()));
				    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    	}else{
		    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		    		}
			    	
			    	// calculations of ofs Handling After Other charges
			    	discountFlag=0;
			    	if(isNaN($("#osfhandling").val())){
			    		$("#osfhandling").val(0)
			    		discountFlag=1;
			    	}
			    	if($("#osfhandling").val()==''){
			    		$("#osfhandling").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#osfhandling").val()==0){
			    		$("#osfhandling").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	if(discountFlag!=1){
			    	  	
				    	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
				    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#Hiddenosfhandling").val()));
				    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    	}else{
		    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		    		}
			  
			    	
			    	
				}
	function rclimbingBill()
   				{
	

	
				var r = $('#dataTable1 tbody tr').length;
				r=r-1;
				var i=0;
				var type="prclimbing";
				$("#rclimbing tr").each(function() {
        	
        	  
	          var val=$(this).find("td:first").find('select option:selected').text();	
	          var val1=$(this).find("td:first").next().find('select option:selected').text();
	          var val2=$(this).find("td:first").next().next().find('select option:selected').text();
				
				
				
				if(i==0){
				}else{
					
					
					var actAmount=0;
	  				  for(var pz=0;pz<rclimbingTime.length;pz++){

					         // playzoneId.length;
					          if(val==playzoneTime[pz])
					        	  {
					        	  			
					        	  			
					        	  	    if(val1 < 2)
					        	  	     {
					        	  			if(val2 < 2)
					        	  				{
					        	  					var amt=	rclimbingPrice[pz];
					        	  					actAmount=Math.ceil(val1*amt);
					        	  					totalamountwithservicetax=totalamountwithservicetax+actAmount;
					        	  			
					        	  				}
					        	  			else
					        	  				{
					        	  					var amt=rclimbingPrice[pz];
					        	  					actAmount=Math.ceil((val1*amt)+((val2*50)-50));
					        	  					totalamountwithservicetax=totalamountwithservicetax+actAmount;
					        	  				}
					        	  			
					        	  	     }
					        	  	    
					        	  	    
					        	  	    if(val1 >=2)
					        	  	    	{
					        	  	    		if(val2 < 2)
					        	  	    		{   
					        	  	    		var amt1=rclimbingPrice[pz];
					        	  	    		amt=amt1*val1;
					        	  	    		actAmount=Math.ceil(amt);
					        	  	    		totalamountwithservicetax=totalamountwithservicetax+actAmount;
					        	  	    		}
					        	  	    		else
					        	  	    		{
					        	  	    			var amt1=rclimbingPrice[pz];
					        	  	    			amt=amt1*val1;
					        	  	    			if(val1==val2){
						        	  					
						        	  					amt=amt1*val1;
							        	  	    		actAmount=Math.ceil(amt);
						        	  						
						        	  					}else if(val1>val2){
						        	  						
						        	  						amt=amt1*val1;
								        	  	    		actAmount=Math.ceil(amt);
						        	  						
						        	  					}
						        	  					else if(val2>val1){
						        	  						
						        	  						amt=amt1*val1;
						        	  						var tvar2=val2-val1;
								        	  	    		actAmount=Math.ceil(amt((tvar2*50)));
						        	  						
						        	  					}
					        	  	    			totalamountwithservicetax=totalamountwithservicetax+actAmount;
					        	  	    		
					        	  	    		}
					        	  	    	
					        	  	    	}
					        	  	    
					        	  	    
					        	  }
					            
				          }		
				  var x="<tr><td>"+r+"</td><td>"+ val+"</td><td>"+val1+"</td><td>" +val2+"</td><td align='center'>-</td><td>"+type+"</td>" +
				  		"<td align='center'>-</td><td align='center'>-</td><td>"+Math.ceil(actAmount)+"</td><td><button class='btn btn-xs btn-danger no-print' onclick='removeDataRow(this);''>&times;</button></td></tr>";
				 
/*		  				 var html = [];
				    
                html.push('<tr><td>', val)
                html.push('</td><td>', val1)
                html.push('</td><td>', val2)

                html.push('</td></tr>')*/
                $("#dataTable1").append(x);
				}i++;
				r++;
    		});
	
			     $("#BillAmount").val(Math.ceil(totalamountwithservicetax));
			      
			        var discountFlag=0;
			        var AllBillAmountForWithCalculation=totalamountwithservicetax;
			    	
			        //calculations of discount on actual bill
			        if(isNaN($("#Discount").val())){
			    		$("#Discount").val(0)
			    		discountFlag=1;
			    		
			    	}
			    	if($("#Discount").val()==''){
			    		$("#Discount").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#Discount").val()==0){
			    		$("#Discount").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	
			    	if(discountFlag!=1){
			    		
			    		if($("#Discount").val()!=0){
			    			
			    			var totalhidden=eval(parseFloat(totalamountwithservicetax));
					    
					    	
					    	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*eval(parseFloat($("#Discount").val()))/100))));
					    //	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));
					    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
					    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    		}else{
			    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
			    		}
			    	}
			    	
			    	// calculations of other charges after discount
			    	discountFlag=0;
			    	if(isNaN($("#OtherCharges").val())){
			    		$("#OtherCharges").val(0)
			    		discountFlag=1;
			    	}
			    	if($("#OtherCharges").val()==''){
			    		$("#OtherCharges").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#OtherCharges").val()==0){
			    		$("#OtherCharges").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	if(discountFlag!=1){
			    		$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
				    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#HiddenOtherCharges").val()));
				    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    	}else{
		    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		    		}
			    	
			    	// calculations of ofs Handling After Other charges
			    	discountFlag=0;
			    	if(isNaN($("#osfhandling").val())){
			    		$("#osfhandling").val(0)
			    		discountFlag=1;
			    	}
			    	if($("#osfhandling").val()==''){
			    		$("#osfhandling").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#osfhandling").val()==0){
			    		$("#osfhandling").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	if(discountFlag!=1){
			    	  	
				    	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
				    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#Hiddenosfhandling").val()));
				    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    	}else{
		    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		    		}
	


}

function visitPassBill()
{
		
	 var r = $('#dataTable1 tbody tr').length;
	   r=r-1;

	 var i=0;
     var type="visitpass";
       $("#visitpass tr").each(function() {
       	
       	  
	          var val=$(this).find("td:first").find('select option:selected').text();	
	          var val1=$(this).find("td:first").next().find('input').val();
	          var val2=$(this).find("td:first").next().next().find('select option:selected').text();
				
	               
	          if(val1==0 || val1=='' ||val1=='undefined'){
	        	  
	        	  alert("Please enter Visit Pass Number");
	        	  return;
	          }
				
				if(i==0){
				}else{
					
					
					var actAmount=0;
	  				  for(var pz=0;pz<visitType.length;pz++)
	  				  {

					        
					          if(val==visitType[pz])
					        	  {
					        	  			
					        	  		
					        	  			if(val2 < 2)
					        	  				{
					        	  		/*	var amt=parseInt(visitPrice[pz]);
					        	  		
					        	  			var amt2=(amt*14.5/100);
					        	  			actAmount=Math.ceil(amt+amt2);
					        	  			totalamountwithservicetax=totalamountwithservicetax+actAmount;*/
					        	  			
					        	  				}
					        	  			else
					        	  				{
					        	  				/*var amt=parseInt(visitPrice[pz]);
							        	  		
						        	  			var amt2=(amt*14.5/100);*/
						        	  			actAmount=Math.ceil(((val2*50)-50));
						        	  			totalamountwithservicetax=totalamountwithservicetax+actAmount;
					        	  				
					        	  				}
					        	  		
					        	  }
					            
				          }		

					
					
					
					  var x="<tr><td>"+r+"</td><td align='center'>-</td><td align='center'>-</td><td>" +val2+"</td><td align='center'>-</td><td>"+type+"</td><td>"+ val+"</td>" +
					  		"<td align='center'>"+val1+"</td><td>"+Math.ceil(actAmount)+"</td><td><button class='btn btn-xs btn-danger  no-print' onclick='removeDataRow(this);'>&times;</button></td></tr>";
							 

               $("#dataTable1").append(x);
				}i++;
				r++;
   		});
   	
       $("#BillAmount").val(Math.ceil(totalamountwithservicetax));
	      
       var discountFlag=0;
       var AllBillAmountForWithCalculation=totalamountwithservicetax;
   	
       //calculations of discount on actual bill
       if(isNaN($("#Discount").val())){
   		$("#Discount").val(0)
   		discountFlag=1;
   		
   	}
   	if($("#Discount").val()==''){
   		$("#Discount").val(0);
   		discountFlag=1;
   	}
   	if($("#Discount").val()==0){
   		$("#Discount").val(0);
   		discountFlag=1;
   	}
   	
   	
   	if(discountFlag!=1){
   		
   		if($("#Discount").val()!=0){
   			
   			var totalhidden=eval(parseFloat(totalamountwithservicetax));
		    
		    	
		    	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*eval(parseFloat($("#Discount").val()))/100))));
		    //	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));
		    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
		    	$("#BillAmount").val(AllBillAmountForWithCalculation);
   		}else{
   			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
   		}
   	}
   	
   	// calculations of other charges after discount
   	discountFlag=0;
   	if(isNaN($("#OtherCharges").val())){
   		$("#OtherCharges").val(0)
   		discountFlag=1;
   	}
   	if($("#OtherCharges").val()==''){
   		$("#OtherCharges").val(0);
   		discountFlag=1;
   	}
   	if($("#OtherCharges").val()==0){
   		$("#OtherCharges").val(0);
   		discountFlag=1;
   	}
   	
   	if(discountFlag!=1){
   		$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
	    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#HiddenOtherCharges").val()));
	    	$("#BillAmount").val(AllBillAmountForWithCalculation);
   	}else{
			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		}
   	
   	// calculations of ofs Handling After Other charges
   	discountFlag=0;
   	if(isNaN($("#osfhandling").val())){
   		$("#osfhandling").val(0)
   		discountFlag=1;
   	}
   	if($("#osfhandling").val()==''){
   		$("#osfhandling").val(0);
   		discountFlag=1;
   	}
   	if($("#osfhandling").val()==0){
   		$("#osfhandling").val(0);
   		discountFlag=1;
   	}
   	
   	if(discountFlag!=1){
   	  	
	    	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
	    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#Hiddenosfhandling").val()));
	    	$("#BillAmount").val(AllBillAmountForWithCalculation);
   	}else{
			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		}

}


function monthlyPassBill()
{
	

	
	 var r = $('#dataTable1 tbody tr').length;
	   r=r-1;
	
	var i=0;
    var type="monthlypass ";
      $("#monthlypass tr").each(function() {
      	
      	  
	          var val=$(this).find("td:first").find('select option:selected').text();	
	          var val1=$(this).find("td:first").next().find('input').val();
	         /* var val2=$(this).find("td:first").next().next().find('select option:selected').text();*/
	          var val2=$(this).find("td:first").next().next().find('select option:selected').text();
	          
	         
	          if(val1==0 || val1=='' ||val1=='undefined'){
	        	  
	        	  alert("Please enter Monthly Pass Number");
	        	  
	        	  return;
	          }	
				
				if(i==0){
				}else{
					
					
					var actAmount=0;
	  				  for(var pz=0;pz<monthlyType.length;pz++)
	  				  {

	  				/*alert(monthlyType[pz]+" monthlyType");
	  				alert(val+"  val");*/
					        if(val==monthlyType[pz])
					        	{
					        	
					        		if(val2 < 2)
					        			{
					        		/*	var amt=parseInt(monthlyPrice[pz]);
					        			var amt1=(amt*14.50/100);
					        			actAmount=Math.ceil((amt+amt1));
					        			totalamountwithservicetax=totalamountwithservicetax+actAmount;*/
					        			}
					        		else
					        			{
					        		/*	var amt=parseInt(monthlyPrice[pz]);
					        			var amt1=(amt*14.50/100);
					        			actAmount=Math.ceil((amt+amt1)+((val2*50)-50));
					        			totalamountwithservicetax=totalamountwithservicetax+actAmount;*/
					        			
					        			actAmount=Math.ceil(((val2*50)-50));
				        	  			totalamountwithservicetax=totalamountwithservicetax+actAmount;
				        	  			/*alert(actAmount);*/
					        			
					        			}
					        	}
					            
				          }		
					
					
	  				var x="<tr><td>"+r+"</td><td align='center'>-</td><td align='center'>-</td><td>" +val2+"</td><td align='center'>-</td><td>"+type+"</td><td>"+ val+"</td>" +
			  		"<td align='center'>"+val1+"</td><td>"+Math.ceil(actAmount)+"</td><td><button class='btn btn-xs btn-danger  no-print' onclick='removeDataRow(this);'>&times;</button></td></tr>";
				 

              $("#dataTable1").append(x);
				}i++;
				r++;
  		});
      $("#BillAmount").val(Math.ceil(totalamountwithservicetax));
      
      var discountFlag=0;
      var AllBillAmountForWithCalculation=totalamountwithservicetax;
  	
      //calculations of discount on actual bill
      if(isNaN($("#Discount").val())){
  		$("#Discount").val(0)
  		discountFlag=1;
  		
  	}
  	if($("#Discount").val()==''){
  		$("#Discount").val(0);
  		discountFlag=1;
  	}
  	if($("#Discount").val()==0){
  		$("#Discount").val(0);
  		discountFlag=1;
  	}
  	
  	
  	if(discountFlag!=1){
  		
  		if($("#Discount").val()!=0){
  			
  			var totalhidden=eval(parseFloat(totalamountwithservicetax));
		    
		    	
		    	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*eval(parseFloat($("#Discount").val()))/100))));
		    //	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));
		    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
		    	$("#BillAmount").val(AllBillAmountForWithCalculation);
  		}else{
  			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
  		}
  	}
  	
  	// calculations of other charges after discount
  	discountFlag=0;
  	if(isNaN($("#OtherCharges").val())){
  		$("#OtherCharges").val(0)
  		discountFlag=1;
  	}
  	if($("#OtherCharges").val()==''){
  		$("#OtherCharges").val(0);
  		discountFlag=1;
  	}
  	if($("#OtherCharges").val()==0){
  		$("#OtherCharges").val(0);
  		discountFlag=1;
  	}
  	
  	if(discountFlag!=1){
  		$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
	    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#HiddenOtherCharges").val()));
	    	$("#BillAmount").val(AllBillAmountForWithCalculation);
  	}else{
			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		}
  	
  	// calculations of ofs Handling After Other charges
  	discountFlag=0;
  	if(isNaN($("#osfhandling").val())){
  		$("#osfhandling").val(0)
  		discountFlag=1;
  	}
  	if($("#osfhandling").val()==''){
  		$("#osfhandling").val(0);
  		discountFlag=1;
  	}
  	if($("#osfhandling").val()==0){
  		$("#osfhandling").val(0);
  		discountFlag=1;
  	}
  	
  	if(discountFlag!=1){
  	  	
	    	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
	    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#Hiddenosfhandling").val()));
	    	$("#BillAmount").val(AllBillAmountForWithCalculation);
  	}else{
			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		}

}


function birthdayBill()
{
			var r = $('#dataTable1 tbody tr').length;
			r=r-1;
			  var i=0;
			  
			
			  var type="birthdaypackage";
    		  $("#birthday tr").each(function() {
      	
      	  
	          var val=$(this).find("td:first").find('select option:selected').text();// package	
	          var val1=$(this).find("td:first").next().find('input').val();// no of childern
	          var val2=$(this).find("td:first").next().next().find('input').val();// no of adult
	         
		       var packageId=0;
	          
	          if(val=='package 1'){
	        	  packageId=1;
	        	 
	          }else if(val=='package 2'){
	        	  packageId=2;
	        	
	          }
	          //     var val2=$(this).find("td:first").next().next().find('select option:selected').text();
			
	              
	          //   alert(val);
	      
				if(i==0){
					 
				}else{
					/* alert(birthPrice[packageId-1]+" jabba");*/
				
					if(i==1){
						  var billadvbookHidd= $("#birthAdvanceBookHidden").val();
						
						  
						  if(billadvbookHidd==0){
							
						  }else{
							var advBirthHidAdult=  parseInt($("#advBirthHiddenAdult").val());
							var advBirthHidChild=parseInt($("#advBirthHiddenChild").val());
							
							
							var bDayChild=	parseInt($("#birthDayChild").val());
							var bDayAdult= parseInt($("#birthDayAdult").val());
						
							
							if(parseInt(bDayAdult)<parseInt(advBirthHidAdult)){
								alert("Adult should be Greater Than "+advBirthHidAdult);
								/*
								   $("#birthdayAdultQuantity").hide();
						              $("#birthdayChildQuantity").hide();*/
						              
						              $("#birthdayAdultQuantity").slideDown();
									   $("#birthdayAdultQuantity").fadeOut(3000);
									   return false;
							}
							if(parseInt(bDayChild)<parseInt(advBirthHidChild)){
								alert("child should be Greater Than "+advBirthHidChild);
								$("#birthdayChildQuantity").slideDown();
								   $("#birthdayChildQuantity").fadeOut(3000);
								   return false;
							}
						
						  }
					}
					
					var actAmount=0;
					
					
	  				  for(var pz=0;pz<birthType.length;pz++)
	  				  {
	  					
	  				
					        if(val.match(birthType[pz]))
					        	{
					        	 	
					        
					        	if(parseInt(val1) <parseInt(15)){
					        		
					        		var child=parseInt(val1);
					        		var parents=parseInt(val1)+3;
					        		
					        		
					        		if(parseInt(val2) <= parseInt(parents)){
					        	
					        			var amt=parseInt(val1)*parseInt(birthPrice[packageId-1]);
					        			
					        			/*var amt1=(amt*14.50/100);*/
					        			var amt1=0;
					        			actAmount=Math.ceil((amt+amt1))+parseInt(1000);
					        			totalamountwithservicetax=totalamountwithservicetax+actAmount;	
					        			
					        		}
					        		if(parseInt(val2) > parseInt(parents)){
					        			var temp=parseInt(val2) - parseInt(parents);
					        			var amt=parseInt(val1)*parseInt(birthPrice[packageId-1]);
					        			/*var amt1=(amt*14.50/100);*/
					        			var amt1=0;
					        			var tempamt=temp*50;
					        			actAmount=Math.ceil((amt+amt1)+tempamt)+parseInt(1000);
					        			totalamountwithservicetax=totalamountwithservicetax+actAmount;	
					        			
					        		}
					        	}
					        	
					        	if(parseInt(val1) >=parseInt(15)){
					        		
					        		var child=parseInt(val1);
					        		var parents=parseInt(val1)+3;
					        		
					        		
					        		if(parseInt(val2) <= parseInt(parents)){
					        			
					        			var amt=parseInt(val1)*parseInt(birthPrice[packageId-1]);
					        			/*var amt1=(amt*14.50/100);*/
					        			var amt1=0;
					        			actAmount=Math.ceil((amt+amt1));
					        			totalamountwithservicetax=totalamountwithservicetax+actAmount;	
					        			
					        		}
					        		if(parseInt(val2) > parseInt(parents)){
					        			var temp=parseInt(val2) - parseInt(parents);
					        			var amt=parseInt(val1)*parseInt(birthPrice[packageId-1]);
					        			/*var amt1=(amt*14.50/100);*/
					        			var amt1=0;
					        			var tempamt=temp*50;
					        			actAmount=Math.ceil((amt+amt1)+tempamt);
					        			totalamountwithservicetax=totalamountwithservicetax+actAmount;	
					        			
					        		}
					        	}
					       
					        }
					            
				          }		
					
					
					  var x="<tr><td>"+r+"</td><td>-</td><td align='center'>"+val1+"</td><td>" +val2+"</td><td align='center'>-</td><td>"+type+"</td><td>"+ val+"</td><td align='center'>-</td>" +
					  		"<td>"+Math.ceil(actAmount)+"</td><td><button class='btn btn-xs btn-danger  no-print' onclick='removeDataRow(this);'>&times;</button></td></tr>";
				 

              $("#dataTable1").append(x);
				}i++;
				r++;
  		});

    		     $("#BillAmount").val(Math.ceil(totalamountwithservicetax));
			      
			        var discountFlag=0;
			        var AllBillAmountForWithCalculation=totalamountwithservicetax;
			    	
			        //calculations of discount on actual bill
			        if(isNaN($("#Discount").val())){
			    		$("#Discount").val(0)
			    		discountFlag=1;
			    		
			    	}
			    	if($("#Discount").val()==''){
			    		$("#Discount").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#Discount").val()==0){
			    		$("#Discount").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	
			    	if(discountFlag!=1){
			    	
			    		if($("#Discount").val()!=0){
			    			
			    			var totalhidden=eval(parseFloat(totalamountwithservicetax));
					    
					    	
					    	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*eval(parseFloat($("#Discount").val()))/100))));
					    //	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));
					    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
					    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    		}else{
			    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
			    		}
			    	}
			    	
			    	// calculations of other charges after discount
			    	discountFlag=0;
			    	if(isNaN($("#OtherCharges").val())){
			    		$("#OtherCharges").val(0)
			    		discountFlag=1;
			    	}
			    	if($("#OtherCharges").val()==''){
			    		$("#OtherCharges").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#OtherCharges").val()==0){
			    		$("#OtherCharges").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	if(discountFlag!=1){
			    		$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
				    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#HiddenOtherCharges").val()));
				    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    	}else{
		    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		    		}
			    	
			    	// calculations of ofs Handling After Other charges
			    	discountFlag=0;
			    	if(isNaN($("#osfhandling").val())){
			    		$("#osfhandling").val(0)
			    		discountFlag=1;
			    	}
			    	if($("#osfhandling").val()==''){
			    		$("#osfhandling").val(0);
			    		discountFlag=1;
			    	}
			    	if($("#osfhandling").val()==0){
			    		$("#osfhandling").val(0);
			    		discountFlag=1;
			    	}
			    	
			    	if(discountFlag!=1){
			    	  	
				    	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
				    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#Hiddenosfhandling").val()));
				    	$("#BillAmount").val(AllBillAmountForWithCalculation);
			    	}else{
		    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
		    		}
}


function rockBill()
{
	
	
	 var r = $('#dataTable1 tbody tr').length;
	   r=r-1;
	
	var i=0;
	  var type="rockwall";
	  $("#rock tr").each(function() {

  
    var val=$(this).find("td:first").find('select option:selected').text();	
    var val1=$(this).find("td:first").next().find('select option:selected').text();
    var val2=$(this).find("td:first").next().next().find('select option:selected').text();
		
		if(i==0){
		}else{
			
			var actAmount=0;
			  for(var pz=0;pz<attempts.length;pz++)
			  {

			
				  		
			        if(val.match(attempts[pz]))
			        	{
			        
			        		if(val1 < 2)
			        			{
			        			var amt=parseInt(rockPrice[pz]);
			        			/*var amt1=(amt*14.50/100);*/
			        			var amt1=0;
			        			actAmount=Math.ceil((amt+amt1));
			        			totalamountwithservicetax=totalamountwithservicetax+actAmount;
			        			}
			        		else
			        			{
			        			var amt=parseInt(rockPrice[pz]);
			        			/*var amt1=(amt*14.50/100);*/
			        			var amt1=0;
			        			actAmount=Math.ceil((amt+amt1)+((val1*50)-50));
			        			totalamountwithservicetax=totalamountwithservicetax+actAmount;
			        			
			        			}
			        	}
			            
		          }	
			
			  var x="<tr><td>"+r+"</td><td align='center'>-</td><td align='center'>1</td><td>"+val1+"</td><td>"+ val+"</td><td>"+type+"</td><td align='center'>-</td>" +
			  		"<td align='center'>-</td><td>"+Math.ceil(actAmount)+"</td><td class=''><button class='btn btn-xs btn-danger no-print' onclick='removeDataRow(this);'>&times;</button></td></tr>";
		 

    $("#dataTable1").append(x);
		}i++;
		r++;
});

	     $("#BillAmount").val(Math.ceil(totalamountwithservicetax));
	      
	        var discountFlag=0;
	        var AllBillAmountForWithCalculation=totalamountwithservicetax;
	    	
	        //calculations of discount on actual bill
	        if(isNaN($("#Discount").val())){
	    		$("#Discount").val(0)
	    		discountFlag=1;
	    		
	    	}
	    	if($("#Discount").val()==''){
	    		$("#Discount").val(0);
	    		discountFlag=1;
	    	}
	    	if($("#Discount").val()==0){
	    		$("#Discount").val(0);
	    		discountFlag=1;
	    	}
	    	
	    	
	    	if(discountFlag!=1){
	    	
	    		if($("#Discount").val()!=0){
	    			
	    			var totalhidden=eval(parseFloat(totalamountwithservicetax));
			    
			    	
			    	$("#HiddenDiscount").val(Math.ceil(eval(parseFloat(totalhidden*eval(parseFloat($("#Discount").val()))/100))));
			    //	$("#BillAmount").val(Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val()))));
			    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(totalhidden))-eval(parseFloat($("#HiddenDiscount").val())));
			    	$("#BillAmount").val(AllBillAmountForWithCalculation);
	    		}else{
	    			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
	    		}
	    	}
	    	
	    	// calculations of other charges after discount
	    	discountFlag=0;
	    	if(isNaN($("#OtherCharges").val())){
	    		$("#OtherCharges").val(0)
	    		discountFlag=1;
	    	}
	    	if($("#OtherCharges").val()==''){
	    		$("#OtherCharges").val(0);
	    		discountFlag=1;
	    	}
	    	if($("#OtherCharges").val()==0){
	    		$("#OtherCharges").val(0);
	    		discountFlag=1;
	    	}
	    	
	    	if(discountFlag!=1){
	    		$("#HiddenOtherCharges").val(eval(parseFloat($("#OtherCharges").val())));
		    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#HiddenOtherCharges").val()));
		    	$("#BillAmount").val(AllBillAmountForWithCalculation);
	    	}else{
 			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
 		}
	    	
	    	// calculations of ofs Handling After Other charges
	    	discountFlag=0;
	    	if(isNaN($("#osfhandling").val())){
	    		$("#osfhandling").val(0)
	    		discountFlag=1;
	    	}
	    	if($("#osfhandling").val()==''){
	    		$("#osfhandling").val(0);
	    		discountFlag=1;
	    	}
	    	if($("#osfhandling").val()==0){
	    		$("#osfhandling").val(0);
	    		discountFlag=1;
	    	}
	    	
	    	if(discountFlag!=1){
	    	  	
		    	$("#Hiddenosfhandling").val(eval(parseFloat($("#osfhandling").val())));
		    	AllBillAmountForWithCalculation=Math.ceil(eval(parseFloat(AllBillAmountForWithCalculation))+eval($("#Hiddenosfhandling").val()));
		    	$("#BillAmount").val(AllBillAmountForWithCalculation);
	    	}else{
 			 $("#BillAmount").val(Math.ceil(AllBillAmountForWithCalculation));
 		}

}

function calculatePaidAmount(){
	
	/*var chequeAmount =$("#chequeAmount").val();
	var cash=$("#cash").val();
	
	
	
	var creditAmount=$("#creditcash").val();
	
	var cashamt=0;
	if(cash!="" && cash!="undefined"){
		cashamt=cash;
	}
	var chequeamt=0;
	if(chequeAmount!="" && chequeAmount!="undefined"){
		chequeamt=chequeAmount;
	}
	
	
	
var	totalamt=parseInt(cashamt)+parseInt(chequeamt);
	$("#payingAmt").val(totalamt);*/

	var chequeAmount =$("#chequeAmount").val();
	var cash=$("#cash").val();
	var creditAmount=$("#creditcash").val();
	var cashamt=0;
	if(cash!="" && cash!="undefined"){
	cashamt=cash;
	}
		var chequeamt=0;
			if(chequeAmount!="" && chequeAmount!="undefined"){
			chequeamt=chequeAmount;
		}

var creditamt=0;

if(creditAmount!="" && creditAmount!="undefined"){
	creditamt=creditAmount;
}



var	totalamt=parseInt(cashamt)+parseInt(chequeamt)+parseInt(creditamt);
$("#payingAmt").val(totalamt);
	//	alert(chequeAmount);
//	alert(cash);
}

function addPayingAmount()
{
	
	var finalamt=$("#payingAmt").val();
	if(finalamt!="" && finalamt!="undefined"){
		$("#paidAmount").val(finalamt);
	}
}


