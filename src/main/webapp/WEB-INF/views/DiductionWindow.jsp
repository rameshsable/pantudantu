


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="page-wrapper" style="width: 40%;height:30;">

		<div id="billPrint">
			<div class="row">
				<div class="col-lg">
					<p class="page-header pull-left">
						<img alt="abc"
							src="${pageContext.request.contextPath}/resources/images/logo.png"
							height="90"></img>

					</p>

				</div>
			</div>
			<div class="col-lg">



				<!--  following section tell the size  and layout of popup window-->

				<div>






					<table>
						<thead>
							<tr>
								<th style="border: 1px solid black">Sr.No</th>
								<th style="border: 1px solid black">Order Id</th>

								<th style="border: 1px solid black">Total</th>
								<th style="border: 1px solid black">Paid Amt</th>


							</tr>
						</thead>
						<tbody>

							<tr>
								<td style="border: 1px solid black">${theCount.count }</td>
								<td style="border: 1px solid black">${booking.bookingId}</td>

								<td style="border: 1px solid black">${booking.total}</td>
								<td style="border: 1px solid black">${booking.paidAmount}</td>





							</tr>




                             
						</tbody>
					</table>

				<input type="hidden" name="hiddenBookId" id="hiddenBookId" value="${booking.bookingId}">
					<br>
					<div class="col-xs-5">
						<label>Deduction Amount</label> <input type="text"
							        class="form-control" placeholder="Amount " name="dAmount"
							id="dAmount" value="${ booking.paidAmount / 2}" >

					</div>
					<div class="col-xs-5">
									<label>Status </label> 
							   <select name="status" id="status" class="form-control">
							<option value="closed">closed</option>
							
						
							</select>
  <br>
					</div>
					<div  class="col-xs-2">
					
					</div>
						<div  class="col-xs-4"></div>
					
					<div  class="col-xs-5">
				
					 <input type="Button" value="submit" id="rsubmit" onclick=" cancleCofirmation(); closePopUpCan() " class="btn btn-primary btn-sm "/>
							
				
					</div>
					
						<div class="col-xs-3">
						
					</div>
					
				</div>

				<br>
			</div>


		</div>



	</div>
<script>

function closePopUpCan() {
	  
	

	document.getElementById('diductWindow').style.display = 'none';
	document.getElementById('diductWindowfade').style.display = 'none';
	/*location.reload(true);*/
	return false;
}
window.onkeyup = function(e) {

	var key = e.keyCode ? e.keyCode : e.which;

	if (key == 27) {
		closePopUpBill();
	}

};

function cancleCofirmation( )
{
	
	
	
		var bookingId=$("#hiddenBookId").val();
 	  	var  deductAmt=$("#dAmount").val();
  		 var status=$("#status").val();
	
  		 alert(bookingId);
	
	 $.ajax({
		url : "getCanclationConfirmation",
		type : "GET",
		data : "bookingId=" + bookingId + "&status=" + status
				+ "&deductAmt=" + deductAmt,

		success : function(data) {
			
			if(data=='success')
				{
							alert('cancleed successfully');
				}
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});
}


</script>


</body>
</html>



