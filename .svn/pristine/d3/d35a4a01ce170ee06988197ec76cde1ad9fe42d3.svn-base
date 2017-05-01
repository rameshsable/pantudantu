
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
              
             	 <h1 class="page-header">View Feedback</h1>
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
	<div id="FeedBackfade" class="black_overlay"></div>


<script>
   $(function () { $('#myModal').modal('hide')});
   
</script>

<script>
   $(function () { $('#myModal').on('hide.bs.modal', function () {
    
      })
   });
</script>
             	 
             	 
             	 
             	 
             	<table class="table table-bordered table-hover table-striped" id="FeedbackdataTable"  >
                                            <thead>
                                                <tr>
                                                    <th>Sr No</th>
                                                    <th>Name</th>
                                                    <th>date</th>
                                                   <!--  <th>Operator</th>
                                                    <th>Date</th>
                                                    <th>Feedback</th> -->
                                                    
                                               </tr>
                                            </thead>
                                            <tbody>
												<c:forEach var="list" items="${listofFeedback}" varStatus="theCount">
  									 			<tr>
    												<td id="ta"align="center" width="10%">${theCount.count }</td> 
                                                    <td id="Name"  width="10%"><a href="#" onClick="viewMom('${list.feedid}')">${list.custname}</a></td>  
                                                    <td width="10%" id="dat"><a href="#" onClick="viewMom('${list.feedid}')">${list.dat}</a></td>
                                                </tr>
                                             
                                            	</c:forEach>
										</tbody>
										</table>
			</body>
		<script type="text/javascript">
		
		
				 $('#FeedbackdataTable').dataTable({
					
					"sPaginationType" : "full_numbers"
			
				
						//$(document).ready(function() {
					 		
				});  
				//var table = $('#dataTable2').dataTable();
			
					 
					 $('#FeedbackdataTable').each(function (){
						    var vara = $(this).find('#ta').html();
						   // if(vara != null)
						       // alert($(this).find('#2').html());
						});
					 
		
					  

			</script>
	  
     <script>
   
     
    </script>
       </body>

       </html>
