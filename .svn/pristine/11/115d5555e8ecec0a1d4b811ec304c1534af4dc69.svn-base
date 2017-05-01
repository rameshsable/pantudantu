
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <title>Home</title>

<jsp:include page="body.jsp"></jsp:include>
 <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
          
<script src="${pageContext.request.contextPath}/resources/registration/Registration.js"charset='utf-8'></script>

</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
    <div id="home">
    <div id="wrapper" >
     <div>&nbsp;</div>
     <div id="result">
    <div id="page-wrapper" >
    <div class="block users scrollBox table-responsive">
	</div>
    <div id="container-fluid" >
        <div id="row-fluid" >         
        <div class="span2">
              <br><br>
              
             	 <h1 class="page-header">View Advance Birthday Booking</h1>
             	 <div id="dd"></div>
             	        <div id="FeedBacklight" class="white_content">
             	       
             	       <div id="page-wrapper">
						<div class="row">
					<div class="col-lg-14">
						<h1 class="page-header">Feedback <img alt="abc" src="${pageContext.request.contextPath}/resources/images/mom.png" height="30"></img>
					<div align="right">
						<button type="button" id="save" name="save" class="btn btn-primary btn-right" onClick="closeFeedBackPopUp();">Close</button>
					</div>
					</h1>
	
					</div>
					</div>
					<div class="col-xs-12">
					
		
		
		<!--  following section tell the size  and layout of popup window-->
					
<div style="height:500px;width:500px;border:solid 2px orange;overflow:scroll;overflow-x:hidden;overflow-y:scroll;">					
               
	<table  class="display" style="border:none;" >
	<tbody id="viewFeedId" ></tbody>
	</table>
           
						</div>
						
						<br>
		</div>

				</div>
             	       
             	       
             	       
             	       
             	       </div>




       
             	 
             	 
             	<table class="table table-bordered table-hover table-striped" id="bookingViewTable"  >
             	
                                            <thead>
                                                <tr>
                                                    <th ><font size="2"> Sr No</font></th>
                                                    <th><font size="2">  Name</font></th>
                                                     <th><font size="2">  Book Id</font></th>
                                                    <th><font size="2">  Adult</font></th>
                                                   <th><font size="2">  Child</font></th>
                                                   <th><font size="2"> Total </font></th>
                                                    <th><font size="2"> Paid</font> </th>
                                                     <th><font size="2">  Event Date</font></th>
                                                     <th><font size="2"> Book Date</font></th> 
                                                    <th><font size="2"> Timing</font></th>
                                                   
                                                    <th><font size="2"> Status</font></th>
                                                
                                                    
                                               </tr>
                                            </thead>
                                            <tbody>
												<c:forEach var="list" items="${listOfAdvanceBooking}" varStatus="theCount">
  									 			<tr>
    												<td >${theCount.count }</td> 
    												<td>${list.customer.fatherName}  ${list.customer.lastName}</td>  
    												<td>${list.bookingId}</td>
    												<td>${list.adult}</td>
    												<td>${list.child}</td> 
	    											 <td>${list.total}</td>
	    											 <td>${list.paidAmount}</td>
	    											 <td>${list.date}</td>
	    											 <td>${list.bookingDate}</td> 
	    											 <td>${list.startTime} TO  ${list.endTime}</td>
	    											 
	    											 <td>${list.status}</td>
	    											   
                                                    
                                             
                                            	</c:forEach>
										</tbody>
										</table>
			</body>
		<script type="text/javascript">
		
		 
				 $('#bookingViewTable').dataTable({
					
					"sPaginationType" : "full_numbers"
			
				
						
					 		
				});  
				
</script>
	  
     
       </body>

       </html>
