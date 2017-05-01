
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
<script src="${pageContext.request.contextPath}/resources/navigation/tablecreate.js"charset='utf-8'></script>


 
<script>

var customer=new Array();
var customerId=new Array();
var mob1=new Array();
var mob2=new Array();
var mob=new Array();
var lastName=new Array();
var fatherName=new Array();
var motherName=new Array();
var email=new Array();
var dob=new Array();
var address=new Array();
var locality=new Array();



</script> 
<c:forEach  var="customer1" items="${customerlist}">
<script>
customerId.push("${customer1.cid}");
customer.push("${customer1.childname}");// it enters child name into array named customer
 mob1.push("${customer1.mob1}");
 mob2.push("${customer1.mob2}");
 lastName.push("${customer1.lastName}");
 fatherName.push("${customer1.fatherName}");
 motherName.push("${customer1.motherName}");
 email.push("${customer1.email}");
 dob.push("${customer1.dob}");
 address.push("${customer1.address}");
 locality.push("${customer1.locality}");
// alert(locality);

 

 

 




</script>
</c:forEach>
<script>
mob=mob1.concat(mob2);

</script>


<script>
function fetchData(mob)
{

	var i;
	var j;

	
for(i=0;i<mob1.length;i++)
	{
	
	if(mob1[i]==mob)
		{
			j=i;		
		
		}
	
	}
	

	
document.getElementById('cname').value=customer[j] ; 

document.getElementById('lname').value=lastName[j] ; 

document.getElementById('fathername').value=fatherName[j] ; 

document.getElementById('mothername').value=motherName[j] ; 
document.getElementById('email').value=email[j] ; 


document.getElementById('mno1').value=mob1[j] ; 

document.getElementById('mno2').value=mob2[j] ;
document.getElementById('address').value=address[j] ;

document.getElementById('datepicker1').value=dob[j] ;


  	
	
}





</script>

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
    <div class="block users scrollBox table-responsive">
    
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="cnameselect">
					 <button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Enter Child  name.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger-dismissable"
					id="lnameselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter Last Name.
					
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="fathernameselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter  Father name.
				</div>
				
				
				
	          <div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="mothernameselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter Mother Name.
				</div>
				
				 <div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="mon1select">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter Mobile number.
				</div>  
				
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="emailselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Enter valid Email ID.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="addressselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please enter Address.
					
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="localityselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Select Locality .
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="dateselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Enter Date .
				</div>
				
				
				
		</div>
				
				  <script type="text/javascript">
	              $("#cnameselect").hide();
	              $("#lnameselect").hide();
	              $("#fathernameselect").hide();
	              $("#mothernameselect").hide();
	             
	             
	              $("#mon1select").hide();
	              $("#emailselect").hide();
	              $("#dateselect").hide();
	              $("#addressselect").hide();
	              $("#localityselect").hide();
</script>









   
				
		
 <div id="container-fluid" >
        <div id="row-fluid" >     <!-- <div class="col-sm-5"> -->
       
        <div class="span2">
              
                <!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->
         
              
             	
             	 
             	 
				
	
	<div class="head" >
		<div class=""></div>
		
		<div class="clear"></div>
	</div>
	
	<div class="block users scrollBox table-responsive"  >
		<ul class="nav nav-tabs" id="attendance_view_tab">
		  <li><a  href="#student_specific_details_tab" data-toggle="tab">Billing</a></li>
		  <li><a href="#class_specific_details_tab" data-toggle="tab">Marketing</a></li>
		    <li><a href="#class_specific_details_tab" data-toggle="tab">Accounts</a></li>
		      <li><a href="#class_specific_details_tab" data-toggle="tab">Communicator</a></li>
		</ul>
		
		
		
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
					
					
					 <div id="accordion" class="panel-group" style="width: 90%;">

        <div class="panel panel-default">

            <div class="panel-heading" style="height:40px;">

                <h4 class="panel-title" >
              <a data-toggle="collapse"  data-parent="#accordion" href="#collapseOne"  class="pull-left">Customer Detail</a>
              </h4>

            </div>

            <div id="collapseOne" class="panel-collapse collapse">

                <div class="panel-body">

                     <div id="container-fluid" >
        <div id="row-fluid" >     <!-- <div class="col-sm-5"> -->
       
        <div class="span2">
              
                <!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->
                
              
             	
             	 
             	 <form action="#" id="accordinForm">
             	<div class="row">
					<div class="col-xs-3">
						<label>Child Name</label>
						<input type="text" class="form-control customerCodeClass"
							placeholder="name" name="cname" id="cname" value="${customer}"  autocomplete="on" >
						
						
					</div>

					<div class="col-xs-3">
						<label>Last Name</label>
						<input type="text" class="form-control"
							placeholder="last name" name="lname" id="lname">
						 
					</div>
					<div class="col-xs-3">
						<label>Father Name</label> <input type="text" class="form-control"
							placeholder="father name" name="fathername" id="fathername"	> 
						

					</div>
					<div class="col-xs-3">
						<label>Mother Name</label> 
						<input type="text" class="form-control"
					  placeholder="mother name" name="mothername" id="mothername" autocomplete="on" >

					</div>
					 

					<div class="col-xs-3">
						<label>Mobile No 1</label><input type="text" class="form-control mobCodeClass"
							placeholder="mobile No1" name="mno1" id="mno1" value="${mob1}"  autocomplete="on" onChange="fetchData(this.value);">
					</div>
					
					<div class="col-xs-3">
						<label>Mobile No 2</label><input type="text" class="form-control mobCodeClass "
							placeholder="mobile no 2" name="mon2" id="mno2" value="${mob}" onChange="operatorfirstName(this.value);"onkeydown="operatorfirstName(this.value)" autocomplete="on">
					</div>
					<div class="col-xs-3">
						<label>Email</label><input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  class="form-control"
							placeholder="Email" name="email" id="email" >
					</div>

					<div class="col-xs-3">
						<label>Date Of Birth</label> 
			<input type="text"  class="form-control" name="datepicker1" id="datepicker1"  readonly="readonly" />

					</div>
					<div class="col-xs-3">
						<label>Address:</label>
						 <textarea  rows="2" cols="10" 
							class="form-control" placeholder="Address"
							name="address" id="address"  >
							</textarea>

			      </div>
			      <div class="col-xs-3">
			      <label>Locality</label>
			      <select name="locality" id="locality">
							<option value="" selected>PQR</option>
							<option value="">ABC</option>
						</select>
				</div>

				

				</div>
			<br><br>
					<div class="col-xs-4">
					</div>
				
					
				</form>
				
				
		       		
         </div>
        </div>
    </div>
                     
                     
                </div>

            </div>

        </div>

        

        

    </div>
					
					<div align="right">
				
									 Date:
										<td align="left">
			                        <input type="text"   name="datepicker" id="datepicker"  readonly="readonly" />
			   						
									</div>
									<br>
					<div style="width: 90%;">
						<div align="center" id="student_attendance_filter_1" >
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="palyzone" name="palyzone">
									<tr>
									<th> Time </th>
								    <th>Childs </th>
								    <th>Adults</th>
								    <th></th>
								     
							
									</tr>
									
									<tr>
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>Select Time</option>
													<option value='1'>30 min</option>
													 <option value='2'>45 min</option>
													 <option value='3'>1 Hour</option>
													  <option value='4'>1hour 30 min</option>
													   <option value='5'>2 hours</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>Childs</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
									
										<td align="left">
											<select id="sis_classes1" name="sis_classes" onchange="loadClassSections('1');loadStudentsList('1');">
												<option value=''>Audults</option>

												<option value='0'>0</option>
												
												<option value='1'>1</option>
												<option value='2'>2</option>
												<option value='3'>3</option>
												<option value='4'>4</option>
												<option value='5'>6</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										
									<td align="left">
									<input type="hidden" id="lastid" value="1">
							<input type="hidden" id="deleterow1" value="">
					             <input type="Button" value="+" id="addPlayzone" onclick="addRow(this.value);" class="btn btn-primary btn-sm "/>
											
										</td>
									
									
								</table>
							</form>
						</div>
					
							<div id="student_attendance_filter_1_result" >
					</div>
						<div align="left" id="student_attendance_filter_2">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table">
									<tr>
										<th>In Time</th>
								    <th>Out Time</th>
								    <th>Time</th>
								   <th>Childs</th>								   
								   <th>Adults</th>
								   
								   
								   
								   </tr>
									<tr>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
													<option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
										<td align="left">
											<select id="sis_classes1" name="sis_classes" onchange="loadClassSections('1');loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												<option value='150'>other</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
													<option value=''>--Select people--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
													<option value=''>--Select people--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										
									</tr>
									
									
								</table>
							</form>
						</div>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<div align="left" id="student_attendance_filter_3">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table">
									<tr align="center">
									    <th>Pass Type</th>
										<th>In Time</th>
								    <th>Out Time</th>
								    <th>Time</th>
								 
								   </tr>
									<tr>
									       <td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
													<option value='1'>1 child + 1 Adult</option>
													 <option value='2'>2 child + 1 Adult</option>
													 <option value='3'>Unlimited</option>
												
													  
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
									
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
													<option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
										<td align="left">
											<select id="sis_classes1" name="sis_classes" onchange="loadClassSections('1');loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												<option value='150'>other</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										
										
									</tr>
									
									
								</table>
							</form>
						</div>
						<div align="left" id="student_attendance_filter_4">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table">
									<tr>
										<th>In Time</th>
								    <th>Out Time</th>
								    <th>Time</th>
								   <th>No of People</th>
								   </tr>
									<tr>
								
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
													<option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
									
										<td align="left">
											<select id="sis_classes1" name="sis_classes" onchange="loadClassSections('1');loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												<option value='150'>other</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
													<option value=''>--Select people--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										
										
									</tr>
									
									
								</table>
							</form>
						</div>
						
						
						<div align="left" id="student_attendance_filter_5">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table">
									<tr>
									<th>Bithrday Package</th>
									<th>In Time</th>
								    <th>Out Time</th>
							
								   <th>No of People</th>
								   </tr>
									<tr>
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Birthday Package--</option>
													<option value='1'>package 1</option>
													 <option value='2'>package 2</option>
													 <option value='3'>package 3</option>
													  <option value='4'>package 4</option>
													   <option value='5'>package 5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
										<td align="left">
											<select id="sis_classes1" name="sis_classes" onchange="loadClassSections('1');loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												<option value='150'>other</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
													<option value=''>--Select people--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										
										
									</tr>
									
									
								</table>
							</form>
						</div>
						
						
						
						<div align="left" id="student_attendance_filter_6">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table">
									<tr>
									
									
									<th>No Of Attempts</th>
								
									<th>In Time</th>
								    <th>Out Time</th>
						
								 
								   </tr>
									<tr>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Attempts--</option>
													<option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections1" onchange="loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
										<td align="left">
											<select id="sis_classes1" name="sis_classes" onchange="loadClassSections('1');loadStudentsList('1');">
												<option value=''>--Select Time--</option>
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												<option value='150'>other</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										
										
										
									</tr>
									
									
								</table>
							</form>
						</div>
						
						<br><br>
						
						<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTable1">
                                            <thead>
                                                <tr>
                                                    <th >Sr.No</th>
                                                    <th>NHS Trusts</th>
                                                    <th >Total No Of Issues </th>
                                                     <th>RedFlag Count </th>
                                                   
                                                </tr>
                                            </thead>
                                        
								         <tbody>
										 <c:forEach var="hospitals" items="${counterForHospitalIssues}" varStatus="theCount">
		  								 		<tr>
                                                     <td>${theCount.count }</td> 
                                                     <td><a href="<c:url value="hospitals">
		                            					 <c:param name="hospitalId" value="${hospitals.hospital.hospitalId}"/> </c:url>">${hospitals.hospital.hospitalname}</a></td>
		                            				<td><a href="<c:url value="hospitals">
		                            					 <c:param name="hospitalId" value="${hospitals.hospital.hospitalId}"/> </c:url>">${hospitals.counter}</a></td>
		                            				<td><a href="<c:url value="hospitals">
		                            					 <c:param name="hospitalId" value="${hospitals.hospital.hospitalId}"/> </c:url>">${hospitals.redflag}</a></td>
                                                </tr>
                                          </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
						
						
						
						
						
						
						
						
						
						
					</div>
				</div>
			</div>

			<!-- VIEW CLASS SPECIFIC ATTENDANCE DETAILS -->
			<div class="tab-pane fade" id="class_specific_details_tab">
				<div align="center" style="padding: 10px;">
					<div>
						<ul class="pagination">
						  <li class="active" onclick="switchView('class_attendance_filter_1', this);"><a href="#">Date Specific Attendance</a></li>
						  <li onclick="switchView('class_attendance_filter_2', this);"><a href="#">Monthly Attendance</a></li>
						  <li onclick="switchView('class_attendance_filter_3', this);"><a href="#">Annual Attendance</a></li>
					 	<!--   <li onclick="switchView('cast_attendance_filter', this);"><a href="#">CastWise Attendance</a></li> -->
						  <li onclick="switchView('class_attendance_filter_4', this);" style="visibility: hidden;"><a href="#">Complete Attendance</a></li>
						
						</ul>
					</div>

					<div style="width: 100%;">
						<div align="left" id="class_attendance_filter_1">
							<form action="#" id="sis_filter_form5" ><!-- onsubmit="return loadDateSpecificFilterViewForClass(), getclasspdf1();" -->
								<table class="table">
									<tr>
										<td class="sis_bold_text">Select Date:</td>
										<td align="left"><input type="text" name="attendanceDate" id="attendanceDate5"class="datepicker" /></td>
									</tr>
									<tr>
										<td>Select Class</td>
										<td align="left">
											<select name="sis_classes" id="sis_classes5" onchange="loadClassSections('5');">
												<option value=''>--Select Class--</option>
												<optgroup   id="sis_classes_filter5">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class Section</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections5">
												<option value=''>--Select Section--</option>
												<optgroup   id="sis_class_sections_filter5">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="button" onclick="loadDateSpecificFilterViewForClass(), getclasspdf1();" class="btn btn-default" value="Show Attendance" /></td>
									</tr>
									<tr>
										<td colspan="2">
											<div id="student_attendance_filter_5_result">
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div align="left" id="class_attendance_filter_2">
							<form action="#" id="sis_filter_form6" ><!-- onsubmit="return loadMonthSpecificFilterViewForClass(),getclassPdf2();" -->
								<table class="table">
									<tr>
										<td class="sis_bold_text">Select Month:</td>
										<td align="left">
											<select name="attendanceMonth" id="attendanceMonth6" >
												<option>--Select Month--</option>
												<option value="0">January</option>
												<option value="1">February</option>
												<option value="2">March</option>
												<option value="3">April</option>
												<option value="4">May</option>
												<option value="5">June</option>
												<option value="6">July</option>
												<option value="7">August</option>
												<option value="8">September</option>
												<option value="9">October</option>
												<option value="10">November</option>
												<option value="11">December</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class</td>
										<td align="left">
											<select name="sis_classes" id="sis_classes6" onchange="loadClassSections('6');">
												<option value=''>--Select Class--</option>
												<optgroup   id="sis_classes_filter6">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class Section</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections6">
												<option value=''>--Select Section--</option>
												<optgroup   id="sis_class_sections_filter6">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="button" onclick="loadMonthSpecificFilterViewForClass(),getclassPdf2();" class="btn btn-default" value="Show Attendance" /></td>
									</tr>
									<tr>
										<td colspan="2">
											<div id="student_attendance_filter_6_result">
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div align="left" id="class_attendance_filter_3">
							<form action="#" id="sis_filter_form7" ><!-- onsubmit="return loadAnnualViewForClass(),getclassPdf3();" -->
								<table class="table">
									<tr>
										<td class="sis_bold_text">Select Session Year:</td>
										<td align="left">
											<select name="attendanceYear" id="attendanceYear7" >
												<option>--Select Session Year--</option>
												<c:forEach items="${sessionYears}" var="sessionYear">
													<option value="${sessionYear.yearId}">${sessionYear.yearFrom} to ${sessionYear.yearTo}</option>
												</c:forEach>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class</td>
										<td align="left">
											<select name="sis_classes" id="sis_classes7" onchange="loadClassSections('7');">
												<option value=''>--Select Class--</option>
												<optgroup   id="sis_classes_filter7">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class Section</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections7">
												<option value=''>--Select Section--</option>
												<optgroup   id="sis_class_sections_filter7">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="button" class="btn btn-default" onclick="loadAnnualSearchViewForClass()<!-- ,getclassPdf3(); -->" value="Show Attendance" /></td>
									</tr>
									<tr>
										<td colspan="2">
											<div id="student_attendance_filter_7_result">
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div align="left" id="cast_attendance_filter">
							<form action="#" id="sis_filter_form9" ><!-- onsubmit="return loadAnnualSearchViewForClass(),getclassPdf3();" -->
								<table class="table">
									<tr>
										<td class="sis_bold_text">Select Session Year:</td>
										<td align="left">
											<select name="attendanceYear" id="attendanceYear9" >
												<option>--Select Session Year--</option>
												<c:forEach items="${sessionYears}" var="sessionYear">
													<option value="${sessionYear.yearId}">${sessionYear.yearFrom} to ${sessionYear.yearTo}</option>
												</c:forEach>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class</td>
										<td align="left">
											<select name="sis_classes" id="sis_classes9" onchange="loadClassSections('9');">
											
												<option value=''>--Select Class--</option>
													<optgroup   id="sis_classes_filter9">
													<c:forEach items="${classes}" var="cls">
												
													<option value="${cls.classId}">${cls.className}</option>	
													</c:forEach>
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class Section</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections9">
												<option value=''>--Select Section--</option>
												<optgroup   id="sis_class_sections_filter9">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="button" class="btn btn-default" onclick="return loadCastWiseAttendance(),getclassPdf3();" value="Show Attendance" /></td>
									</tr>
									<tr>
										<td colspan="2">
											<div id="student_attendance_filter_9_result">
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div align="left" id="class_attendance_filter_4">
							<form action="#" id="sis_filter_form8" ><!-- onsubmit="return loadCompleteSearchViewForClass(),getclasspdf4();" -->
								<table class="table">
									<tr>
										<td>Select Class</td>
										<td align="left">
											<select name="sis_classes" id="sis_classes8"  onchange="loadClassSections('8');">
												<option value=''>--Select Class--</option>
												<optgroup   id="sis_classes_filter8">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class Section</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections8">
												<option value=''>--Select Section--</option>
												<optgroup   id="sis_class_sections_filter8">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="button" onclick="loadCompleteSearchViewForClass(),getclasspdf4();" class="btn btn-default" value="Show Attendance" /></td>
									</tr>
									<tr>
										<td colspan="2">
											<div id="student_attendance_filter_8_result">
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div align="left" id="class_attendance_filter_5">
							<form action="#" id="sis_filter_form8" ><!-- onsubmit="return loadCompleteSearchViewForClass(),getclasspdf4();" -->
								<table class="table">
									<tr>
										<td>Select Class</td>
										<td align="left">
											<select name="sis_classes" id="sis_classes8"  onchange="loadClassSections('8');">
												<option value=''>--Select Class--</option>
												<optgroup   id="sis_classes_filter8">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>Select Class Section</td>
										<td align="left">
											<select name="sis_class_sections" id="sis_class_sections8">
												<option value=''>--Select Section--</option>
												<optgroup   id="sis_class_sections_filter8">
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="button" onclick="loadCompleteSearchViewForClass(),getclasspdf4();" class="btn btn-default" value="Show Attendance" /></td>
									</tr>
									<tr>
										<td colspan="2">
											<div id="student_attendance_filter_8_result">
											</div>
										</td>
									</tr>
								</table>
							</form>
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
        </div>
    
    <%-- <div id="wrapper">
	       <div id="page-wrapper" >
	       <table class="table table-bordered table-hover table-striped" id="dataTable1"  >
            <thead>
                    <tr>
                    <th>Sr No</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>User Name</th>
                    <th>PassWord</th>
                    <th>Email</th>
                    <th>Company</th>
                    </tr>
            </thead>
            <tbody>
          <c:forEach var="userlistobj" items="${userlist}" varStatus="theCount">
	       <tr>
								    	<td><a href="#">${theCount.count }</a></td> 
										<td><a href="#">${userlistobj.firstName}</a></td>
										<td><a href="#" >${userlistobj.lastName}</a></td>
										<td><a href="#" >${userlistobj.userName}</a></td>
										<td><a href="#" >${userlistobj.password}</a></td>
										<td><a href="#" >${userlistobj.email}</a></td>
										<td><a href="#" >${userlistobj.company.companyName}</a></td>
										<td width="70%" onClick="viewMom('${mom.id}')"><a href="#">${mom.keypoints}</a></td>
										
											
								</tr> 
	       
	       </c:forEach>
		   </tbody>
		   </table>
	       </div>
   </div>
         <script type="text/javascript">
				 $('#dataTable1').dataTable({
				
					"sPaginationType" : "full_numbers",
					"sDom" : 'T<"clear">lfrtip<"clear spacer">T'
			
				}); 
				
			/* 	$(document).ready(function() {
				    $('#dataTable1').DataTable();
				} ); */
			</script>      --%>
			
			
			
			
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
	    "bInfo": false,
	    "bAutoWidth": false


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
 
 
<!-- <style>
.ui-icon{background-color: red;}
</style>
 
  -->
 
 
 
<!--  
 <script> 
$(function() {$(function(){
	
		$("#datepicker").datepicker();
		
		
	});
    /* $( "#datepicker" ).datepicker(); */
});
</script> 
 -->


 <!-- <script> 
$(function() {$(function(){
	
		$("#datepicker1").datepicker();
		
	});
   
});
</script> 
  -->
  
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 