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
 <script src="${pageContext.request.contextPath}/resources/advanceBooking/canclePostpond.js"charset='utf-8'></script>   
 <script src="${pageContext.request.contextPath}/resources/confirmBox/jquery-confirm.js" charset='utf-8'></script>
<link rel="stylesheet" type="text/css" 
     href="${pageContext.request.contextPath}/resources/confirmBox/jquery-confirm.css"/>


 
</head>
<body>


<br>
<br><br><br>
			
 
	<div id="cancleresult" style="width:100%">

					
						
				
				 
					<input type="hidden" id="lastid" value="1">
									
		
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
                                                     <th>Cancle</th>
                                                      
                                                   
                                                  </tr>
                                             </thead>
                                        
								             <tbody>
											<c:forEach var="booking" items="${bookingList}" varStatus="theCount">		  								 		 <tr>
		  								 		
                                                     <td>${theCount.count }</td> 
                                                     <td>${booking.customer.fatherName } &nbsp;${booking.customer.lastName }</td>
		                            				<td>${booking.date}</td>
		                            				<td>${booking.startTime}</td>
		                          					<td>${booking.endTime}</td>
		                            				<td>${booking.paidAmount}</td>
		                            				<td>${booking.customer.mob1}</td>
		                            				<td>
		                            				<a href="#" onclick="cancle('${booking.bookingId}','${booking.status}',
											'${booking.customer.cid}');">
		                            				 <!-- removeDataRow(this) -->
		                            				<input type="Button" value="Cancle"
															id="show" 
															class="btn btn-primary btn-sm  " /></a></td>
                                                </tr>
                                          </c:forEach>
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>		
					
				    		
			<div >
			</div>
			<div id="diductWindow" class="white_content"></div>
			<div id="diductWindowfade" class="black_overlay"></div>	
	      	

					
				
			
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


