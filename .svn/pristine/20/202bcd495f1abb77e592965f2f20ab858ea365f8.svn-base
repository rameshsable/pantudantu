
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <title>Home</title>

<%----%>
<c:if test="${CurrentUserName ==null}">
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>

 <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">



<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<%-- <div class="col-xs-3  pull-right">
<a href="http://www.pantudantu.com">
<button type="button" class="btn btn-primary btn-lg ">HOME</button>
</a>
<!-- </div>
<div class="col-xs-3  pull-right"> -->
 <a href="${pageContext.request.contextPath}/login"> 
 <button type="button" class="btn btn-info btn-lg ">LOGIN</button>
 </a>
  </div> --%>
 
   <div class="panel-heading" style="background-color:skyblue">
                             
		                        
		                      <img style="width: 214px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANYAAACHCAYAAABqMad8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6ODU1NzM0RkI2QzQ1MTFFMzlDQkZFNTlCQTZBNjlBNDgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6ODU1NzM0RkM2QzQ1MTFFMzlDQkZFNTlCQTZBNjlBNDgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo4NTU3MzRGOTZDNDUxMUUzOUNCRkU1OUJBNkE2OUE0OCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo4NTU3MzRGQTZDNDUxMUUzOUNCRkU1OUJBNkE2OUE0OCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pu4fUDkAAFWqSURBVHja7H0JfFTV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">
		                      
		                      
		                      
		                        
                  <div class="pull-right">
                 
		          <a href="http://www.pantudantu.com">
<button type="button" class="btn btn-primary btn-lg ">HOME</button>
</a>
<!-- </div>
<div class="col-xs-3  pull-right"> -->
 <%-- <a href="${pageContext.request.contextPath}/login"> 
 <button type="button" class="btn btn-info btn-lg ">LOGIN</button>
 </a> --%>
		          
                  </div>
                  </div>
</c:if>
          
<script src="${pageContext.request.contextPath}/resources/registration/Registration.js"charset='utf-8'></script>

		

</head>
<body>

				<c:if test="${CurrentUserName !=null}">
				
				 <jsp:include page="body.jsp"></jsp:include> 
	               		  <jsp:include page="menu.jsp"></jsp:include>
	               		  
	             </c:if> 

     <%--   <jsp:include page="menu.jsp"></jsp:include> --%>
    <div id="home"  >
   
    <div id="wrapper"  >
     <div>&nbsp;</div>
     <div id="result">
    <div id="page-wrapper"  >
      <div class="block users scrollBox table-responsive">
    
				<!-- put error/success messages here  //emailselect   mobselect remarkselect  -->
				
				
				<div style="margin-top: 20px;"
						class="alert alert-success alert-dismissable"
						id="successselect">
						<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
				<strong>Warning: </strong> Thank You For Your Feedback.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="emailselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter Your Valid EmailId.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="mobselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter Your Mobile Number.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="remarkselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter Your Remark.
				</div>
				
				
		</div>
				
				  <script type="text/javascript">
	              	 $("#successselect").hide();
	             	 $("#mobselect").hide();
	             	 $("#emailselect").hide();
	              	 $("#remarkselect").hide();
	             </script>
    
    <div id="container-fluid" style="margin-left: 30%; "   >
        <div id="row-fluid" >         
        <div class="span2"  >
              
              
             	 <h1 class=""  >Feel Free To Add Feedback</h1>
             	 
             	 <form id="contactForm" class="form-horizontal" action=""  >
             	    <div class="row">
					    <div class="col-xs-6 ">
						 <label style="color: blue;">Customer Name <font color="red">*</font></label>
					   
                         <input type="text" class="form-control" placeholder="FirstName LastName " name="firstName" id="cname" />
					    </div>
				    </div>
				   <br>
				    <div class="row">
						<div class="col-xs-6">
						 <label  style="color: blue;">Email<font color="red">*</font></label>
					   
						 <input type="text" class="form-control" placeholder="Email Id " name="email" id="lname">
						</div>
					</div>
					<br>
					<div class="row">      
				        <div class="col-xs-6">
						 <label style="color: blue;">Mob.No<font color="red">*</font></label>    
					    
						 <input type="text" class="form-control" placeholder="Mobile No " name="mob" id="mob">
						</div>
					</div>
					<br>
					<div class="row">
				        <div class="col-xs-6">
						 <label style="color: blue;">Your Experience about us </label>
					    <div class="radio">
  &nbsp;<label><input type="radio" name="optradio" value="Satisfied" checked="checked">Satisfied</label> &nbsp;&nbsp;&nbsp;<label><input type="radio" name="optradio" value="Not satisfied">Not satisfied</label>
 &nbsp;&nbsp;&nbsp;<label><input type="radio" name="optradio" value="Good">Good</label>
</div>
						
						</div>
					</div>
					<br>
					<div class="row">
				        <div class="col-xs-6">
                         <label  style="color: blue;">Remark <font color="red">*</font></label>
                        
          			     <textarea class="form-control" name="content" rows="5" id="fe"></textarea>
        			    </div>
     		        </div>
     		  
                   <br><br><br>
                   <!-- #messages is where the messages are placed inside -->
                  <div class="row">
                       <div class="col-md-9 col-md-offset-3">
                        <div id="messages"></div>
                       </div>
                   </div>
       
       	<div class="row">
				        <div class="col-xs-4">
                     
                        
          			    <button type="button" class="btn btn-success center-block " id="aa" onclick="register1()" style="margin-left:65%;">Submit</button>
        			    </div>
     		        </div>
     		         <br><br><br>
     		 <!--        <div class="row">
				        <div class="col-xs-7">
      <pre><font color="blue" size="2px">* The information given within the Feedback Form will be used for   
       service improvement only and are strictly confidential.</font></pre>
       </div>
       </div> -->
       
					<div class="col-xs-6">
					</div>
				<!-- 	<div class="row">
					<div class="col-xs-3">
				
                      
                        <button type="button" class="btn btn-success " style="margin-right:10000px;" id="aa" onclick="register1()">Submit</button>
                       
               
                  </div>
					</div> -->
				 
        
				
	</form>
				
	     
        </div> </div> </div> </div> </div>
        </div>
        </div>
       
     <script>
    

    	function register1()
    		{
   		
    		//lname,mob,fe
    		
    		var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
    		
    		var email=$("#lname").val();
    		
    		  if($("#email").val() == "" ){
    			  
    			  
    			    $("#emailselect").slideDown();
    				 $("#emailselect").fadeOut(3000);
    			    return false;
    			  }
    		   if(!emailRegex.test(email)){
    			   
    			    $("#emailselect").slideDown();
    				 $("#emailselect").fadeOut(3000);
    			    return false;
    			  }
    		   
    		   										
    		
    		   if($("#mob").val() == "" ){
    				  
    				  
    			    $("#mobselect").slideDown();
    				 $("#mobselect").fadeOut(3000);
    			    return false;
    			  }
    		   
    		   	if($("#fe").val() == "" ){
    				  
    				  
    			    $("#remarkselect").slideDown();
    				 $("#remarkselect").fadeOut(3000);
    			    return false;
    			  }
   
    		

    	 var formdata=$("#contactForm").serialize();
    			$.ajax({
    				url : 'addfeed',
    				type : 'POST',
    				data :formdata,
    				success:function(data) {
    					
    						
    					//email lname,mob, fe,
    					
    					$("#lname").val("");
    					$("#mob").val("");
    					$("#fe").val("");
    					$("#cname").val("");
    					$("#successselect").slideDown();
    					$("#successselect").fadeOut(3000);
    					
    			
    					//$('#nikhil').html(data);
    				},
    				error : function(xhr, ajaxOptions, thrownError) {
    				//	alert("err" + thrownError + xhr.responseText);
    					console.log("Error In saveChatForfeedbackcom" + thrownError + xhr.responseText);
    				}
    			});
    		}
     
    </script>
       </body>

       </html>

    <div style="background-color:#517b96;" class="navbar  navbar-fixed-bottom" >
    <div class="container" >
      <p class="navbar-text center-block"  style="color: black; font-style: normal; " ><font color="red">*</font> The information given within the Feedback Form will be used for   
       service improvement only and are strictly confidential.
           <a href="#" target="_blank" ><!-- HTML 5 Validation --></a>
      </p>
    
    </div>
    
    </div>




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 