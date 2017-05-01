


<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Home</title>

 <jsp:include page="body.jsp"></jsp:include> 
<script src="${pageContext.request.contextPath}/resources/momsummer/momFeedback.js"charset='utf-8'></script>

<META http-equiv="Content-Type" content="text/html;charset=UTF-8">  


<script type="text/javascript">
$(document).ready(function(){
$('#submit').click(function(){



});
});
</script>



  <script> 
$(function() {$(function(){
	var pickerOpts = {
			showOn: "button",
			buttonImage: "${pageContext.request.contextPath}/resources/images/cal.png",
			buttonText: "Show Datepicker"
		};	
		$("#datepicker").datepicker(pickerOpts);
	});
    /* $( "#datepicker" ).datepicker(); */
});
</script>




</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
       
       
       
      
    <div id="home">
    <div id="wrapper" >
    <div id="page-wrapper" >
    <div class="block users scrollBox table-responsive">
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
		</div>
				
	<script type="text/javascript">
	$("#dateselect").hide();
	$("#attendeeselect").hide();
	$("#subjectselect").hide();
	$("#messageselect").hide();
	$("#success").hide();
	
	
</script>


      <div id="container-fluid" >
        <div id="row-fluid" >
       
       
       
       
        <div class="span2">
               <c:forEach var="usermodels" items="${models}" varStatus="theCount">
                    <!-- /.panel -->
                    <div class="col-lg-6">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                        <div class="panel-body">
                        <div class="btn-group"> <i class="fa fa-bar-chart-o fa-fw"></i>
					<%-- <a href="#" onclick="AdminCommunicator(${usermodels.companyId});">${usermodels.companyName}</a>  --%>
					
					</div>
					</div> 
					</div>
					</div>
					</div>           
               </c:forEach>
               

               
            
     
                <form action="${pageContext.request.contextPath}/momhome"method="post"  id="mform" >
                 <br>	
                                        <font color="red"> <label id="dis"></label><br></font>				
              
   										 <span class = "label label-default">Date</span>
                                         <input type="text"  name="date" id="datepicker" size="10" readonly="readonly" /><br><br>
							
									       
									       <span class = "label label-default">Attendee</span>
									      <input type="text" name="attendee" id="attendee" size="40"  class="form-control"/><br>
									       
									       <span class = "label label-default">Subject</span>
									      <input type="text" name="subject" id="subject"size="40" class="form-control"/><br>
									       
									       
									       <span class = "label label-default">Key Points</span>
									     
								 <jsp:include page="momsummernote.jsp"></jsp:include>
																   
				 </form>  
              
               
               </div>
               </div>
               </div>
               </div>
               </div>
               </div>
               
               <div id="nikhil">
               </div>
    
</body>
</html> 












