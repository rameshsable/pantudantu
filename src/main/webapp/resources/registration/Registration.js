
 function register(){


    		
    		var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
    		 var email = $("#email").val();
    		 var cname = $("#cname").val();
    		 var lname = $("#lname").val();
    		 var fathername = $("#fathername").val();
    		 var mothername = $("#mothername").val();
    		 var datepicker=$("#datepicker12").val();
    		 var mno1 = $("#mno1").val();
    		 var mon2 = $("#mon2").val();
    		 var locality = $("#locality").val();
    		 var address=$("#address").val();
    		 
    		 var filter = /^[0-9-+]+$/;
    		

    		
    	   if(cname == ""){
    			 
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
    			   //$('#dis').slideDown().html("<span>Please select Date</span>");
    			   $("#dateselect").slideDown();
    			   $("#dateselect").fadeOut(3000);
    			   return false;
    			   }
    			   
    				 if(address==""){
    					   
    					    $("#addressselect").slideDown();
    						   $("#addressselect").fadeOut(3000);
    					    return false;
    					  
    					   }
    				   
    				   if(locality==""){
    					   
    					    $("#localityselect").slideDown();
    						   $("#localityselect").fadeOut(3000);
    					    return false;
    					  
    					   }


    	  
    				  
    				
    	               var formdata=$("#form").serialize();
    					$.ajax({
    						url : 'Register',
    						type : "POST",
    						data :formdata,
    						success:function(data) {
    							
    							
    						
    							
    							$("#email").val("");
    							$("#cname").val("");
    							$("#lname").val("");
    							$("#fathername").val("");
    							$("#mothername").val("");
    							$("#datepicker12").val("");
    							$("#mno1").val("");
    							$("#mon2").val("");
    							$("#locality").val("");
    							$("#address").val("")
    							$("#countryCodeMob1").val("91");
    							$("#countryCodeMob2").val("91");
    							
    							 $("#customerSavedId").slideDown();
      						   $("#customerSavedId").fadeOut(3000);
    							
    						},
    						error : function(xhr, ajaxOptions, thrownError) {
    						
    							console.log("Error In saveChatForfeedbackcom" + thrownError + xhr.responseText);
    						}
    					});
    				   
    				   

    		
    		
    	}





function feedview()
{

 var x = document.forms["contactForm"]["firstName"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
       // return false;
    }




var formdata=$("#contactForm").serialize();
	$.ajax({
		url : 'viewfeed',
		type : 'POST',
		data :formdata,
		
		success:function(data) {
			
			
			/*$.getJSON('data.json', function(jd) {
                //$('#stage').html('<p> Name: ' + jd.name + '</p>');
                //$('#stage').append('<p>Age : ' + jd.age+ '</p>');
                //$('#stage').append('<p> email: ' + jd.email+ '</p>');
            	alert(jd.email);
             });*/
			 var obj = JSON.parse(data);
			document.getElementById("fe").innerHTML=obj.feedback;
			//alert(data);

			
	
			//$('#nikhil').html(data);
		},
		error : function(xhr, ajaxOptions, thrownError) {
		//	alert("err" + thrownError + xhr.responseText);
			console.log("Error In saveChatForfeedbackcom" + thrownError + xhr.responseText);
		}
	});
	
}



function viewMom(data1)
{
	//alert(data1);
	$.ajax({
		url : 'fetch',
		type : 'GET',
		data :{as:data1},
		cache: false,
        dataType: "json",
		
		success:function(data) {
			
			var tbDate="<tr><td><font color='red'>" +
			"<b>Customer Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</b></font>&nbsp;<b>"+data.custname+"</b></td>"+									
		"</tr><tr><td><font color='red'><b>Email id:&nbsp&nbsp</b></font>&nbsp;<b>"+data.email+"</b></td>"+
	"</tr><tr><td><font color='red'><b>Mobile No.:</b></font>"+
		"&nbsp;<b>"+data.mobno+"</b></td>"+
	"</tr><tr><td><font color='red'><b>Date:</b></font>&nbsp;<b>"+data.dat+"</b></td>"+
	"</tr><tr><td><font color='red'><b>Response:</b></font> &nbsp;<b>"+data.resp+"</b></td>"+
	"</tr><tr><td><font color='red'><b>Feedback:</b></font><br>" +
		"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+data.feedback+"</td></tr>";

				document.getElementById("viewFeedId").innerHTML=tbDate;
				document.getElementById('FeedBacklight').style.display = 'block';
				document.getElementById('FeedBackfade').style.display = 'block';
				
		},
		error : function(xhr, ajaxOptions, thrownError) {
		//	alert("err" + thrownError + xhr.responseText);
			console.log("Error " + thrownError + xhr.responseText);
		}
	});
}
function closeFeedBackPopUp() {
	  
	

		document.getElementById('FeedBacklight').style.display = 'none';
		document.getElementById('FeedBackfade').style.display = 'none';
		
		return false;
	}
	window.onkeyup = function(e) {

		var key = e.keyCode ? e.keyCode : e.which;

		if (key == 27) {
			closePopUp();
		}
	
	};
	
	
	/*
	function Select()
	{
		alert("hello");
		}
	*/
	

	
	