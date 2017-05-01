
function savePlayZone()
{
	
	
	
	
	
	
	
	
	var time=$('#time').val();
	var amount=$('#amount').val();

	
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

	
	

	

	
	
	
	var formData = $("#bill_1").serialize();
	$.ajax({
		url : "BiillFillUp",
		type : "GET",
		data :formData,
		success : function(data) {
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("Error occured");
		}
	});
		
	
	
	
	
	
	
	

	
	
}


function saveRclimbing()
{
	
	
	
	
	var time=$('#rctime').val();
	var amount=$('#rcamount').val();
	
	
	
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

	
	
	
	var formData = $("#bill_2").serialize();
	$.ajax({
		url : "BiillFillUp",
		type : "GET",
		data :formData,
		success : function(data) {
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("Error occured");
		}
	});
		
	
	
	
}


function saveVisitpass()
{
	
	
	
	var pass=$('#passtype').val();
	var amount=$('#vamount').val();
	
	
	
	if(pass=="")
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

	
	
	var formData = $("#bill_3").serialize();
	$.ajax({
		url : "BiillFillUp",
		type : "GET",
		data :formData,
		success : function(data) {
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("Error occured");
		}
	});

}

function saveMonthlypass()
{
	
	

	var pass=$('#mpasstype').val();
	var amount=$('#mamount').val();
	

	
	if(pass=="")
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

	
	var formData = $("#bill_4").serialize();
	$.ajax({
		url : "BiillFillUp",
		type : "GET",
		data :formData,
		success : function(data) {
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("Error occured");
		}
	});
	
	
	
}

function saveBirthday()
{
	
	
	
	
	
	var pass=$('#package').val();
	var amount=$('#bamount').val();
	
	
	if(pass=="")
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
	
	
	var formData = $("#bill_5").serialize();
	$.ajax({
		url : "BiillFillUp",
		type : "GET",
		data :formData,
		success : function(data) {
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("Error occured");
		}
	});

}

function saveRock()
{

	
	
	
	var attempt=$('#attempts').val();
	var aamount=$('#rockamount').val();
	
	
	if(attempt=="")
	{
	
		$("#rockselect").slideDown();
		$("#rockselect").fadeOut(3000);
		return false;
	}
	
	
	if(aamount=="")
	{
	
		$("#rockamountselect").slideDown();
		$("#rockamountselect").fadeOut(3000);
		return false;
	}
	
	var formData = $("#bill_6").serialize();
	$.ajax({
		url : "BiillFillUp",
		type : "GET",
		data :formData,
		success : function(data) {
			
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("Error occured");
		}
	});
	
}