<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>

    		<div id="wrapper" >
   		    
		
           
            <div class="col-lg-6">
            <div class="panel panel-default">
            <div class="panel-heading">     
                     <i class="fa fa-bar-chart-o fa-fw"></i><strong style="font-size:18; color:#0066FF; "><i> EXPENSE </i></strong>
	                     <div class="pull-right">
		                   <%--   <div class="btn-group" >
		                    		 <img src="${pageContext.request.contextPath}/resources/images/feedback.png" height="50" width="50"></img>
		                     </div> --%>
	                     </div>
			</div>
            <div class="panel-body">
            <div class="row">
            <div class="col-lg">
            <div class="table-responsive">
             	<table class="table table-bordered table-hover table-striped" id="dataTable2"  >
                                            <thead>
                                                <tr>
                                                    <th>Sr No</th>
                                                    <th>Name</th>
                                                    <th>amount</th>
                                                     <th>date</th>
                                                   <!--  <th>Operator</th>
                                                    <th>Date</th>
                                                    <th>Feedback</th> -->
                                                    
                                               </tr>
                                            </thead>
                                            <tbody>
												<%-- <c:forEach var="list" items="${listofexp}" varStatus="theCount">
  									 			<tr>
    												<td id="ta"align="center" width="10%">${theCount.count }</td> 
                                                    <td id="Name"  width="10%"><a href="#" onClick="viewMom('${list.expenseType.expenceType}')">${list.expenseType.expenceType}</a></td>  
                                                    <td width="10%" id="dat">${list.amount}</td>
                                                    <td width="10%" id="dat">${list.dat}</td>
                                                </tr>
                                             
                                            	</c:forEach> --%>
										
										
										
										<% int i=1; %>
										<c:forEach var="type" items="${types}" varStatus="theCount">
										<c:forEach var="type1" items="${type.value}">
										<%--    Key is ${type1.key.expenceType}
										   Value is  --%>
										   
										   <tr>
    												<td id="ta"align="center" width="10%"><%=i %></td> 
                                                    <td id="Name"  width="10%"><a href="#" onClick="viewMom('${list.expenseType.expenceType}')">${type1.key.expenceType}</a></td>  
                                                    <td width="10%" id="dat">${type1.value}</td>
                                                    <td width="10%" id="dat"><fmt:formatDate type="date" value="${type.key}" /></td>
                                          </tr>
										   <%i++; %>
										</c:forEach>
										</c:forEach>
										<td id="ta"align="center" width="10%"></td> 
                                                     
                                                    <td width="10%" style="color: red; background-color: cyan;">Total Amount</td>
                                                    <td width="10%" style="color: red;">${expenseTotalAmount}</td>
                                                    <td   width="10%"></td> 
										</tbody>
										</table>
									</div>
            </div>
          
            </div>
            </div>
            </div>
            </div>	
										
								 <div class="row">
            <div class="col-lg-6">
            <div class="panel panel-default">
            <div class="panel-heading">
            	<i class="fa fa-bar-chart-o fa-fw"></i><strong style="font-size:18; color:#0066FF; "><i> REVENUE</i></strong>
            	<div class="pull-right">
		                   <%--   <div class="btn-group" >
		                    		 <img src="${pageContext.request.contextPath}/resources/images/query.png" height="50" width="50"></img>
		                     </div> --%>
	                     </div>
            </div>
            <div class="panel-body">
            <div class="row">
            <div class="col-lg">
            <div class="table-responsive">		
										<table class="table table-bordered table-hover table-striped" id="dataTable2"  >
                                            <thead>
                                                <tr>
                                                    <th>Sr No</th>
                                                    
                                                    <th>amount</th>
                                                     <th>date</th>
                                              
                                               </tr>
                                            </thead>
                                            <tbody>
												
										
										
										<% int j=1; %>
										<c:forEach var="typehashMap" items="${hashMap}" varStatus="theCount">
										
										<%--    Key is ${type1.key.expenceType}
										   Value is  --%>
										   
										   <tr>
    												<td id="ta"align="center" width="10%"><%=j %></td> 
                                                    <td id="Name"  width="10%"><a href="#" onClick="viewMom('${typehashMap.value}')">${typehashMap.value}</a></td>  
                        							<td width="10%" id="dat"><fmt:formatDate type="date" value="${typehashMap.key}" /></td>
                                          </tr>
										   <%j++; %>
										
										</c:forEach>
										 
                                                     
                                                    <td width="10%" style="color: red; background-color: cyan;">Total Amount</td>
                                                    <td width="10%" style="color: red;">${revenueAmount}</td>
                                                    <td   width="10%"></td> 
										</tbody>
										</table>
										 </div>
			</div>
          
            </div>
            </div>
            </div>
            </div>
	           
	        </div>
	        </div>
       	    </div>
       	   	
       	    </div>
       	    </div>
       	    </div>
										</body>
</html>