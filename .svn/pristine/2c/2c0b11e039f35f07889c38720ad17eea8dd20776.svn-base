<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="body.jsp"></jsp:include>



 <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
      <script src="${pageContext.request.contextPath}/resources/permission/permission.js"charset='utf-8'></script>    
 


 
</head>
<body>


<br><br><br><br>
 
	<div id="lightresult" style="width: 100%">
	
	
					
					
		
				<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTable1">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.No</th>
                                                     <th >Cust Name</th>
                                                     <th>Date</th>
                                                     <th >Start Time</th>
													 <th> End Time</th>
                                                     <th>Paid Amount</th>
                                                     <th>contact</th>
                                                      
                                                   
                                                  </tr>
                                             </thead>
                                        
								             <tbody>
											<c:forEach var="booking" items="${advancebookinglist}" varStatus="theCount">		  								 		 <tr>
		  								 		
                                                     <td>${theCount.count }</td> 
                                                     <td>${booking.customer.fatherName } &nbsp;${booking.customer.lastName }</td>
		                            				<td>${booking.date}</td>
		                            				<td>${booking.startTime}</td>
		                          					<td>${booking.endTime}</td>
		                            				<td>${booking.paidAmount}</td>
		                            				<td>${booking.customer.mob1}</td>
		                            				
                                                </tr>
                                          </c:forEach>
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>		
					
				    		
			


					
				
			
		</div>	
			
			
		
<script>
$('#dataTable1').dataTable({
		"bJQueryUI" : true,
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'

	});
</script>

</body>

</html>


