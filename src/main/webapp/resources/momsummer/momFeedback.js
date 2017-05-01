
function saveMom(){
	/*var date=$("#datepicker").val();
	var attendee=$("#attendee").val();

	var message = $('.saveMom').code();
	var subject=$("#subject").val();*/

	
	var datepicker=$('#datepicker').val();
	var attendee=$('#attendee').val();
	var subject=$('#subject').val();
	var message=$('.saveMom').code();
	
	
	/*var message=$('.saveMom').val();*/
	
if(datepicker=="")
{
//$('#dis').slideDown().html("<span>Please select Date</span>");
$("#dateselect").slideDown();
$("#dateselect").fadeOut(3000);
return false;
}

if(attendee=="")
{
//$('#dis').slideDown().html("<span>Please type Attendee</span>"); it will print only message on form 
// following section contains popup message box if you dont select the date
$("#attendeeselect").slideDown();
$("#attendeeselect").fadeOut(3000);
return false;
}
if(subject=="")
{
//$('#dis').slideDown().html('<span id="error">Please Type subject</span>');
$("#subjectselect").slideDown();
$("#subjectselect").fadeOut(3000);
return false;
}

if(message=="" || message=="<p><br></p>")
{
	
	$("#messageselect").slideDown();
	$("#messageselect").fadeOut(3000);
	return false;
}


	
	$.ajax({
		url : 'momhome',
		type : "POST",
		data : {
			datepicker : "" + datepicker,
			attendee : "" + attendee,
			subject : "" + subject,
			message : "" + message
		},
		success:function(data) {
			/*$(".saveMom").val("");*/
			$("#datepicker").val("");
			$("#attendee").val("");

			$('.saveMom').code("");
			$("#subject").val("");
			
			
			$("#success").slideDown();
			$("#success").fadeOut(3000);
			
			/*$('#nikhil').html(data);*/
		},
		error : function(xhr, ajaxOptions, thrownError) {
		//	alert("err" + thrownError + xhr.responseText);
			console.log("Error In saveChatForfeedbackcom" + thrownError + xhr.responseText);
		}
	});
	
}





function edit_onClick() {
    $.ajax({
    	
    	
       url : 'momhome',
       data:{
    	   //date: ""+ ${mom.date}
       }
        
    	
    });
}
