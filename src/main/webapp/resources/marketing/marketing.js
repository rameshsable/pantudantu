


function selectAll()
{
	

			 $("#dataTableMark tr td").each(function() {
		     	
			       $(this).find(":checkbox").prop('checked',true);	
			       
			 });
			 
			
}

function GetMonthName(monthNumber) {
    var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return months[monthNumber - 1];
  }

function searchCustomDetails(){
	 
	var date1=$("#datepickerMark1").val();
	var date2=$("#datepickerMark2").val();

	$.ajax({
		url : "searchCustomDetailsByDate",
		type : "GET",
		data :"date1="+date1 +"&date2="+date2,
		cache: false,
        dataType: "json",
		success : function(data) {
			var newRowContent="";
			var cnt=1;
			var cntDate='';
			
			for (i=0; i < data.length; i++) 
     		 {
				
				newRowContent=newRowContent+				
				"<tr><td><input type=checkbox  name="+data[i].cid +" value="+data[i].countryCodeMobile1 +data[i].mob1 +data[i].email+  "></td>";
				/*"<td>"+data[i].lastComingDate+"</td>";*/
				var d=data[i].lastComingDate;
				var resDate=	d.split('-');
				
				var monthName=	GetMonthName(resDate[1]);
		
				var newd = new Date(resDate[0],resDate[1],resDate[2]);
		
				if(cntDate==''){
					cntDate=data[i].lastComingDate ;
					newRowContent=newRowContent+"<td>"+monthName+" "+resDate[2]+", "+resDate[0]+"</td>"+
					cnt++;
				}else{
					if(cntDate==data[i].lastComingDate){
						newRowContent=newRowContent+"<td>"+cnt+"</td>"+
						cnt++;
					}else{
						cntDate=data[i].lastComingDate ;
						cnt=1;	
						newRowContent=newRowContent+"<td>"+monthName+" "+resDate[2]+", "+resDate[0]+"</td>";
						cnt++;
					}
				}
				newRowContent=newRowContent+"<td>"+data[i].childname +"&nbsp"+data[i].lastName+"</td>"+
				"<td>"+data[i].mob1+"</td>"+
				"<td>"+data[i].email+"</td>"+			
				"<td>"+data[i].locality.name+"</td></tr>";	
     		 }
			
				
 												
			$( "#dataTableMark tbody tr" ).each( function(){
				  this.parentNode.removeChild( this ); 
				});
			
			
			$("#dataTableMark tbody").append(newRowContent);
				
		
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});
	
}

function sendEmailOrSms()
{	
		
			
			var emailId = new Array();
			var mobile = new Array();
			var message=$("#message").val();
			var type=new Array();
			$("#dataTableMark tr td").each(function() {
		     	
			       if($(this).find(":checkbox").prop('checked')==true)
			    	   {
			    	   		
			    	   		var mob= $(this).find('input').val();		
			           		var splitarray =mob.split('-');
			    	   		mobile.push(splitarray[0]);
			    	   		emailId.push(splitarray[1]);
			    	   	
			    	   }
			       
			 });
			
			$(".chk:checked").each(function() {
				type.push($(this).val());
			});
		
				
			if((mobile.length <=0)||(emailId.length <= 0)  )
				{
					$("#userselect").slideDown();
					$("#userselect").fadeOut(3000);
					return false;
				}
			
			if($('#message').val() == ""){
				 
				   $("#messageselect").slideDown();
				   $("#messageselect").fadeOut(3000);
			    return false;
			  }
			
			
		
			 
			$.ajax({
				url : "sendEmailOrSms",
				type : "POST",
				data :"emailId="+emailId +"&mobile="+mobile+"&message="+message+"&type="+type,
				
				success : function(data) {
					
					$("#successselect").slideDown();
					$("#successselect").fadeOut(3000);
					
					$("#message").val("");
					
					$('.chk').prop('checked', false); // it set check box to false
					
					$("#dataTableMark tr td").each(function() {
				     	
					       $(this).find(":checkbox").prop('checked',false);
					       // this is for to set datatable check box to false
					       
					 });
					
				},
				error : function(xhr, ajaxOptions, thrownError) {
					alert("err" + thrownError + xhr.responseText);
				}
			});
			
			
					
	

}