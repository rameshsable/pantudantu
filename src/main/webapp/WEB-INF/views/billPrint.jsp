


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
    <pre>
    Customer Name :${billObj.cust.childname} ${billObj.cust.lastName} 
    Mobile No :${billObj.cust.mob1}   ${billObj.cust.mob2}
    </pre></td>
      <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><h5><pre>Quot. No :${billObj.bill_Id}   Date :${billObj.bill_Date}</pre></h5></td>
   </tr>

               <table  class="display" style=" border: 1px solid black">
               <thead>
                <tr>
                <th style=" border: 1px solid black">Sr.No</th>
                <th style=" border: 1px solid black" >Time</th>
                <th style=" border: 1px solid black">No Of Child</th>
                <th style=" border: 1px solid black" >No Of Adult </th>
				<th style=" border: 1px solid black"> No Of Attempt</th>
                <th  style=" border: 1px solid black">Type </th>
                <th style=" border: 1px solid black">Pass Type</th>
                <th style=" border: 1px solid black">Pass Number</th>
                <th style=" border: 1px solid black">Amount</th>
                </tr>
               </thead>
				<tbody >
							<c:forEach  var="billdetObj" items="${billdetailsObj}" varStatus="theCount" >
									<tr>
									<td  style=" border: 1px solid black" >${theCount.count } </td>
					                <td style=" border: 1px solid black">${billdetObj.tot_time}</td>
					                <td  style=" border: 1px solid black">${billdetObj.child}</td>
					                <td style=" border: 1px solid black">${billdetObj.adult} </td>
									<td  style=" border: 1px solid black"> ${billdetObj.attempt}</td>
					                <td  style=" border: 1px solid black">${billdetObj.billPayType.type} </td>
					                <td  style=" border: 1px solid black">${billdetObj.passtype}</td>
					                <% int i=0;%>
					              <%--   <c:if test="#{not empty billdetObj.visitPassAssignmen}">
					                <td>${billdetObj.visitPassAssignmen.vid}</td>
					                <% i=1;%>
					                </c:if>
					                <c:if test="#{not empty billdetObj.monthlyPassAssignment}">
					                <td>${billdetObj.monthlyPassAssignment.id}</td>
					                <% i=1;%>
					                </c:if> --%>
					                <% if(i==0){%>
					                	<td style=" border: 1px solid black">-</td>
					               <%  }
					                
					                %>
					                
					                <td>${billdetObj.amount}</td>		
									
									</tr>
								
							
					</c:forEach>
				<tr>
								
								<td style="background-color:skyblue;color: Red; " ><!-- Service Tax 14% -->Discount :  ${billObj.bill_discount} %</td>
					            <td ><%-- ${servTax14} --%> OSF Handling </td>
					            <td style="background-color:skyblue;color: Red; " >${billObj.osfhandling}<!-- S.B Cess @ 0.50% --></td>
					            <td > Other Charges  :<%-- ${servTaxPoint5}  --%></td>
					            <td style="background-color:skyblue;color: Red; " > ${billObj.bill_other} </td>
					            <td> Paid Amount  :  </td>		
					            <td style="background-color:skyblue;color: Red; ">  ${billObj.bill_paid} </td>
					            <td  >Total Amount</td>
					            <td style="background-color:skyblue;color: Red; " >${billObj.bill_amount}</td>
					
				</tr>
							</tbody>
						</table>
						</table>
						</div>
						
						<br>
		</div>
		<div align="right">
						<button type="button" id="save" name="save" class="btn btn-primary btn-right" onClick="closePopUpBill(),reload();">Close</button>
						<button type="button" id="save" name="save" class="btn btn-primary btn-right" onClick="printTable(),reload();">print</button>
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

