

<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<title>Home</title>

<jsp:include page="body.jsp"></jsp:include>
<script
	src="${pageContext.request.contextPath}/resources/registration/Registration.js"
	charset='utf-8'></script>
<script
	src="${pageContext.request.contextPath}/resources/registration/userUpdate.js"
	charset='utf-8'></script>

<jsp:include page="body.jsp"></jsp:include>
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js">
	
	
</script>

<script src="${pageContext.request.contextPath}/resources/permission/permission.js"charset='utf-8'></script>   

<script>
	$(function() {
		$(function() {

			$("#datepicker").datepicker();
		});
		/* $( "#datepicker" ).datepicker(); */
	});
</script>

<script>
	var userId = new Array();
	var userName = new Array();
	var password = new Array();
</script>

<c:forEach var="userlist" items="${userList}">
	<script>
		userId.push("${userlist.userId}");
		userName.push("${userlist.userName}");
		password.push("${userlist.password}");
	</script>
</c:forEach>


</head>
<body>


	<script>
		function codeAddress() {
			document.getElementById("cname").value = "";
			document.getElementById("lname").value = "";
			$("#submi").prop('disabled', true);
			/* $("#submit").prop('disabled', false); */
			
		}

		window.onload = codeAddress;
		function register() {
			var ch;
		

			var vr = $("#cname1").val();
			var gr = $("#lname1").val();
			$("#flag").val("tru");
			if (vr == "") {
				$("#usernameselect").slideDown();
				$("#usernameselect").fadeOut(3000);
				return false;

			}
			if (gr == "") {
				$("#passwordselect").slideDown();
				$("#passwordselect").fadeOut(3000);

				return;
			}

			<c:forEach var="list" items="${as}">
			if ('${list.userName}' === vr) {
				$("#passwordselect").slideDown();
				$("#availableselect").fadeOut(3000);
				return false;
			}

			</c:forEach>

			var table = document.getElementById("dataTable2");
			var numRows = table.rows.length;

			for (var i = 1; i < numRows; i++) {

				//var ID = table.rows[i].id;
				var cells = table.rows[i].getElementsByTagName('td');

				if (i == numRows - 1) {
					//cells[ic-3].innerHTML=un;
					var row = table.insertRow(numRows);
					var cell0 = row.insertCell(0);
					var cell1 = row.insertCell(1);
					var cell2 = row.insertCell(2);
					var cell3 = row.insertCell(3);

					cell0.align = "center";
					cell1.align = "center";
					cell2.align = "center";
					cell0.innerHTML = i + 1;
					cell1.innerHTML = vr;
					cell2.innerHTML = gr;
					cell3.align = "center";

					
				}
				

			}
			
			

			$.ajax({

				url : 'saveUserRegistration',
				type : 'POST',
				data : {
					un : vr,
					pw : gr
				},
				
				success : function(data) {
					
					
					
					if(data==0)
						{
							$("#availableselect").slideDown();
							$("#availableselect").fadeOut(3000);
						}
					else{
							$("#successAdd").slideDown();
							$("#successAdd").fadeOut(3000);
							 $("#cname1").val("");
							 $("#lname1").val("");
							
							cell3.innerHTML = "<a href='#' onClick=Select('" + vr
					}			+ "','" + gr + "','" + data + "')>Select</a>";
					location.reload(true);
				
				},
				error : function(errorThrown) {
					alert(errorThrown);
				}

			});

		}

		
		
		
		
	</script>
	
	
	<script>
	
	function updateAdmin()
	{
		
		
		
		var userName=$("#cname").val();
		var password=$("#lname").val();
		var id=	$("#userId").val();
		var type=$("#userType").val();
		
	
		
		 $.ajax({
			url : "updateuser",
			type : "POST",
			
			data :"id="+id +"&userName="+userName+"&password="+password,
			success : function(data) {
		    	           							
				
				$("#cname").val("");
				$("#lname").val("");
				$("#successForm").slideDown();
				$("#successForm").fadeOut(3000);
			 location.reload(true);	
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		}); 
	}

	
	</script>
	<jsp:include page="menu.jsp"></jsp:include>
	<div id="home">
		<div id="wrapper">
			<div>&nbsp;</div>
			<div id="result">
				<div id="page-wrapper">

					<div style="margin-top: 20px;"
						class="alert alert-success alert-dismissable" id="successForm">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Success: </strong>User Updated Successfully.
					</div>
					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="usernameselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>please Enter User Name.
					</div>
					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="passwordselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Success: </strong>please Enter Password.
					</div>

					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="availableselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>please Enter Another User Name.
					</div>
					
					
					
					<div style="margin-top: 20px;"
						class="alert alert-success alert-dismissable" id="successAdd">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Success: </strong>User Added SuccessFully.
					</div>
					
					
					<script type="text/javascript">
						$("#successForm").hide();
						$("#successAdd").hide();
						$("#usernameselect").hide();
						$("#passwordselect").hide();
						$("#availableselect").hide();
					
						
					</script>
					
	
					<div class="tab-content">

						<!-- VIEW STUDENT SPECIFIC ATTENDANCE DETAILS -->
						<div class="tab-pane fade in active"
							id="student_specific_details_tab">
							<div style="padding: 20px;">
								<div>
									<ul class="pagination">
										<li class="active" onclick="switchView('level_1', this);"><a
											href="#">Level 1</a></li>

										<li onclick="switchView('level_2', this);"><a href="#">Level
												2</a></li>

									</ul>
								</div>
							</div>
							<div style="width: 90%;">
								<div align="center" id="level_1">

									<form action="" id="level1">
										<div class="row">
											<div class="col-xs-3">
												<label>UserName</label> <input type="text"
													class="form-control" placeholder="Username" name="un"
													id="cname" value="">
											</div>
											<div class="col-xs-3">
												<label>Password</label> <input type="password"
													class="form-control" placeholder="Password" name="pw"
													id="lname">
											</div>

											<div class="col-xs-3">
												<br> <!-- <input type="Button" value="Submit" id="submit"
													onclick="register()" class="btn btn-primary btn-sm " /> -->
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
													type="Button" value="Update" id="submi"
													onclick="updateAdmin()" class="btn btn-primary btn-sm " />

											</div>
										</div>
										<br>
										<br>
										<div class="col-xs-4"></div>
									</form>

									<table class="table table-bordered table-hover table-striped"
										id="dataTable2">
										<thead>
											<tr>
												<th>Sr No</th>
												<th>UserName</th>
												<th>Password</th>
												<th>Select To Update</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach var="list" items="${as}" varStatus="theCount">
												<tr>
													<td id="ta" align="center" width="10%">${theCount.count }</td>
													<td id="Name" align="center" width="10%">${list.userName}</a></td>
													<td width="10%" id="dat" align="center">${list.password}</td>
													<td id="Select" width="10%" align="center"><a href="#"
														onClick="edit('${list.userName}','${list.password}','${list.userId}')">Select</a></td>
													<td style="display: none;">
													
													<input type="hidden" id="userId" value="${list.userId}"> 
													<input type="hidden" id="userType" value="${list.userPermissionType.id}"> 
													
													</td>
												</tr>

											</c:forEach>
										</tbody>
									</table>





								</div>






								<div align="center" id="level_2">
									<form action="" id="formlevel2">
										<div class="row">
											<div class="col-xs-3">
												<label>UserName</label> <input type="text"
													class="form-control" placeholder="Username" name="un"
													id="cname1" value=""> <br>
											</div>
											<div class="col-xs-3">
												<label>Password</label> <input type="password"
													class="form-control" placeholder="Password" name="pw"
													id="lname1"> <br>
											</div>

											<div class="col-xs-3">
												<br> <input type="Button" value="Submit" id="submit1"
													onclick="register()" class="btn btn-primary btn-sm " />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
													type="Button" value="Update" id="update"
													onclick="val=updateUser()" class="btn btn-primary btn-sm " />

											</div>
											<div class="col-xs-3"></div>
											<br>
											<br>

											<div class="col-xs-3">
												<label>User </label> <select name="user" id="user"
													class="form-control" onchange="">
													<c:forEach var="loc" items="${userList}"
														varStatus="theCount">
														<option value="${loc.userId}" selected>${loc.userName}</option>

													</c:forEach>
												</select>
											</div>
											<div class="col-xs-3">
												<br> <input type="Button" value="Update" id="update1"
													class="btn btn-primary btn-sm " onclick="editUser();" /><br>
												<br> <input type="Button" value="Permission" id="view"
													onClick="viewPemission();" class="btn btn-primary btn-sm " />

											</div>
									</form>

									<script>
										$("#update").prop('disabled', true);

										$("#submit1").prop('disabled', false);
									</script>

									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
	<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="loadPerm">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>please Wait Permission is loading.
					</div>
					
					<script>
					$("#loadPerm").hide();
					</script>
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									<div id="light" style="width: 80%">
	
	<div style="margin-top: 20px;"
						class="alert alert-success alert-dismissable"
					    id="successForm1">
						<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
					<strong>Success: </strong>Permission Assigned Successfully.
					</div>
					
					<script type="text/javascript">
					 $("#successForm1").hide();
					
					</script>
		<form id="level2" name="level2">

             				<div class="row">
					<div class="col-xs-3"></div>	
					<div class="col-xs-3"></div>
					<div class="col-xs-3"></div>
			
				<table class="table table-hover table-bordered">
			<caption class="pull-right">Menu</caption>
				<tr>
					<td><input class="checkbox" type="checkbox" name="1" id="1" value="1">User Registration</td>
					<td><input class="checkbox" type="checkbox" name="2" id="2" value="2">User Login</td>
					<td><input class="checkbox" type="checkbox" name="3" id="3" value="3">Assing Pass</td>
					<td><input class="checkbox" type="checkbox" name="4" id="4" value="4">Assing Price</td>
					</tr>
					<tr>
					
					<td><input class="checkbox" type="checkbox" name="5" id="5" value="5">FeedBack </td>
					<!-- <td><input class="checkbox" type="checkbox" name="6" id="6" value="6">&nbsp;Assing Service Tax</td> -->
					<td><input class="checkbox" type="checkbox" name="11" id="11" value="11">Advance Birhtday Booking </td>
					<td><input class="checkbox" type="checkbox" name="12" id="12" value="12">&nbsp;cancle Booking</td>
					<!-- <td><input class="checkbox" type="checkbox" name="14" id="14" value="14">&nbsp;View Feedback</td> -->
					</tr>
			</table>
			
			<div>
			<br>
			
		<table class="table table-hover table-bordered">
			<caption class="pull-right">Module</caption>
				<tr>
					<td><input type="checkbox" class="checkbox" name="7" id="7" value="7">Billing</td>
					<td><input type="checkbox" class="checkbox" name="8" id="8" value="8">Marketing</td>
					<td><input type="checkbox" class="checkbox" name="9" id="9" value="9" >Accounts</td>
					</tr>
					<tr>
					<td><input type="checkbox" class="checkbox" name="14" id="14" value="14" >View Expense and Revenue</td>
					<td><input type="checkbox" class="checkbox" name="13" id="13" value="13">View Booking</td>
					
					</tr>
					
			</table>
				
			</div>
			<br>
			 <input type="Button" value="Submit" id="save" onclick="savePermission();" class="btn btn-primary btn-sm "/>	
					
					<input type="hidden" value="${id}" id="hidden" name="hidden"/>
				</form>
				</div> 
				
				
				
				
				
				
				<script>
					$("#light").hide();
					</script>
				
				
				
				
				
								</div>

							</div>

						</div>










					</div>


				</div>

			</div>
		</div>
	</div>
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
			$("#" + currentSubTabView).show();

			$(".pagination li").removeClass("active");

			$(currentLi).addClass("active");
		}
		function loadClasses(classSelectionBoxId) {
			$("#" + classSelectionBoxId).html("");

			$.ajax({
				url : "/attendance/ajax/GetClassesList",
				type : "GET",
				data : "",
				success : function(data) {
					$("#" + classSelectionBoxId).html(data);
				}
			});
		}

		function loadClassSections(filterNumber) {
			var classId = $("#sis_classes_filter" + filterNumber + " :selected")
					.val();

			$("#sis_students_list_filter" + filterNumber).html("");
			$("#sis_class_sections_filter" + filterNumber).html("");

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
					$("#sis_class_sections_filter" + filterNumber).html(data);
				}
			});
		}

		function loadStudentsList(filterNumber) {
			var classId = $("#sis_classes_filter" + filterNumber + " :selected")
					.val();
			var sectionName = $(
					"#sis_class_sections_filter" + filterNumber
							+ " option:selected").text();

			$("#sis_students_list_filter" + filterNumber).html("");

			if (classId == undefined || classId == null || classId == "") {
				$("#classNotSelectedAlert").slideDown();
				setTimeout(function() {
					$("#classNotSelectedAlert").slideUp();
				}, 3000);
				return;
			}

			currentClassId = classId;
			currentSectionName = sectionName;

			$
					.ajax({
						url : "/attendance/ajax/GetClassAndSectionSpecificStudentsListOptions",
						type : "POST",
						data : {
							classId : "" + classId,
							sectionName : "" + sectionName
						},
						success : function(data) {
							$("#sis_students_list_filter" + filterNumber).html(
									data);

							if (data.length > 0) {
								$("#sis_students_list_filter" + filterNumber)
										.show();
							}
						}
					});
		}

		//LOAD STUDENT SPECIFIC DETAILS

		function hideAllViews() {
			$("#level_1").hide();

			$("#level_2").hide();

		}

		function switchView(currentSubTabView, currentLi) {
			hideAllViews();

			$("#" + currentSubTabView).show();

			$(".pagination li").removeClass("active");

			$(currentLi).addClass("active");
		}

		function loadDataAfterLoadingPage() {

			switchView('level_1');

			$(".pagination li:first-child").addClass("active");

		}

		loadDataAfterLoadingPage();
	</script>

	<script>
		function viewPemission() {

			var userid = $("#user").val();

			$("#loadPerm").slideDown();

			$.ajax({
				url : '${pageContext.request.contextPath}/getPermissionById',
				type : "POST",
				
				data : {userid : "" + userid},
				cache: false,
		        dataType: "json",
				success : function(data) {

					for (i=0; i < 14; i++) 
		      		 {
						$('#'+i).prop('checked', false);
						
		      		 }
					//$("#light").html(data);
					$("#light").show();
					
					for (i=0; i < data.length; i++) 
		      		 {
						$('#'+data[i].type).prop('checked', true);
						
		      		 }
					$("#loadPerm").fadeOut(3000);
					
					$("#hidden").val(userid);
					
					 $("#successselect").slideDown();
					$("#successselect").fadeOut(3000); 

				},
				error : function(errorThrown) {
					alert("Error: " + errorThrown);
				}
			});
		}
	</script>





</body>

</html>














































































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
			</script>

</body>

</html>

      --%>








































































