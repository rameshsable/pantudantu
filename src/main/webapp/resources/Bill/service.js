/**
 * 
 */


function serviceTax()
{

	
	var tax= $("#stax").val();
	


	if($("#stax").val()=="")
		{

		   $("#serviceselect").slideDown();
		   $("#serviceselect").fadeOut(3000);
		   return false;
		
		
		}
	
	
				/*var r = $('#dataTable1 tbody tr').length;
				var x="<tr><td>"+r+"</td><td>"+tax+"</td>" +
						"<td><input type=radio name=status checked>  </td></tr>";
				$("#dataTable1").append(x);
				*/
				
		var formData = $("#serviceform").serialize();
		$.ajax({
			url : "fillServiceTax",
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


function activate( o)
{
	
	
	
	var tax= $("#stax").val();
	var active= o;
	
	
	
	$.ajax({
		url : "activate",
		type : "GET",
		data :"tax="+tax +"&active="+active,
		
		
		success : function(data) {
	 
			
			location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});
	
}
function deactivate()
{
	
	
}