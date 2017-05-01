/**
 * 
 */

function editUser()
{
		var id=( $("#user").val());
	
	var i=0;
	for(i=0;i<userId.length;i++)
		{
		    
		  if(id==userId[i]) 
			  {
			     $("#cname1").val(userName[i]);
			     $("#lname1").val(password[i]);
			  }
		}
	
	 
	$("#update").prop('disabled',false);
	 $("#submit1").prop('disabled',true);
	 
  
}









function edit(data1,data2,data3)
{
	

	$("#cname").val(data1);
	$("#lname").val(data2);
	$("#userId").val(data3);
	$("#submi").prop('disabled',false);
	$("#submit").prop('disabled',true);
}



	

function updateUser()
{
	

 
   
	 var id= $("#user").val();
	 var  userName=$("#cname1").val();
	 var password=$("#lname1").val();
	 
         if(userName=="")
        	 {
        	 
        	 	$("#usernameselect").slideDown();
			    $("#usernameselect").fadeOut(3000);
        	    return false;
     
        	 }
         
         if(password=="")
        	 {
        	 	$("#passwordselect").slideDown();
			    $("#passwordselect").fadeOut(3000);
			    return false;
        	 
        	 }
	 
        
	 $.ajax({
			url : "updateuser",
			type : "POST",
			data :"id="+id +"&userName="+userName+"&password="+password,
			
			success : function(data) {
		    	           							
				
				    $("#cname1").val("");
				    $("#lname1").val("");
				    $("#successForm").slideDown();
				    $("#successForm").fadeOut(3000);
				
				
				location.reload(true);
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});


}

	
	


