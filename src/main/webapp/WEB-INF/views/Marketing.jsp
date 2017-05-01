
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <title>Home</title>

<jsp:include page="body.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/marketing/marketing.js"charset='utf-8'></script>

</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
    <div id="home">
    
    <div id="wrapper" >
     <div>&nbsp;</div>
    <div id="page-wrapper" >
    <div class="block users scrollBox table-responsive">
    
				<!-- put error/success messages here  -->
					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable"
						id="failselect">
						 <button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Message Not send SuccessFully.
					</div>
					<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="messageselect">
							 <button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Message Or Email.
					</div>
					
					<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="userselect">
							 <button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Select At Least One Customer.
					</div>
				
				<div style="margin-top: 20px;"
							class="alert alert-success alert-dismissable"
							id="successselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
					<strong>Warning: </strong> Message Send SuccessFully.
				</div>
				
				
		</div>
				
				  <script type="text/javascript">
	               $("#successselect").hide();
	               $("#failselect").hide();
	               $("#messageselect").hide();
	               $("#userselect").hide();
	             
				 </script>
	
		<script type="text/javascript">
		var customerMarketingId=new Array();
		</script>
					 
 <c:forEach  var="cust" items="${customerList}">
		<script>
		customerMarketingId.push("${cust.cid}");
					
		</script>
</c:forEach>
				 
				 

 <div id="container-fluid" >
        <div id="row-fluid" >    
       
        <div class="span2">
              
              
             	    <h3>Marketing </h3>
             	    <div style="width: 80%;">
             	    
             	    <form id="marketingForm">
             	    
             	    <table class="table table-bordered table-hover table-striped  pretty" id="dataTableMark">
                                            <thead>
                                                    <tr>
                                                    	<td  colspan="4" align="right" >  
                                                    	<input type="button" value="Mark All" id="markAll" name="markAll" onclick="selectAll();"> 
                                                    </td>
                                                  </tr>
                                                  
                                                    <tr>
		                                                    <th>Select </th>
		                                                     <th >Name</th>
		                                                     <th>Mob</th>
		                                                     <th >Email </th>
													</tr>
                                             </thead>
                                        
								             <tbody>
										
		  						<c:forEach var="cust" items="${customerList}" varStatus="theCount">  
											<tr>
													<td>
													<input type="checkbox" name="${cust.cid}" value="${cust.mob1}-${cust.email}" id=""></td>
													<td>${cust.childname} &nbsp;${cust.lastName}</td>
													<td>${cust.mob1}</td>
													<td>${cust.email}</td>					  											 
		   											
									 												
										</tr>
								</c:forEach>
                                          
                                            </tbody>
                                        </table>
             	    
             	    
             	    <br>
             	    
             		<div class="col-xs-8 ">
						<label>Message:</label>
						 	<textarea  rows="6" cols="10" 
							class="form-control" placeholder="Message"
							name="message" id="message"  >
							</textarea>
	 	<br> 	
			      	</div>
			     
			      	<div class="col-xs-8 ">
			      	<input  type="checkbox" value="sms" name="type" class="chk" />Message 
			      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      	<input  type="checkbox" value="email" name="type" class="chk"/>Email
			      	<br> 
			      	<br>
			      </div>
			      	<div class="col-xs-8 " align="center">
			      	<input type="reset" value="clear" class="btn btn-primary btn-sm  " />
						  	 
						  	 &nbsp;
					 <input type="Button" value="submit" id="submit" class="btn btn-primary btn-sm " onclick="sendEmailOrSms();"/>
			      	
			      	
			      	</div>

             	    
             	    </form>
             	    
             	    </div>
             	    
             	 
             	
		       		
         </div>
        </div>
    </div>
    </div>
        </div>
        </div>
   
   
	
	<script>
	$('#dataTableMark').dataTable({
		
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'
});
	</script>
	
	
   
</body>

	 <style type="text/css">
	 .dataTables_filter {
	 display: none;
	 }
	 </style> 
</html>
		
