
<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<head>
    <title>Home</title>
<jsp:include page="body.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/registration/Registration.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/navigation/navigationfetchdata.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/Bill/Billsave.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/Bill/BillUpdate.js"charset='utf-8'></script>


<script >

var playzonemodel=new Array();
var rclimbingmodel=new Array();
var visitpassmodel=new Array();
var monthlypassmodel=new Array();
var birthdaymodel=new Array();
var rockmodel=new Array();



</script>


<c:forEach  var="playzoneList1" items="${playzoneList}">

<script>
playzonemodel.push("${playzoneList1.time}");
 </script>
</c:forEach>


<c:forEach  var="rclimbingList1" items="${rclimbingList}">
<script>
rclimbingmodel.push("${rclimbingList1.time}");

 </script>
</c:forEach>

<c:forEach  var="visitPassList1" items="${visitPassList}">
<script>
visitpassmodel.push("${visitPassList1.passTypa}");

 </script>
</c:forEach>


<c:forEach  var="monthlypasslist1" items="${monthlypasslist}">
<script>
monthlypassmodel.push("${monthlypasslist1.monpasstype}");

 </script>
</c:forEach>

<c:forEach  var="birthdaylist1" items="${birthdaylist}">
<script>
birthdaymodel.push("${birthdaylist1.packagetype}");

 </script>
</c:forEach>


<c:forEach  var="rocklist1" items="${rocklist}">
<script>
rockmodel.push("${rocklist1.attempts}");

 </script>
</c:forEach>
			
					

 
   <script>
$(function() {
var availableTags = customer;
$(".customerCodeClass" ).autocomplete({source: availableTags});
});

</script>
 <script>
$(function() {
var availableTags = mob;
$(".mobCodeClass" ).autocomplete({source: availableTags});
});

</script>


</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
    <div id="home">
    <div id="wrapper" >
     <div>&nbsp;</div>
     
     
     
    <div id="page-wrapper" >
    
				
				









   
				
		
 <div id="container-fluid" >
        <div id="row-fluid" >     
       
        <div class="span2">
              
         
              
             	
             	 
             	 
	<div class="head" >
		<div class=""></div>
		
		<div class="clear"></div>
	</div>
	
	<div class="block users scrollBox table-responsive"  >
		
		
		
		<!-- Tab panes -->
		<div class="tab-content">
			
			<!-- VIEW STUDENT SPECIFIC ATTENDANCE DETAILS -->
			<div class="tab-pane fade in active" id="student_specific_details_tab" >
				<div align="center" style="padding: 10px;">
					<div>
						<ul class="pagination">
						  <li class="active" onclick="switchView('student_attendance_filter_1', this);"><a href="#">Play Zone</a></li>
						  <li onclick="switchView('student_attendance_filter_2', this);"><a href="#">Play +R.Climbing</a></li>
						  <li onclick="switchView('student_attendance_filter_3', this);"><a href="#">Visit Pass</a></li>
						  <li onclick="switchView('student_attendance_filter_4', this);"><a href="#">Monthly Pass</a></li>
						  <li onclick="switchView('student_attendance_filter_5', this);"><a href="#">Birthday Package</a></li>
						 <li onclick="switchView('student_attendance_filter_6', this);"><a href="#">RocK Wall</a></li>
						  
						  
						</ul>
					</div>
					<br>
					
					<div style="width: 90%;">
				
					
					
					
					<!-- play zone portion start  -->
				
					
				<div align="center" id="student_attendance_filter_1" >
				
					
				 
	             
	             
	             
	             <div class="block users scrollBox table-responsive">
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="timeselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Select Time.
							</div>
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="amountselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Amount.
						</div>
				
				 
					</div>
	             
	             
	             
	              
								
							<form  action="" id="bill_1"  ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="palyzone" name="palyzone">
								
								
								
									<tr>
									<th>Time </th>
								    <th>Amount</th>
								    <th></th>
								    <th></th>
								   
								   </tr>  
							
							
									
									<tr>
										<td align="center" >
											<select name="time" id="time">
												
											<option value='30 min'>30 min</option>
										
											<option value='1 hour'>1 hour</option>
											<option value='1 hour 30 min'>1 hour 30 min</option>
											
										    <option value='2 hour'>2 hour</option>
										    <option value='2 hour 30 min'>2 hour 30 min</option>
										    
										    <option value='3 hour'>3 hour</option>
										    <option value='3 hours 30 min'>3 hours 30 min</option>
										 	 <option value='4 hour'>4 hour </option>
										 	 <option value='4 hour 30 min'>4 hour 30 min</option>
										 	 <option value='5 hour'>5 hour</option>
										 	 <option value='5 hour 30 min'>5 hour 30 min</option>
										 	 <option value='6 hour'>6 hour</option>
										     <option value='6 hour 30 min'>6 hour 30 min</option>
										 	 <option value='7 hour'>7 hour</option>
										 	  										 	  
										    
										    
											</select>
										</td>			 
												
																				
										
											<td align="center">
											<input type="text" id="amount" name="amount">
											</td>
								
									
										
											<td align="center">										
											<input   type="button" id="save" class="btn btn-primary btn-right"  value="submit" onclick="savePlayZone();">
										    </td>
									
											<td align="center">										
											 <input type="button"id="update" value="update" class="btn btn-primary btn-right" onclick="return updatePlayzone();">
										    </td>
									
									
									</tr>
								
								
								</table>
						
											<input  name="type"id="hidden" type="hidden" value="playzone"/>
											<input type="hidden" id="id"name="id">
							
							
						
									    
							</form>
							
							 <script >
			
					 for(i=0;i<playzonemodel.length;i++)
							{
						var x=	$('#time option[value="'+playzonemodel[i]+'"]').remove();
							
							} 
					
						$("#update").prop('disabled',true);
						</script> 
							
							<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTableplayzone">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th >Time</th>
                                                     <th>Basic Amount</th>
                                                     <th >Edit </th>
													 
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
								             
								           <c:forEach var="feedcount" items="${playzoneList}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.time}</td>
											<td>${feedcount.price}</td>
											<td><a href="#" onclick="editPlayZone('${feedcount.playzoneId}','${feedcount.time}',
											'${feedcount.price}','${feedcount.type}')">
  											 
   											<img src="<%=request.getContextPath()%>/resources/images/edit-notes.png"></a></td>
									 												
										</tr>
										</c:forEach>
																	
				  							
                                            
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
							<script type="text/javascript">
						var oTable = 	$('#dataTableplayzone').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>


				 <script >
	              $("#timeselect").hide();
	              $("#amountselect").hide();
	              </script>
					
</div>
			
						
						<!-- Rclimbing portion start -->
						
						
					
						
						<div align="center" id="student_attendance_filter_2" >
							
							
						
						
						 <div class="block users scrollBox table-responsive">
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="rctimeselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Select Time.
							</div>
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="rcamountselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Amount.
							</div>
							</div>
				
				 
				
				
							<form  action="" id="bill_2" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="rclimbing" name="rclimbing">
								
									<tr>
									<th>Time </th>
								    <th>Amount</th>
								    <th></th>
								    <th></th>
								   
								   </tr>  
							
							
									
									<tr>
										<td align="center" >
											<select name="rtime" id="rctime">
											<option value='30 min'>30 min</option>
										
											<option value='1 hour'>1 hour</option>
											<option value='1 hour 30 min'>1 hour 30 min</option>
											
										    <option value='2 hour'>2 hour</option>
										    <option value='2 hour 30 min'>2 hour 30 min</option>
										    
										    <option value='3 hour'>3 hour</option>
										    <option value='3 hours 30 min'>3 hours 30 min</option>
										 	 <option value='4 hour'>4 hour </option>
										 	 <option value='4 hour 30 min'>4 hour 30 min</option>
										 	 <option value='5 hour'>5 hour</option>
										 	 <option value='5 hour 30 min'>5 hour 30 min</option>
										 	 <option value='6 hour'>6 hour</option>
										     <option value='6 hour 30 min'>6 hour 30 min</option>
										 	 <option value='7 hour'>7 hour</option>
											</select>
										</td>			 
												
																				
										
											<td align="center">
											<input type="text" id="rcamount" name="amount">
											</td>
								
									
										
											<td align="center">										
											<input id="save1"type="button" value="submit" class="btn btn-primary btn-right" onclick="saveRclimbing();">
										    </td>
									
										<td align="center">										
											 <input type="button" id="update1" value="update" class="btn btn-primary btn-right" onclick="return updateRclimbing();">
										    </td>
											
									
									</tr>
								
								</table>
						
									    <input  name="type" id="hidden" type="hidden" value="rclimbing"/>
									    <input type="hidden" id="id"name="id">
									    
							</form>
							
							<script >
							$("#update1").prop('disabled',true);
							$("#save1").prop('disabled',false);
							
					for(i=0;i<rclimbingmodel.length;i++)
							{
						var x=	$('#rctime option[value="'+rclimbingmodel[i]+'"]').remove();
						
							
							}
					
							
						</script>
							
							
							<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTablerclimbing">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th >Time</th>
                                                     <th>Basic Amount</th>
                                                     <th >Edit </th>
													 
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
										
		  								 <c:forEach var="feedcount" items="${rclimbingList}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.time}</td>
											<td>${feedcount.price}</td>
									 	<td><a href="#" onclick="editRclimbing('${feedcount.rclimbingId}','${feedcount.time}',
											'${feedcount.price}','${feedcount.type}')">
  											 
   											<img src="<%=request.getContextPath()%>/resources/images/edit-notes.png"></a></td>										
										</tr>
										</c:forEach>
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
							
							
					<script >
						var oTable = 	$('#dataTablerclimbing').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>
							<script >
	            		 		 $("#rctimeselect").hide();
	             				 $("#rcamountselect").hide();
	              
	           				</script>
				
			
					
			</div><!-- End of Rclimbing -->
						
						
						
						<!--  Visit pass portion-->
						
						<div align="center" id="student_attendance_filter_3" >
						
						
						
						<div class="block users scrollBox table-responsive">
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="passtypeselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Select Time.
							</div>
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="vamountselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Amount.
							</div>
							</div>
						
						
						
						
				
							<form  action="" id="bill_3"  ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="visitpass" name="visitpass">
								
									<tr>
									<th> Pass Type </th>
								    <th>Amount</th>
								    <th></th>
								    <th></th>
								   
								   </tr>  
							
							
									
									<tr>
										<td align="center" >
											<select name="passtype" id="passtype" class="form-control">
												
											<c:forEach var="vis" items="${visitpassList}"
																varStatus="theCount">
																<option value="${vis.visitpassId}" selected>${vis.passTypa}</option>
																</c:forEach>
											
											</select>
										</td>			 
												
																				
										
											<td align="center">
											<input type="text" id="vamount" name="vamount">
											</td>
								
									
										
											<td align="center">										
											<input type="button" id="save2" value="submit" class="btn btn-primary btn-right" onclick="saveVisitpass();">
										    </td>
									
										
										<td align="center">										
											 <input type="button" id="update2"value="update" class="btn btn-primary btn-right" onclick="return updateVisitpass();">
										    </td>
									
									   
									
									</tr>
								
								</table>
						
									   <input  name="type" id="hidden" type="hidden" value="visitpass"/>
									   <input type="hidden" id="id"name="id"> 
							</form>
							
							
							<script >
							$("#update2").prop('disabled',true);
							$("#save2").prop('disabled',false);
							
					for(i=0;i<visitpassmodel.length;i++)
							{
						var x=	$('#passtype option[value="'+visitpassmodel[i]+'"]').remove();
							
							}
					$("#update2").prop('disabled',true);
						</script>
							
							
							<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTablevisitpass">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th >Pass Type</th>
                                                     <th>Basic Amount</th>
                                                     <th >Edit </th>
													 
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
										
		  								 		<c:forEach var="feedcount" items="${visitPassList}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.passTypa}</td>
											<td>${feedcount.price}</td>
									 	<td><a href="#" onclick="editVisitPass('${feedcount.visitpassId}','${feedcount.passTypa}',
											'${feedcount.price}','${feedcount.type}')">
  											 
   											<img src="<%=request.getContextPath()%>/resources/images/edit-notes.png"></a></td>										
										</tr>
										</c:forEach>
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
							
							
							
				<script >
						var oTable = 	$('#dataTablevisitpass').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>

				<script >
	            		 		 $("#passtypeselect").hide();
	             				 $("#vamountselect").hide();
	              
	           				</script>
			
					
			</div><!-- End of visit pass portion -->
			
			
			
			
			<!-- Monthly pass portion start -->
			
					<div align="center" id="student_attendance_filter_4"  >
					
					<div class="block users scrollBox table-responsive">
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="mpasstypeselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Select Time.
							</div>
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="mamountselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Amount.
							</div>
							</div>
					
				
							<form action="" id="bill_4"><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="monthlypass" name="monthlypass">
								
									<tr>
									<th>Pass Type </th>
								    <th>Amount</th>
								    <th></th>
								    <th></th>
								   
								   </tr>  
							
							
									
									<tr>
										<td align="center" >
											
											<select name="mpasstype" id="mpasstype">
												
											<c:forEach var="vis" items="${monthlypasslist}"
																varStatus="theCount">
																<option value="${vis.mpnthlyPassId}" selected>${vis.monpasstype}</option>
																</c:forEach>
											
											
											</select>
										</td>			 
												
																				
										
											<td align="center">
											<input type="text" id="mamount" name="mamount">
											</td>
								
									
										
											<td align="center">										
											<input type="button"id="save3" value="submit"class="btn btn-primary btn-right" onclick="saveMonthlypass();"> 
										    </td>
										    
										    <td align="center">										
											 <input type="button" id="update3"value="update" class="btn btn-primary btn-right" onclick="return updateMonthlypass()">
										    </td>
									
										
									
									
									</tr>
								
								</table>
										<input  name="type" id="hidden" type="hidden" value="monthlypass"/> 
										<input type="hidden" id="id"name="id">
									    
							</form>
							
							<script >
								$("#update3").prop('disabled',true);
								$("#save3").prop('disabled',false);
			
					for(i=0;i<monthlypassmodel.length;i++)
							{
						var x=	$('#mpasstype option[value="'+monthlypassmodel[i]+'"]').remove();
							
							}
					$("#update").prop('disabled',true);
						</script>
							
							<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTablemonthlypass">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th >Pass Type</th>
                                                     <th>Basic Amount</th>
                                                     <th >Edit </th>
													 
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
										
		  								 		<c:forEach var="feedcount" items="${monthlypasslist}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.monpasstype}</td>
											<td>${feedcount.price}</td>
									 	<td><a href="#" onclick="editMonthlyPass('${feedcount.mpnthlyPassId}','${feedcount.monpasstype}',
											'${feedcount.price}','${feedcount.type}')">
  											 
   											<img src="<%=request.getContextPath()%>/resources/images/edit-notes.png"></a></td>												
										</tr>
										</c:forEach>
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
							
					
			
			<script >
						var oTable = 	$('#dataTablemonthlypass').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>

				<script >
	            		 		 $("#mpasstypeselect").hide();
	             				 $("#mamountselect").hide();
	              
	           				</script>
			
					
			</div>	<!-- End of monthly pass portion -->
			
			
			<!--  start of birthday portion-->
			
			
			<div align="center" id="student_attendance_filter_5" >
			
			<div class="block users scrollBox table-responsive">
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="bpasstypeselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Select Time.
							</div>
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="bamountselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Amount.
							</div>
							</div>
								
				
							<form action="" id="bill_5"  ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="birthday" name="birthday">
								
								
								
									<tr>
									<th>Package </th>
								    <th>Amount</th>
								    <th></th>
								    <th></th>
								   
								   </tr>  
							
							
									
									<tr>
										<td align="center" >
											<select name="package" id="package">
												
													 <option value='package 1'>package 1</option>
													 <option value='package 2'>package 2</option>
													 <option value='package 3'>package 3</option>
											</select>
										</td>			 
												
																				
										
											<td align="center">
											<input type="text" id="bamount" name="bamount">
											</td>
								
									
										
											<td align="center">										
											<input type="button"id="save4" value="submit"class="btn btn-primary btn-right" onclick="saveBirthday();">
										    </td>
										    
										     <td align="center">										
											 <input type="button"id="update4" value="update" class="btn btn-primary btn-right" onclick="return updateBirthday();">
										    </td>
									
										
									
									
									</tr>
								
								</table>
							<input  name="type"id="hidden" type="hidden" value="birthday"/> 
							<input type="hidden" id="id"name="id">
						
									    
							</form>
							
							<script >
			
							$("#update4").prop('disabled',true);
							$("#save4").prop('disabled',false);
					for(i=0;i<birthdaymodel.length;i++)
							{
						var x=	$('#package option[value="'+birthdaymodel[i]+'"]').remove();
							
							}
					
						</script>
							
							
							
							
							<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTablebirthday">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th >Birthday Package</th>
                                                     <th>Basic Amount</th>
                                                     <th >Edit </th>
													 
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
										
		  								 		 <c:forEach var="feedcount" items="${birthdaylist}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.packagetype}</td>
											<td>${feedcount.price}</td>
									 	<td><a href="#" onclick="editBirthdayPackage('${feedcount.birthdayId}','${feedcount.packagetype}',
											'${feedcount.price}','${feedcount.type}')">
  											 
   											<img src="<%=request.getContextPath()%>/resources/images/edit-notes.png"></a></td>										
										</tr>
										</c:forEach>
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
							
					
					<script >
						var oTable = 	$('#dataTablebirthday').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>

				<script >
	            		 		 $("#bpasstypeselect").hide();
	             				 $("#bamountselect").hide();
	              
	           				</script>
			
					
			</div>   <!--  End of birthday portion-->
			
			
			
			
			
			
			<!-- start of rock portion -->
			
			<div align="center" id="student_attendance_filter_6" >
			
							<div class="block users scrollBox table-responsive">
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="rockselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Select Time.
							</div>
							<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="rockamountselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Amount.
							</div>
							</div>
								
				
							<form action="" id="bill_6" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="rock" >
								
								
								
								
								
									<tr>
									<th>Attempts</th>
								    <th>Amount</th>
								    <th></th>
								    <th></th>
								   
								   </tr>  
							
							
									
									<tr>
										<td align="center" >
											<select name="attempts" id="attempts">
													<option value='2'>2</option>
													 <option value='4'>4</option>
													 <option value='6'>6</option>
													  <option value='8'>8</option>
													   <option value='10'>10</option>
											</select>
										</td>			 
												
																				
										
											<td align="center">
											<input type="text" id="rockamount" name="aamount">
											</td>
								
									
										
											<td align="center">										
											<input type="button"id="save5" value="submit"class="btn btn-primary btn-right" onclick="saveRock();">
										    </td>
										    <td align="center">										
											 <input type="button"id="update5" value="update" class="btn btn-primary btn-right" onclick="return updateRock();">
										    </td>
										    
									
										
									
									
									</tr>
								
								</table>
						
									   <input  name="type" id="hidden" type="hidden" value="rock"/> 
									    
							</form>
							
									<script >
									$("#update5").prop('disabled',true);
									$("#save5").prop('disabled',false);
			
									for(i=0;i<rockmodel.length;i++)
									{
										var x=	$('#attempts option[value="'+rockmodel[i]+'"]').remove();
							
									}
								</script>
							
							
							<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTablerock">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.NO</th>
                                                     <th >Attempts</th>
                                                     <th>Basic Amount</th>
                                                     <th >Edit </th>
													 
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
										
		  								 		 <c:forEach var="feedcount" items="${rocklist}" varStatus="theCount">  
										<tr>
											<td>${theCount.count}</td>
											<td>${feedcount.attempts}</td>
											<td>${feedcount.price}</td>
									 	<td><a href="#" onclick=" editRock('${feedcount.attempId}','${feedcount.attempts}',
											'${feedcount.price}','${feedcount.type}')">
  											 
   											<img src="<%=request.getContextPath()%>/resources/images/edit-notes.png"></a></td>											
										</tr>
										</c:forEach>
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
                                    
                                    
                              <script >
	            		 		 $("#rockselect").hide();
	             				 $("#rockamountselect").hide();
	              
	           				</script>
							
					<script >
						var oTable = 	$('#dataTablerock').dataTable({
	
	  					"sPaginationType": "full_numbers",
	  					"bPaginate": false,
	   					 "bLengthChange": false,
	    				"bFilter": true,
	   					 "bInfo": false
	    


});
					
</script>
			
			
							
					
			</div><!-- eND OF ROCK PORTION -->
					
						
						
					
					
				</div>
						
						
						
					</div>
					
				
				
				
			</div>

			<!-- VIEW CLASS SPECIFIC ATTENDANCE DETAILS -->
			
			
		</div>
	</div>
	
</div>
		       		
         </div>
        </div>
    </div>
    </div>
        </div>
        </div>
    
   
			
			
			
			
			 <script> 
  
  $(function () {
    $("#datepicker1").datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange: '1990:2050'
    });
});
 
  </script> 
  
  	 <script> 
  
  $(function () {
    $("#datepicker").datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange: '1990:2050'
    });
});
 
  </script> 
 

</body>

</html>



		
<script>

$("#teacher_distribute_product").hide();
$("#class_distribute_product").hide();

function hideAllViews() {
	$("#student_distribute_product").hide();
	$("#teacher_distribute_product").hide();
	$("#staff_distribute_product").hide();
	$("#class_distribute_product").hide();

	
}
function switchView(currentSubTabView, currentLi) {
	hideAllViews();
	$("#"+currentSubTabView).show();
	
	$(".pagination li").removeClass("active");
	
	$(currentLi).addClass("active");
}


function loadClasses(classSelectionBoxId) {
$("#"+classSelectionBoxId).html("");

$.ajax({
	url : "/attendance/ajax/GetClassesList",
	type : "GET",
	data : "",
	success : function(data) {
		$("#"+classSelectionBoxId).html(data);
	}
});
}

function loadClassSections(filterNumber) {
var classId = $("#sis_classes_filter"+filterNumber+" :selected").val();

$("#sis_students_list_filter"+filterNumber).html("");
$("#sis_class_sections_filter"+filterNumber).html("");

if (classId == undefined || classId == null || classId == "") {
	$("#classNotSelectedAlert").slideDown();
	setTimeout(function() {
		$("#classNotSelectedAlert").slideUp();
	}, 3000);
	return;
}

$.ajax({
	url : "/attendance/ajax/GetClassSectionsList",
	type : "POST",
	data : {
		classId : "" + classId
	},
	success : function(data) {
		$("#sis_class_sections_filter"+filterNumber).html(data);
	}
});
}

function loadStudentsList(filterNumber) {
var classId = $("#sis_classes_filter"+filterNumber+" :selected").val();
var sectionName = $("#sis_class_sections_filter"+filterNumber+" option:selected").text();

$("#sis_students_list_filter"+filterNumber).html("");

if (classId == undefined || classId == null || classId == "") {
	$("#classNotSelectedAlert").slideDown();
	setTimeout(function() {
		$("#classNotSelectedAlert").slideUp();
	}, 3000);
	return;
}

//if (sectionName == undefined || sectionName == null || sectionName == "") {
//	$("#sectionNotSelectedAlert").slideDown();
//	setTimeout(function() {
//		$("#sectionNotSelectedAlert").slideUp();
//	}, 3000);
//	return;
//}

currentClassId = classId;
currentSectionName = sectionName;

$.ajax({
	url : "/attendance/ajax/GetClassAndSectionSpecificStudentsListOptions",
	type : "POST",
	data : {
		classId : "" + classId,
		sectionName : "" + sectionName
	},
	success : function(data) {
		$("#sis_students_list_filter"+filterNumber).html(data);

		if (data.length > 0) {
			$("#sis_students_list_filter"+filterNumber).show();
		}
	}
});
}

//LOAD STUDENT SPECIFIC DETAILS

function hideAllViews() {
$("#student_attendance_filter_1").hide();
$("#student_attendance_filter_2").hide();
$("#student_attendance_filter_3").hide();
$("#student_attendance_filter_4").hide();
$("#student_attendance_filter_5").hide();
$("#student_attendance_filter_6").hide();
$("#student_attendance_filter_7").hide();

$("#class_attendance_filter_1").hide();
$("#class_attendance_filter_2").hide();
$("#class_attendance_filter_3").hide();
$("#class_attendance_filter_4").hide();

$("#student_attendance_filter_1_result").html("");
$("#student_attendance_filter_2_result").html("");
$("#student_attendance_filter_3_result").html("");
$("#student_attendance_filter_4_result").html("");

$("#class_attendance_filter_1_result").html("");
$("#class_attendance_filter_2_result").html("");
$("#class_attendance_filter_3_result").html("");
$("#class_attendance_filter_4_result").html("");
}

function switchView(currentSubTabView, currentLi) {
hideAllViews();

$("#"+currentSubTabView).show();

$(".pagination li").removeClass("active");

$(currentLi).addClass("active");
}

function loadDataAfterLoadingPage() {
/*$('#attendance_view_tab a:first').tab('show');

$('#attendance_view_tab a').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show');
	  
	  if($(this).attr("href") == "#student_specific_details_tab") {
		  switchView('student_attendance_filter_1');
			
		$(".pagination li:first-child").addClass("active");
	  } else {
		  switchView('class_attendance_filter_1');
			
		$(".pagination li:first-child").addClass("active");
	  }
	  
	  return false;
});*/

loadClasses("sis_classes_filter1");
loadClasses("sis_classes_filter2");
loadClasses("sis_classes_filter3");
loadClasses("sis_classes_filter4");

loadClasses("sis_classes_filter5");
loadClasses("sis_classes_filter6");
loadClasses("sis_classes_filter7");
loadClasses("sis_classes_filter8");

switchView('student_attendance_filter_1');

$(".pagination li:first-child").addClass("active");


$("#teacher_distribute_product").hide();
$("#class_distribute_product").hide();

$("#classNotSelectedAlert").hide();
$("#sectionNotSelectedAlert").hide();
$("#studentNotSelectedAlert").hide();
$("#teacherNotSelectedAlert").hide();
$("#dateNotSelectedAlert").hide();
}

loadDataAfterLoadingPage();

/* $(".datepicker").datepicker({
format : 'dd-mm-yyyy'
}).datepicker("setValue", new Date());
 */
////
loadTeacherList();

function loadTeacherList() {
$("#sis_teacher_list_filter1").html("");
$("#sis_teacher_list_filter2").html("");
$("#sis_teacher_list_filter3").html("");
$("#sis_teacher_list_filter4").html("");

$.ajax({
	url : "/attendance/ajax/GetTeachersListOptions",
	type : "GET",
	data : "",
	success : function(data) {
		$("#sis_teacher_list_filter1").html(data);
		$("#sis_teacher_list_filter2").html(data);
		$("#sis_teacher_list_filter3").html(data);
		$("#sis_teacher_list_filter4").html(data);
	}
});
}




</script>


 <script>
    		var arrText = new Array();
    		var arrValue = new Array();
    		</script>
    		 <c:forEach var="hospitals" items="${counterForHospitalIssues}" varStatus="theCount">
	 			<script>
	 			arrText.push("${hospitals.hospital.hospitalname}");
	 			var value="${hospitals.counter}";
	 			arrValue.push(Number(value));
                </script>
            </c:forEach> 
         
          <script>
    		  
    	
	    	$(function () {
	            $('#container1').highcharts({
	                chart: {
	                    type: 'column',
	                    margin: [ 50, 50, 100, 80]
	                },
	                title: {
	                    text: 'Analyse Flow'
	                },
	                xAxis: {
	                    categories: arrText,
	                    title: {
	                        text: 'Client'
	                    },
	                    labels: {
	                        rotation: -45,
	                        align: 'right',
	                        style: {
	                            fontSize: '13px',
	                            fontFamily: 'Verdana, sans-serif'
	                        }
	                    }
	                },
	                yAxis: {
	                    min: 0,
	                    title: {
	                        text: 'Issues'
	                    }
	                },
	                legend: {
	                    enabled: false
	                },
	                tooltip: {
	                    pointFormat: 'Open Issue: <b>{point.y:.1f}</b>',
	                },
	                series: [{
	                    name: 'Issue',
	                    data: arrValue,
	                    dataLabels: {
	                        enabled: true,
	                        rotation: -90,
	                        color: '#FFFFFF',
	                        align: 'right',
	                        x: 4,
	                        y: 10,
	                        style: {
	                            fontSize: '13px',
	                            fontFamily: 'Verdana, sans-serif',
	                            textShadow: '0 0 3px black'
	                        }
	                    }
	                }]
	            });
	        });
    	</script>

<script type="text/javascript">
var oTable = 	$('#dataTable1').dataTable({
	
	  "sPaginationType": "full_numbers",
	  "bPaginate": false,
	    "bLengthChange": false,
	    "bFilter": true,
	    "bInfo": false
	    


});
	

 oTable.$('tr').css('backgroundColor', 'white');
oTable.$('td').css('backgroundColor', 'white');
oTable.fnFilter('');

	$('#dataTable2').dataTable({
		"bJQueryUI" : true,
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'

	});
	
	
	  
	
	
		
</script>



 <!-- it will hide the search option -->
     <style type="text/css">
	 .dataTables_filter {
	 display: none;
	 }
	 </style> 
 
 
 

  
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 <!-- <div class="block users scrollBox table-responsive">
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="dateselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Select Date First.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="attendeeselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Type Attendee.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="subjectselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Type The Subject.
				</div>
				
				 <div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="messageselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter your Keypoints and Discussion.
				</div> 
				<div style="margin-top: 20px;"
					class="alert alert-success alert-dismissable"
					id="success">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Data Submited successfully
				</div>
		</div> -->
 
 			
	<!-- <script type="text/javascript">
	$("#dateselect").hide();
	$("#attendeeselect").hide();
	$("#subjectselect").hide();
	$("#messageselect").hide();
	$("#success").hide();
	
	
</script>
 --> 
 
 
 
 
 
 
 
 
 
 