


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="page-wrapper">
	
	<div id="billPrint">
						<div class="row">
					<div class="col-lg">
						<p class="page-header pull-left"><img alt="abc" src="${pageContext.request.contextPath}/resources/images/logo.png" height="90"></img>
					
					</p>
	
					</div>
					</div>
					<div class="col-lg">
					
		
		
		<!--  following section tell the size  and layout of popup window-->
					
				<div >					
               
<table class="pull-right"  style="border: 0px; height:200;width: 200; ">
 
  <tr>
 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
    <td >
    <pre>
    Mariplex Mall, Ground Floor,
    Parking Plaza,Sr. NO 15, 
    Wadgaon Sheri, Gold Adlabs,
    Kalyani Nagar, Pune - 411014 
    Call Us : 8379000400 Mail Us : ketan@investhr.com 
      </pre></td>
   </tr>
	<tr>
 	<td >
    <pre class="pull-right">
    
    <c:if test="${booking != null}">
    Customer Name :${booking.customer.childname} ${booking.customer.lastName} 
    Mobile No :${booking.customer.mob1}   ${booking.customer.mob2}
    </c:if>
    <c:if test="${visitPassAssignmen == null}">
	    <c:if test="${monthlyPassAssignment != null}">
	    Customer Name :${monthlyPassAssignment.cust.childname} ${monthlyPassAssignment.cust.lastName} 
	    Mobile No :${monthlyPassAssignment.cust.mob1}   ${monthlyPassAssignment.cust.mob2}
	    </c:if>
    </c:if>
    </pre></td>
      <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><h5><%-- <pre>Visit Pass No :${visitPassAssignmen.vid}   Monthly Pass No :${monthlyPassAssignment.id}</pre> --%></h5></td>
   </tr>
   <c:if test="${modelstring == 'success'}">
      
               <table  class="display" style=" border: 1px solid black">
               <thead>
                <tr>
                <th style=" border: 1px solid black" >Booking Id</th>
             	 <th style=" border: 1px solid black">Date</th>
                <th style=" border: 1px solid black" >Start Time </th>
				<th style=" border: 1px solid black"> End Time</th>
				<th style=" border: 1px solid black"> No Of Child</th>
				<th style=" border: 1px solid black"> No Of Adults</th>
				<th style=" border: 1px solid black"> Amount</th>
				<th style=" border: 1px solid black"> Paid Amount</th>
                </tr>
               </thead>
				<tbody >
							
						<tr>
								<td style=" border: 1px solid black">${booking.bookingId}</td>
								<td style=" border: 1px solid black"><fmt:formatDate pattern="yyyy-MM-dd" value="${booking.date}" /></td>
								<td style=" border: 1px solid black">${booking.startTime}</td>
								<td style=" border: 1px solid black">${booking.endTime}</td>
								<td style=" border: 1px solid black">${booking.child}</td>
								<td style=" border: 1px solid black">${booking.adult}</td>
								<td style=" border: 1px solid black">${booking.total}</td>
								<td style=" border: 1px solid black">${booking.paidAmount}</td>
								
								
						</tr>
							</tbody>
						</table>
		</c:if>		
							<!-- //      total paidAmount customer -->
			
			
			<br><br>

		 <c:if test="${modelstring == 'fail'}">
		               <table  class="display" style=" border: 1px solid black">
		               <thead>
		                <tr>
		                <th style=" border: 1px solid black" ></th>
		                
		               </thead>
						<tbody >
							
									<tr>
								
					                <td>Please Check The Availability Pass Is Not Assigned successfully </td>
					               	
									</tr>
							</tbody>
						</table>
						
			</c:if>

			
						</table>
						</div>
						
						<br>
		</div>
		<div align="right">
						<button type="button" id="save" name="save" class="btn btn-primary btn-right" onClick="closePopUpBill();">Close</button>
						<button type="button" id="save" name="save" class="btn btn-primary btn-right" onClick="printTable();">print</button>
					</div>

				</div>
				
                 
			
	</div>
	 
	 </body>
	 </html>
<script>
	function printTable() {

		var printContent = document.getElementById("billPrint");
		var windowUrl = 'about:blank';

		var num;
		var uniqueName = new Date();

		var windowName = 'Print' + uniqueName.getTime();
		var printWindow = window.open(num, windowName,
				'left=50000,top=50000,width=0,height=0');
		printWindow.document.write(printContent.innerHTML);

		printWindow.document.close();

		printWindow.focus();

		printWindow.print();

		printWindow.close();
		location.reload(true);

	}
</script>
<style type="text/css"> 
@media print { 
table td, table th { 
border: 1px; 
border-color: #000000; 
} 
body { 
font-family: serif; 
} 
} 
</style>

