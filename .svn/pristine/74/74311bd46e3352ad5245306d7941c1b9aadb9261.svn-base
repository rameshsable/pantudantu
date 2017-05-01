

<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<head>
<title>Home</title>
<jsp:include page="body.jsp"></jsp:include>
<script
	src="${pageContext.request.contextPath}/resources/registration/Registration.js"
	charset='utf-8'></script>
	<script src="${pageContext.request.contextPath}/resources/advanceBooking/Booking.js"charset='utf-8'></script>



<script>
	$(function() {
		$("#datepicker12").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '1990:2050',
			dateFormat: 'dd/mm/yy'  
		}).datepicker("setDate",new Date());
	});
	
	$(function() {
		$("#datepicker13").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '1990:2050',
			dateFormat: 'dd/mm/yy',
			
		}).datepicker("setDate",new Date());
	});
	
	
	$(function() {
		$("#datepicker14").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '1990:2050',
			dateFormat: 'dd/mm/yy',
			
		}).datepicker("setDate",new Date());
	});


</script>
<!--  <script type="text/javascript">
						jQuery(document).ready(function() {
						    jQuery('#datepicker14').datepicker({
						    	
						       
						    });
						});
						</script>  -->

<script>
$(function() {

	$('#postendTime').clockpicker({
	    autoclose: true		
	});
});
</script>
<script>
$(function() {

	$('#poststartTime').clockpicker({
	    autoclose: true		
	});
});
</script>


</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div id="home">
	

			<div>&nbsp;</div>



			<div id="page-wrapper">
			
						<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable" id="dateselect">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Warning: </strong>please Enter Date .
						</div>
						
					
						
			

				<script type="text/javascript">
					$("#cnameselect").hide();
					$("#dateselect").hide();
					 
		              
				</script>












				<div id="container-fluid">
					<div id="row-fluid">
						<!-- <div class="col-sm-5"> -->

						<div class="span2">
						<div class="head">
								<div class=""></div>

								<div class="clear"></div>
							</div>

							<div class="block users ">



								<!-- Tab panes -->
								<div class="tab-content">

									<!-- VIEW STUDENT SPECIFIC ATTENDANCE DETAILS -->
									<div class="tab-pane fade in active"
										id="student_specific_details_tab">
										<div style="padding: 10px;">
											<div>
												<ul class="pagination">
													<li class="active"
														onclick="switchView('student_attendance_filter_1', this);"><a
														href="#">Booking Cancle</a></li>

													<li
														onclick="switchView('student_attendance_filter_3', this);"><a
														href="#">Booking Postpond</a></li>
												</ul>



											</div>

													<div style="width: 100%;">

												<div align="center" id="student_attendance_filter_1" >
													<form action="#" id="canclebooking">
													
													<div class="col-xs-2">
													
													<label>Select Type</label>
													<select name="type" id="type" class="form-control" onchange=" return hideItem();">
														<option  value="date" selected >By Date</option>
														<option value="id">By Id</option>
														
													    </select>
																
																
						 							</div>
						 							
													
														<div class="col-xs-2" id="Date">
																<label>Date</label>
																<input type="text" class="form-control"
									 readonly="readonly" name="datepicker12" id="datepicker12" / >
						 								</div>
						 							
						 							<div class="col-xs-2" id="Id">
																<label>Pass Id</label>
																<input type="text" class="form-control"
																placeholder="0" name="bookid" id="bookid" / >
						 							</div>
						 							
						 								
						 							
													
													<div class="col-xs-2" >
														<label></label>
														<input type="Button" value="submit"
															id="saveandprint" onclick="return cancleBooking();"
															class="btn btn-primary btn-sm  " />

													</div>
													
											

															

													</form>
													<script type="text/javascript">
													$("#Id").hide();
													
													
													</script>
													
													<script>
															function hideItem()
															{
																
																var val=$("#type").val();
																
																if(val=='date')
																	{
																		$("#Id").hide();
																		$("#bookid").val("");
																		$("#Date").show();
																		
																		
																	}
																else if(val=='id')
																	{
																			$("#Date").hide();
																			
																			$("#datepicker12").val("");
																			
																			$("#Id").show();
																	}
																
																else
																	{
																	
																	}
																
																
															}
													
													</script>
											</div>


											
													


													<div align="left" id="student_attendance_filter_3">
														<form action="#" id="bookingpostpond">
															
														<div class="col-xs-2">
													
													<label>Select Type</label>
													<select name="typep" id="typep" class="form-control" onchange=" return hidepostpondItem();">
														<option  value="date" selected >By Date</option>
														<option value="id">By Id</option>
														
														
													    </select>
																
																
						 							</div>
						 							
													
														<div class="col-xs-2" id="Datep">
																<label>Date</label>
																<input type="text" class="form-control"
																readonly="readonly" name="datepicker13" id="datepicker13" >
						 								</div>
						 							
						 							<div class="col-xs-2" id="Idp">
																<label>Pass Id</label>
																<input type="text" class="form-control"
																placeholder="0" name="bookidp" id="bookidp" / >
						 							</div>
						 							
						 							
													
													<div class="col-xs-2" >
														<label></label>
														<input type="Button" value="submit"
															id="show" onclick="return postPondBooking();"
															class="btn btn-primary btn-sm  " />

													</div>
														
														
														
														
														
														

														</form>
														<script type="text/javascript">
													$("#Idp").hide();
													
													</script>
													<script>
															function hidepostpondItem()
															{
																
																var val=$("#typep").val();
													
																
																if(val=='date')
																	{
																		$("#Idp").hide();
																		
																		$("#bookidp").val("");
																		
																		$("#Datep").show();
																		
																		
																	}
																else if(val=='id')
																	{
																			$("#Datep").hide();
																			$("#datepicker13").val("");
																			$("#Idp").show();
																	}
																
																else
																	{
																	
																	}
																
																
															}
													
													</script>
													
												</div>
										</div>



										</div>

									</div>

						
								
									
									


								</div>
							</div>

						</div>

					</div>
				</div>
				<div id="cancleresult"></div>
				<br><br><br><br>
					
				<div id="confirm" style="width: 80%">
				
				
				<div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="postdateselect">
					 <button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Select The Date.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="poststarttimeselect">
					 <button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Select The Start Time.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="postendtimeselect">
					 <button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Select The End Time.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="postfailselect">
					 <button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please check Availability Cant Postpond.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-success alert-dismissable"
					id="postsuccesseselect">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Booking Done Successfully.
				</div>
				<script>
				$("#postdateselect").hide();
	              $("#postendtimeselect").hide();
	              $("#poststarttimeselect").hide();
	              $("#postfailselect").hide();
	              $("#postsuccesseselect").hide();

				
				</script>
				
				</div>
				
				
				<form action="" id="ramesh">
															
															
															<input type="hidden" id="hiddenid">
															
															<table class="table" id=""  class="form-control">
																
																<CAPTION>Please Check availability and confirm</CAPTION>
																<tbody>
																	<tr>
																	
																		<th>Date</th>
																		<th>Start Time</th>
																		<th>End Time</th>
																		<th></th>
																	</tr>
																	<tr>
																		

																	 <td align="center"><input type="text"
																						class="form-control " name="datepicker14"
																			id="datepicker14" readonly="readonly" /> 
																			
																		
																			
																			
																		<td align="center"><input type="text"
																			class="form-control" name="startTime" id="poststartTime"
																			readonly="readonly" /></td>	
																			
																			<td align="center"><input type="text"
																			class="form-control" name="endTime" id="postendTime"
																			readonly="readonly" /></td>
																			
																		<td align="center" >
																		<input type="Button" value="submit"
																			id="saveandprint" onclick=" confirmPostPond();"
																					class="btn btn-primary btn-sm  " />
																		</td>
																			


																																	
																		 	</tr>
																</tbody>


															</table>
															
														

														</form>	
				
				
				<script>
				$("#confirm").hide();
				$("#page-wrappee").show();
				
				
				
				</script>
				
				</div>
			
			</div>
			</div>
			
			
	
	



	
<script>
		
		function cancleBooking() {
			
			var Type = $("#type").val();
		 	var date = $("#datepicker12").val();
		 	var id=$("#bookid").val();
		 	
		 	
		 		

		$.ajax({
			
			
			url :'${pageContext.request.contextPath}/getCancallation',
			type : "GET",
			
			data :"Type="+Type +"&date="+date+"&id="+id,

			
			success : function(data) {
				$("#cancleresult").html(data);
		    	
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("err" + thrownError + xhr.responseText);
			}
		});
						
				
	}
		
		</script>
		<script>
					function postPondBooking()
					{
						
									var Typep = $("#typep").val();
								 	var datep = $("#datepicker13").val();
								 	var idp=$("#bookidp").val();
						
								 	
										
								
								$.ajax({
									url :'${pageContext.request.contextPath}/getBookingPostpond',
									type : "GET",
									
									data :"Typep="+Typep +"&datep="+datep+"&idp="+idp,
								
									
									success : function(data) {
										$("#cancleresult").html(data);
									},
									error : function(xhr, ajaxOptions, thrownError) {
										alert("err" + thrownError + xhr.responseText);
									}
					});
								
					}
						
					
</script>	




	
	

	




	
	<script>
		function switchViewPayments(currentSubTabView, currentLi) {
			hideAllpayments();
			$("#" + currentSubTabView).show();

			$(".pagination li").removeClass("active");

			$(currentLi).addClass("active");

		}
		function switchView(currentSubTabView, currentLi) {
			hideAllViews();
			$("#" + currentSubTabView).show();

			$(".pagination li").removeClass("active");

			$(currentLi).addClass("active");
		}
		function loadClasses(classSelectionBoxId) {
			$("#" + classSelectionBoxId).html("");

		}

		
	</script>
	
	


</body>
 

</html>




<script>





	
	
	function switchView(currentSubTabView, currentLi) {
		hideAllViews();
		$("#" + currentSubTabView).show();

		$(".pagination li").removeClass("active");

		$(currentLi).addClass("active");
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
						$("#sis_students_list_filter" + filterNumber)
								.html(data);

						if (data.length > 0) {
							$("#sis_students_list_filter" + filterNumber)
									.show();
						}
					}
				});
	}

	//LOAD STUDENT SPECIFIC DETAILS

	function hideAllViews() {
		$("#student_attendance_filter_1").hide();

		$("#student_attendance_filter_3").hide();

	}

	function switchView(currentSubTabView, currentLi) {
		hideAllViews();

		$("#" + currentSubTabView).show();

		$(".pagination li").removeClass("active");

		$(currentLi).addClass("active");
	}

	function loadDataAfterLoadingPage() {

		

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
</script>



<script>
	$(function() {
		$('#container1').highcharts({
			chart : {
				type : 'column',
				margin : [ 50, 50, 100, 80 ]
			},
			title : {
				text : 'Analyse Flow'
			},
			xAxis : {
				categories : arrText,
				title : {
					text : 'Client'
				},
				labels : {
					rotation : -45,
					align : 'right',
					style : {
						fontSize : '13px',
						fontFamily : 'Verdana, sans-serif'
					}
				}
			},
			yAxis : {
				min : 0,
				title : {
					text : 'Issues'
				}
			},
			legend : {
				enabled : false
			},
			tooltip : {
				pointFormat : 'Open Issue: <b>{point.y:.1f}</b>',
			},
			series : [ {
				name : 'Issue',
				data : arrValue,
				dataLabels : {
					enabled : true,
					rotation : -90,
					color : '#FFFFFF',
					align : 'right',
					x : 4,
					y : 10,
					style : {
						fontSize : '13px',
						fontFamily : 'Verdana, sans-serif',
						textShadow : '0 0 3px black'
					}
				}
			} ]
		});
	});
</script>

<script type="text/javascript">
	

	$('#dataTable2').dataTable({
		"bJQueryUI" : true,
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'

	});
</script>














































