<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- add link in controller -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- add link in controller -->
<spring:url value="/home" var="homeurl" />

<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 10">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<!-- <a class="navbar-brand" href="/home">ANCHOR OFFSHORE SERVICE LTD</a> -->
		<a class="navbar-brand" href="/home"></a> <img
			src="${pageContext.request.contextPath}/resources/images/logo.png" height="15%" width="60%" >
		</div>
	
	
	<!-- /.navbar-header -->
	
	<style>
	.box{
	background-color: #f8f8f8;
	 border-radius: 25px;
	 border-style: solid;
	 border-color: black;
	}
	
	</style>

	<ul class="nav navbar-top-links navbar-right">

	
		<!-- /.dropdown -->
		<%-- <li class="dropdown"><a class="dropdown-toggle box"
			data-toggle="dropdown" href="#" title="M O M"> <img src="${pageContext.request.contextPath}/resources/images/mom.png" /> <i class="fa ">
			 </i>
			
				<i class="fa fa-caret-down"></i>
				
		</a> --%>
			<%-- <ul class="dropdown-menu dropdown-user">
				<li><a href="${pageContext.request.contextPath}/momController"><img src="${pageContext.request.contextPath}/resources/images/mom1.png" /> Generate MOM</a></li>
				<li><a href="${pageContext.request.contextPath}/momController/view"><img src="${pageContext.request.contextPath}/resources/images/mom1.png" /> view MOM</a></li>
				
			</ul> <!-- /.dropdown-Mom --></li>	 --%>
		<!-- /.dropdown -->
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i> User
						Profile</a></li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
				<li class="divider"></li>
				<li><a href="<c:url value='j_spring_security_logout'/>"><i
						class="fa fa-sign-out fa-fw"></i> Logout</a></li>
			</ul> <!-- /.dropdown-user --></li>
		<!-- /.dropdown -->
	</ul>
	
<Center style="font-size: 25; margin-top:30px;">   </Center>
	<p align="right" style="  color:#088baa; margin-top:-1px;">	Welcome: <c:out value="${CurrentUserName}"></c:out>&nbsp;&nbsp;&nbsp;</p>
	
	<%-- <p align="right" style="  color:#088baa; margin-top:-30px;">	Welcome: <c:out value="${CurrentUserName}"></c:out>&nbsp;&nbsp;&nbsp;</p> --%>
	<!-- /.navbar-top-links -->

	<div class="navbar-default sidebar" role="navigation" style=" top:100px; " >
		<div class="sidebar-nav "style=" position: relative;   " >
			<ul class="nav" id="side-menu">
				
				
			<li><a href="${homeurl}"><i class="fa fa-dashboard fa-fw"></i>
						Home</a></li>

				<!-- Inventory Menu -->
			 <c:set var="showMenu" value="false" /> 
				<li id="inventory"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i>Menu<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
					
					
					<c:forEach  var="permlist" items="${permissionList}">
									
						<c:if test="${permlist.type == 1}">
	               		<li><a href=${pageContext.request.contextPath}/registration>Customer Registration</a></li>
	              		</c:if> 
	               	 
	               	 <c:if test="${permlist.type == 2}">
	              		<li><a href=${pageContext.request.contextPath}/forlogin>User Login</a></li>
	               	 </c:if>
	               	 
	               	 <c:if test="${permlist.type == 5}">
				       <li><a href=${pageContext.request.contextPath}/feedback>Feedback</a></li>
	               	 
	               	 </c:if> 
	               	 
	               	  <c:if test="${permlist.type == 15}">
  						<li><a href=${pageContext.request.contextPath}/viewfeed>View Feedback</a></li>	               	 
	               	 </c:if>
	               	 
	               	 
	               	 <c:if test="${permlist.type == 3}">
			       <li><a href=${pageContext.request.contextPath}/bill>Asign Price</a></li>
	               	 
	               	 </c:if>
	               	 
	               	 	 <c:if test="${permlist.type == 4}">
						       <li><a href=${pageContext.request.contextPath}/assign>Assign Pass</a></li>
	               	 
	               	 </c:if>
	               	 
	               	 <%--  <c:if test="${permlist.type == 6}">
  						<li><a href=${pageContext.request.contextPath}/serviceTax>Service Tax</a></li>	               	 
	               	 </c:if> --%>
	               	 
	               	  <c:if test="${permlist.type == 11}">
  						<li><a href=${pageContext.request.contextPath}/advanceBooling>Advance Birthday Booking</a></li>	               	 
	               	 </c:if>
	               	 
	               	   <c:if test="${permlist.type == 12}">
  						<li><a href=${pageContext.request.contextPath}/bookingcancle>Cancle/ PostPond Booking</a></li>	               	 
	               	 </c:if>
	               	 
	               	    	   <c:if test="${permlist.type == 13}">
  								<li><a href=${pageContext.request.contextPath}/viewbooking>View Advance Booking</a></li>	  	 
	               	 </c:if>
	               	
	               	 </c:forEach>
	               	 
	               	 
	               <!-- 	 <li><a href=${pageContext.request.contextPath}/accounts>accounts</a></li> -->
				<!-- 	<li><a href=${pageContext.request.contextPath}/Marketing>Marketing</a></li> -->
				
							
					</ul>
					
					
					
					
					
					
							<!-- <li><a href=${pageContext.request.contextPath}/registration>User Registration</a></li> -->
						
						   	  <!-- <li><a href=${pageContext.request.contextPath}/forlogin>User Login</a></li>
						      <li><a href=${pageContext.request.contextPath}/feedback>Feedback</a></li>
						      <li><a href=${pageContext.request.contextPath}/viewfeed>View Feedback</a></li>
						      <li><a href=${pageContext.request.contextPath}/bill>Asign Price</a></li>
						       <li><a href=${pageContext.request.contextPath}/assign>Assign Pass</a></li>
						          <li><a href=${pageContext.request.contextPath}/serviceTax>Service Tax</a></li>
						        -->
					
						 
						
					 <%-- <c:if test="${fn:contains(permissionList, 'Add Product' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							
						</c:if> --%>

						<%-- <c:if test="${fn:contains(permissionList, 'Add Vendor' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addvendorUrl}">Vendor</a></li>
						</c:if> --%>
						
						
						
					 <!-- /.nav-second-level --></li>
			 		
	
				<%--	<c:if test="${not showMenu}">
					<script>
						$("#inventory").addClass("hide");
					</script>
				</c:if>

				<!-- Tax Menu -->
				<c:set var="showMenu" value="false" />
				<li id="tax"><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
						Tax<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
					      <c:if test="${fn:contains(permissionList, 'Add Vat' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addvatUrl}">Add Vat</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Add Service Tax' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addServicetaxUrl}">Add Service Tax</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Add Excise Duty' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addexciseUrl}">Add Excise Duty</a></li>
						</c:if>
						<c:if
							test="${fn:contains(permissionList, 'Add Import/Export Duty' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addImportexportUrl}">Add Import/Export Duty</a></li>
						</c:if>
					</ul> <!-- /.nav-second-level --></li>

				<c:if test="${not showMenu}">
					<script>
						$("#tax").addClass("hide");
					</script>
				</c:if>

			<!-- Purchase Menu -->
				<c:set var="showMenu" value="false" />
				<li id="purchase"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Purchase<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
				  
						<c:if test="${fn:contains(permissionList, 'Add SRN' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addSRNUrl}">SRN</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'View SRN' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewSRNUrl}">View SRN</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Add PRN' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addPRNUrl}">PRN</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'View PRN' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewaddPRNUrl}"> View PRN</a></li>
						</c:if>
				
						<c:if test="${fn:contains(permissionList, 'Add Purchase Order' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addPurchaseOrderUrl }">Purchase Order</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'View Purchase Order' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewPirchaseOrderUrl }">view Purchase Order
									</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Add Purchase Bill' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addPurchaseBillUrl }">Purchase Bill</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'View Purchase Bill' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewPirchaseBillUrl }">view Purchase Bill
									</a></li>
						</c:if>

						<c:if
							test="${fn:contains(permissionList, 'Add Delivery Challan' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${deliveryChallanUrl}">Delivery Challan</a></li>
						</c:if> 
						
						<c:if
							test="${fn:contains(permissionList, 'View Delivery Challan' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewdeliveryChallanUrl}"> View Delivery Challan</a></li>
						</c:if> 
					</ul> <!-- /.nav-second-level --></li>

				<c:if test="${not showMenu}">
					<script>
						$("#purchase").addClass("hide");
					</script>
				</c:if>
				
					<!-- Project Menu -->
				<c:set var="showMenu" value="false" />
				<li id="project"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Project<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:if test="${fn:contains(permissionList, 'Add Project' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addprojectUrl}">Add Project</a></li>
                         </c:if>
                         <c:if test="${fn:contains(permissionList, 'Project Amount' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addprojectamountUrl}">Project Receiving Amount</a></li>
						</c:if>
					</ul> <!-- /.nav-second-level --></li>
				<c:if test="${not showMenu}">
					<script>
						$("#project").addClass("hide");
					</script>
				</c:if>

					<!-- Expenses Menu -->
				<c:set var="showMenu" value="false" />
				<li id="expenses"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Expenses<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:if test="${fn:contains(permissionList, 'Add Expenses' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addExpensesUrl}"> Add Expenses</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Import Expenses' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${importExpensesUrl}"> Import Expenses</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Add Project' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addWorkUrl}">Add Work Order</a></li>
						</c:if>
						
						<c:if test="${fn:contains(permissionList, 'View Expenses' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewExpensesUrl}">View Expenses</a></li>
						</c:if>
							<c:if test="${fn:contains(permissionList, 'View Work Order' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewworkorderUrl}">View Work Order</a></li>
						</c:if>
						
						

					</ul> <!-- /.nav-second-level --></li>
				<c:if test="${not showMenu}">
					<script>
						$("#expenses").addClass("hide");
					</script>
				</c:if>
				
			<!-- Manufacturing Menu -->
		 <c:set var="showMenu" value="false" />
				<li id="manufacturing"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Manufacturing<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:if test="${fn:contains(permissionList, 'Add Manufacturing' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addManufacturingUrl}">Add Manufacturing</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Manufacturing In' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addMuInUrl}">Manufacturing In</a></li>
						</c:if>
						<c:if
							test="${fn:contains(permissionList, 'View Manufacturing In' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewaddMuInUrl}"> View Manufacturing In</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Manufacturing Out' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addMuOutUrl}">Manufacturing Out</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Manufacturing Out' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewaddMuOutUrl}">View Manufacturing Out</a></li>
						</c:if>

					</ul> <!-- /.nav-second-level --></li>
				<c:if test="${not showMenu}">
					<script>
						$("#manufacturing").addClass("hide");
					</script>
				</c:if>
						<!-- Sale Menu -->
				<c:set var="showMenu" value="false" />
				<li id="sale"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Sale<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:if test="${fn:contains(permissionList, 'Add Client/Customer' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addClientUrl}">Customer Registration</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Add Sale Bill' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${addSaleBillUrl}">Sale Bill</a></li>
						</c:if>
						
						<c:if test="${fn:contains(permissionList, 'Add Sale Bill' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewSaleBillUrl}"> View Sale Bill</a></li>
						</c:if>
							<c:if test="${fn:contains(permissionList, 'Add Sale Bill' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${creditDebitBookUrl}"> Credit / Debit Book</a></li>
						</c:if>
					</ul> <!-- /.nav-second-level --></li>
				<c:if test="${not showMenu}">
					<script>
						$("#sale").addClass("hide");
					</script>
				</c:if> 
			
					<!-- Setting Menu -->
				<c:set var="showMenu" value="false" />
				<li id="setting"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Setting<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
				<c:if test="${fn:contains(permissionList, 'Create Department' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${departmentUrl}">Create Department</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Department Permission' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${departmentPermissionUrl}">Department
									Permission</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Create User' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${userUrl}">Create User</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'Assign Permission to user' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${userPermission}">Assign Permission to
									user</a></li>
						</c:if>
					
						<c:if test="${fn:contains(permissionList, 'Company Profile' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${companyUrl}">Company Profile</a></li>
						</c:if>
					
					</ul> <!-- /.nav-second-level --></li>
				<c:if test="${not showMenu}">
					<script>
						$("#setting").addClass("hide");
					</script>
				</c:if>
				
				<!-- Report Menu -->
				<c:set var="showMenu" value="false" />
				<li id="Report"><a href="#"><i
						class="fa fa-bar-chart-o fa-fw"></i> Report<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
					       <c:if test="${fn:contains(permissionList, 'Inventory Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${inventoryReportUrl}"> Inventory Report</a></li>
						</c:if>
					     <c:if test="${fn:contains(permissionList, 'View Expenses Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${expenestypeReportUrl}">  Expenses Head Report</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'All Expenses Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${expenesReportUrl}"> Profit/Loss Report</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'All Expenses Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${ProfitLossProjectReportUrl}"> Profit/Loss Project wise Report</a></li>
						</c:if>
						
						<c:if test="${fn:contains(permissionList, 'Purchase Bill Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${purchaseReportUrl}">Purchase Bill Report</a></li>
						</c:if>
						
						<c:if test="${fn:contains(permissionList, 'Purchase Order Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${purchaseorderReportUrl}">Purchase Order Report</a></li>
						</c:if>
						<c:if test="${fn:contains(permissionList, 'PRN Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${productwiseReportUrl}">Product Wise Purchase Rate </a></li>
						</c:if>
						
						<c:if test="${fn:contains(permissionList, 'SRN Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewSRNReportUrl}">SRN Report</a></li>
						</c:if>
						
						<c:if test="${fn:contains(permissionList, 'PRN Report' ) || sessionScope.userName=='admin'}">
							<c:set var="showMenu" value="true" />
							<li><a href="${viewaddPRNReportUrl}">PRN Report</a></li>
						</c:if>
					</ul> <!-- /.nav-second-level --></li>	
					<c:if test="${not showMenu}">
					   <script>
						    $("#Report").addClass("hide");
					  </script>
				</c:if> --%>
				
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>
