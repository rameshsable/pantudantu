<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Home</title>
				<body>
				<table class="table table-bordered table-hover table-striped" id="dataTable2"  >
                                            <thead>
                                                <tr>
                                                    <th>Sr No</th>
                                                    <th>So Number</th>
                                                    <th>Operator</th>
                                                    <th>Date</th>
                                                    <th>Feedback</th>
                                                    
                                               </tr>
                                            </thead>
                                            <tbody>
												<c:forEach var="feedcount" items="${FeedBackList}" varStatus="theCount">
  									 			<tr>
    												<td align="center" width="10%">${theCount.count }</td> 
                                                    <td width="25%"><a href="<c:url value="feedcomCloseCriteriachat">
		                            <c:param name="soNumber" value="${feedcount.soNumber}"/>   
		                            <c:param name="feedbackType" value="${feedId}"/>  
		                            </c:url>">${feedcount.soNumber}</a></td>  <td width="25%"><a href="<c:url value="feedcomCloseCriteriachat">
		                            <c:param name="soNumber" value="${feedcount.soNumber}"/>   
		                            <c:param name="feedbackType" value="${feedId}"/>  </c:url>">${feedcount.operator.userName}</a></td>
		                             <td width="25%"><a href="<c:url value="feedcomCloseCriteriachat">
		                            <c:param name="soNumber" value="${feedcount.soNumber}"/>   <c:param name="feedbackType" value="${feedId}"/>  </c:url>">${feedcount.fdate}</a></td>
                                                    <td width="25%"><a href="<c:url value="feedcomCloseCriteriachat">
		                            <c:param name="soNumber" value="${feedcount.soNumber}"/>   <c:param name="feedbackType" value="${feedId}"/>  </c:url>"><button type="button" class="btn btn-info center-block">View And Generate Report</button></a></td>
                                                </tr>
                                             
                                            	</c:forEach>
										</tbody>
										</table>
			</body>
		<script type="text/javascript">
				 $('#dataTable2').dataTable({
					"bJQueryUI" : true,
					"sPaginationType" : "full_numbers",
					"sDom" : 'T<"clear">lfrtip<"clear spacer">T'
			
				}); 
				
			</script>
			  


</html>