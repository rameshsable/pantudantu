

function editPlayZone(id,time,price,type)
{
	


	
	
	$("#save").prop('disabled',true);
	$("#update").prop('disabled',false);
	
	
	$("#time").val(time);
	$("#amount").val(price);
	$("#hidden").val(type);
	$("#id").val(id);
	$("#time").append('<option value="'+time+'" selected="selected"> '+time+' </>');
		


}


function editRclimbing(id,time,price,type)
{
;
	$("#save1").prop('disabled',true);
	$("#update1").prop('disabled',false);
	$("#rcamount").val(price);
	$("#rctime").val(time);
	$("#hidden").val(type);
	$("#id").val(id);
	$("#rctime").append('<option value="'+time+'" selected="selected"> '+time+' </>');
	
	

}

function editVisitPass(id,passtype,price,type)
{
	

		
		$("#save2").prop('disabled',true);
		$("#update2").prop('disabled',false);
		$("#vamount").val(price);
		$("#passtype").val(passtype);
		$("#hidden").val(type);
		$("#id").val(id);
		$("#passtype").append('<option value="'+passtype+'" selected="selected"> '+passtype+' </>');
		
		

}

function editMonthlyPass(id,passtype,price,type)
{
	
	
		$("#save3").prop('disabled',true);
		$("#update3").prop('disabled',false);
		$("#mpasstype").val(passtype);
		$("#mamount").val(price);
		$("#hidden").val(type);
		$("#id").val(id);
		
		$("#mpasstype").append('<option value="'+passtype+'" selected="selected"> '+passtype+' </>');


}

function editBirthdayPackage(id,packtype,price,type)
{
	

		$("#save4").prop('disabled',true);
		$("#update4").prop('disabled',false);
		$("#package").val(packtype);
		$("#bamount").val(price);
		$("#hidden").val(type);
		$("#id").val(id);
		$("#package").append('<option value="'+packtype+'" selected="selected"> '+packtype+' </>');



}
function editRock(id,attempts,price,type)
{
	
		$("#save5").prop('disabled',true);
		$("#update5").prop('disabled',false);
		$("#attempts").val(attempts);
		$("#rockamount").val(price);
		$("#hidden").val(type);
		$("#id").val(id);
		$("#attempts").append('<option value="'+attempts+'" selected="selected"> '+attempts+' </>');


}






/*
updating Data functions*/


function updatePlayzone(){
	
	
	var time=$('#time').val();
	var amount=$('#amount').val();
	var type=$('#hidden').val();
	var id=$('#id').val();
	var passtype="play";
	

	
	if(time=="")
	{
	
		$("#timeselect").slideDown();
		$("#timeselect").fadeOut(3000);
		return false;
	}
	
	
	if(amount=="")
	{
	
		$("#amountselect").slideDown();
		$("#amountselect").fadeOut(3000);
		return false;
	}

	
	

		$.ajax({
			url : "updateBill",
			type : "POST",
			data :"id="+id +"&amount="+amount+"&time="+time+"&type="+type,
			
			success : function(data) {
		    	$('#time option[value="'+time+'"]').remove();
				
				$("#amount").val("");
				
				
				//location.reload(true);
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});
	}
	 


function updateRclimbing()
{
	
	
	
	var time=$('#rctime').val();
	var amount=$('#rcamount').val();
	var type=$('#hidden').val();
	var id=$('#id').val();
	
	
	
	if(time=="")
	{
	
		$("#rctimeselect").slideDown();
		$("#rctimeselect").fadeOut(3000);
		return false;
	}
	
	
	if(amount=="")
	{
	
		$("#rcamountselect").slideDown();
		$("#rcamountselect").fadeOut(3000);
		return false;
	}


	$.ajax({
		url : "updateBill",
		type : "POST",
		data :"id="+id +"&amount="+amount+"&time="+time+"&type="+type,
		success : function(data) {
	    	//$('#rctime option[value="'+time+'"]').remove();
			$("#rcamount").val("");
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});
	







}


function  updateVisitpass()
{
	
			
		var amount=$("#vamount").val();
		var passtype=$("#passtype").val();
		var type=$('#hidden').val();
		var id=$('#id').val();
		var time=00;
		
		if(passtype=="")
		{
		
			$("#passtypeselect").slideDown();
			$("#passtypeselect").fadeOut(3000);
			return false;
		}
		
		
		if(amount=="")
		{
		
			$("#vamountselect").slideDown();
			$("#vamountselect").fadeOut(3000);
			return false;
		}
		
		

		$.ajax({
			url : "visitupdateBill",
			type : "POST",
			data :"id="+id +"&amount="+amount+"&passtype="+passtype+"&type="+type,
			success : function(data) {
		    	//$('#passtype option[value="'+passtype+'"]').remove();
				$("#vamount").val("");
				
				
				location.reload(true);
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});
		



}


function updateMonthlypass()
{
	
	
	
	var passtype=$("#mpasstype").val();
	var amount=$("#mamount").val();
	var type=$("#hidden").val();
	var id=$("#id").val();
	
	
	if(passtype=="")
	{
	
		$("#mpasstypeselect").slideDown();
		$("#mpasstypeselect").fadeOut(3000);
		return false;
	}
	
	
	if(amount=="")
	{
	
		$("#mamountselect").slideDown();
		$("#mamountselect").fadeOut(3000);
		return false;
	}
	
	
	
	
	
	
	
	$.ajax({
		url : "monthlyupdateBill",
		type : "POST",
		data :"id="+id +"&amount="+amount+"&passtype="+passtype+"&type="+type,
		success : function(data) {
	    	
			//$('#mpasstype option[value="'+passtype+'"]').remove();
			$("#mamount").val("");
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});

	
}
	function updateBirthday()
	{
		
		
		var packtype=$("#package").val();
		var amount=$("#bamount").val();
		var type=$("#hidden").val();
		var id=$("#id").val();
		
		
		if(packtype=="")
		{
		
			$("#bpasstypeselect").slideDown();
			$("#bpasstypeselect").fadeOut(3000);
			return false;
		}
		
		
		if(amount=="")
		{
		
			$("#bamountselect").slideDown();
			$("#bamountselect").fadeOut(3000);
			return false;
		}
		
		
		
		$.ajax({
			url : "birthdayupdateBill",
			type : "POST",
			data :"id="+id +"&amount="+amount+"&packtype="+packtype+"&type="+type,
			success : function(data) {
		    	
				//$('#package option[value="'+packtype+'"]').remove();
				$("#bamount").val("");
				
				
				location.reload(true);
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});
		
		
		
		
	}





	function updateRock()
	{
		
		
		
		
		var attempt=$("#attempts").val();
		var amount=$("#rockamount").val();
		var type=$("#hidden").val();
		var id=$("#id").val();
		
		
		if(attempt=="")
		{
		
			$("#rockselect").slideDown();
			$("#rockselect").fadeOut(3000);
			return false;
		}
		
		
		if(amount=="")
		{
		
			$("#rockamountselect").slideDown();
			$("#rockamountselect").fadeOut(3000);
			return false;
		}
		
		$.ajax({
			url : "rockupdateBill",
			type : "POST",
			data :"id="+id +"&amount="+amount+"&attempt="+attempt+"&type="+type,
			success : function(data) {
		    	
				//$('#attempts option[value="'+attempt+'"]').remove();
				$("#aamount").val("");
				
				
				location.reload(true);
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});
		
	}
	
		
		
		
		
		





