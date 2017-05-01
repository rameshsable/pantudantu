
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Home</title>

<jsp:include page="body.jsp"></jsp:include>
<%-- <script src="${pageContext.request.contextPath}/resources/FeedbackCom/Feedback.js"charset='utf-8'> --%>

<script src="${pageContext.request.contextPath}/resources/momsummer/momFeedback.js"charset='utf-8'></script>


</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
    <div id="home">
    <div id="wrapper" >
   <div id="page-wrapper" >
      <div>&nbsp;</div>
      <div id="container-fluid" >
        <div id="row-fluid" >
       
        <div class="span2">
            
                    <!-- /.panel -->
                    <div class="col-lg">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                        <div class="panel-body">
                       <div class="table-responsive">
                       
                                        <table class="table table-bordered table-hover table-striped" id="dataTable1" cellspacing="0" width="100%">
                                            <thead>
                                            
                                              <tr>
                                               
                                              <th>Sr No</th>
                                                    <th>Date</th>
                                                    <th>Attendee</th>
                                                    <th>subject</th>
                                                  
                                                  
                                                </tr>
                                            </thead>
                                            <tbody>
						<c:forEach var="mom" items="${momList}" varStatus="theCount">
						
  						<tr>
								    	<td><a href="#">${theCount.count }</a></td> 
										<td><a href="#" onClick="viewMom('${mom.id}')">${mom.date}</a></td>
										<td><a href="#" onClick="viewMom('${mom.id}')">${mom.attendee}</a></td>
										<td><a href="#" onClick="viewMom('${mom.id}')">${mom.subject}</a></td>
										<%-- <td width="70%" onClick="viewMom('${mom.id}')"><a href="#">${mom.keypoints}</a></td> --%>
										
											
								</tr> 
								
								

							</c:forEach>
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
    
    
    
    
    <!--  -->
    
    

    <script>
 function viewMom(id) {
	    
	 
		$.ajax({
		url : '${pageContext.request.contextPath}/getMomById',
		type : "POST",
		data : {
			id : "" + id
			},
		success : function(data) {
			
			document.getElementById('light').style.display = 'block';
			document.getElementById('fade').style.display = 'block';
			
			$("#light").html(data);

		},
		error : function(errorThrown) {
			alert("Error: " + errorThrown);
		}
	});
} 




  
   function closePopUp() {
	  
	

		document.getElementById('light').style.display = 'none';
		document.getElementById('fade').style.display = 'none';
		
		return false;
	}
	window.onkeyup = function(e) {

		var key = e.keyCode ? e.keyCode : e.which;

		if (key == 27) {
			closePopUp();
		}
	
	};
   </script>   
   
   </div>


<div id="light" class="white_content"></div>
	<div id="fade" class="black_overlay"></div>	
    
    
    <!--  -->
    
    
    </div>

        
  

    
    <div id="wrapper">
	       <div id="page-wrapper" >
		        <div id="newhome">
		        </div>
	       </div>
   </div>
       

</body>
<script type="text/javascript">
	$('#dataTable1').dataTable({
		
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'

	});
	/* $('#dataTable2').dataTable({
		"bJQueryUI" : true,
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'

	}); */
		
</script>
</html>
