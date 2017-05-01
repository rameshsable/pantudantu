
function savePermission()
{
	var formData = $("#level2").serialize();
$.ajax({
	url : "savepermission",
	type : "GET",
	data :formData,
	success : function(data) {
	
		$("#successForm1").slideDown();
	    $("#successForm1").fadeOut(3000);
	
		
		
	//	location.reload(true);
	},
	error : function(xhr, ajaxOptions, thrownError) {
		alert("Error occured");
	}
});



}