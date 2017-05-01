
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <title>Home</title>

<jsp:include page="body.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/Bill/service.js"charset='utf-8'></script>
</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
    <div id="home">
    <div id="wrapper" >
     <div>&nbsp;</div>
    <div id="page-wrapper" >
    <div class="block users scrollBox table-responsive">
    
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="serviceselect">
					 <button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Enter Service Tax.
				</div>
				
				
				
		</div>
				
<script type="text/javascript">
	              $("#serviceselect").hide();
	 </script>

 <div id="container-fluid" >
        <div id="row-fluid" >     <!-- <div class="col-sm-5"> -->
       
        <div class="span2">
              
                <!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->
                <br><br>
              
             	 <h1 class="page-header">Service Tax </h1>
             	 
             	 <form id="serviceform" name="serviceform">
             	<div class="row">
					<div class="col-xs-3">
						<label>Service Tax</label>
						<input type="text" class="form-control"
							placeholder="service tax" name="stax" id="stax">
						
						 
						</div>
					
						<br>
					<div class="col-xs-3">
						<label></label>
						<br>
						<input type="Button" value="submit" id="submit" onclick="serviceTax();"  class="btn btn-primary btn-sm "/>
					</div>
					
					 
					
			      

				

			
					
				</form>
			

		       		
         </div>
         
         <div class="table-responsive" style="width: 50%;">
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTable1">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th>Service Tax</th>
                                                     <th>Active</th>
                                                    
													 
                                                   
                                          		</tr>
                                             </thead>
                                        
								             <tbody>
								        <c:forEach var="feedcount" items="${serviceList}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.tax}</td>
											
												<td>
											<c:if test="${feedcount.status == 1}">
										
											<input type="Button" value="Active" id="active" onclick="activate( ${feedcount.id});" class="btn btn-primary btn-sm "/>
											</c:if>
											<c:if test="${feedcount.status == 0}">
												<input type="Button" value="Disactive" id="deactive" onclick="activate( ${feedcount.id});" class="btn btn-primary btn-sm "/>
										
											</c:if>
											</td>
											
											
										
									 												
										</tr>
										</c:forEach>
																	
				  							
                                            
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
                                    <br>
                  
                  
                   <div class="span2">
              
                <!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->
                <br><br>
              
                  
							<script type="text/javascript">
						var oTable = 	$('#dataTable1').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>
        </div>
    </div>
    </div>
        </div>
        </div>
   
      
</body>
</html>

<!-- it will hide the search option -->
     <style type="text/css">
	 .dataTables_filter {
	 display: none;
	 }
	 </style> 
 
 

		
