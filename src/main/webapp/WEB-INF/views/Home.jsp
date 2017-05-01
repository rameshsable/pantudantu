

<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
    <title>Home</title>
<jsp:include page="body.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/registration/Registration.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/navigation/navigationfetchdata.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/navigation/tablecreate.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/Bill/billing.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/Bill/jquery.dataTables.min.js"charset='utf-8'></script>
<script src="${pageContext.request.contextPath}/resources/marketing/marketing.js"charset='utf-8'></script>



<%-- <script src="${pageContext.request.contextPath}/resources/Bill/jquery-1.11.3.min.js"charset='utf-8'></script> --%>

 
 
<!-- Billing section --> 
 <script >
 						
 var totalamountwithservicetax=0;
 
 /*fUNCTIONS Related with playzone  */
 var playzoneId=new Array();
 var playzoneTime=new Array();
 var playzonePrice=new Array();
 
 var rclimbingId=new Array();
 var rclimbingTime=new Array();
 var rclimbingPrice=new Array();
 
 var visitpassId=new Array();
 var visitType=new Array();
 var visitPrice=new Array();
 
  
 var monthlypassId=new Array();
 var monthlyType=new Array();
 var monthlyPrice=new Array();
 
 var birthId=new Array();
 var birthType=new Array();
 var birthPrice=new Array();
 
 
 var processingAdvanceBirthdayBookingId =new Array();
 var processingAdvanceBirthdayBookingAdult =new Array();
 var processingAdvanceBirthdayBookingChild =new Array();
 var processingAdvanceBirthdayBookingDate =new Array();
 var processingAdvanceBirthdayBookingStartTime =new Array();
 var processingAdvanceBirthdayBookingEndTime =new Array();
 var processingAdvanceBirthdayBookingPaidAmount =new Array();
 var processingAdvanceBirthdayBookingTotal =new Array();
 var processingAdvanceBirthdayBookingPackage =new Array();
 var processingAdvanceBirthdayBookingCustomer =new Array();
 
 
 var rockId=new Array();
 var attempts=new Array();
 var rockPrice=new Array();
 
 var billtime=new Array();
 var billnoOfChild =new Array();
 var billnoOfAdult =new Array(); 
 var billnoOfAttempt=new Array();
 var billtype =new Array();
 var billPassType=new Array();
 var billamount=new Array();
 var passNumber =new Array();
 
 var visitPassAssiId =new Array();
 var visitPassAssiStart =new Array();
 var visitPassAssiEnd =new Array();
 var visitPassAssiEndcust =new Array();

 
 var monthlyPassAssiId=new  Array();
 var monthlyPassAssiStart=new  Array();
 var monthlyPassAssiEnd=new  Array();
 var monthlyPassAssiEndcust=new  Array();
</script>
 
 
    
 <c:forEach  var="advanceBookingsobj" items="${advanceBookings}">
 <script>
 processingAdvanceBirthdayBookingId.push("${advanceBookingsobj.bookingId}");
 processingAdvanceBirthdayBookingAdult.push("${advanceBookingsobj.adult}");
 processingAdvanceBirthdayBookingChild.push("${advanceBookingsobj.child}");
 processingAdvanceBirthdayBookingDate.push("${advanceBookingsobj.date}");
 processingAdvanceBirthdayBookingStartTime.push("${advanceBookingsobj.startTime}");
 processingAdvanceBirthdayBookingEndTime.push("${advanceBookingsobj.endTime}");
 processingAdvanceBirthdayBookingPaidAmount.push("${advanceBookingsobj.paidAmount}");
 processingAdvanceBirthdayBookingTotal.push("${advanceBookingsobj.total}");
 processingAdvanceBirthdayBookingPackage.push("${advanceBookingsobj.birthdayPackage.birthdayId}");
 processingAdvanceBirthdayBookingCustomer.push("${advanceBookingsobj.customer.cid}");

 </script>
 </c:forEach>
 

 <c:forEach  var="visitPassAs" items="${visitPassList}">
<script>
visitpassId.push("${visitPassAs.visitpassId}");
visitType.push("${visitPassAs.passTypa}");
visitPrice.push("${visitPassAs.price}");
</script>
</c:forEach>

<c:forEach  var="monthlyPassAs" items="${monthlypasslist}">
<script>
monthlypassId.push("${monthlyPassAs.mpnthlyPassId}");
monthlyType.push("${monthlyPassAs.monpasstype}");
monthlyPrice.push("${monthlyPassAs.price}");
</script>
</c:forEach>

<c:forEach  var="playzoneList1" items="${playzoneList}">
<script>
playzoneId.push("${playzoneList1.playzoneId}");
playzoneTime.push("${playzoneList1.time}");
playzonePrice.push("${playzoneList1.price}");
</script>
</c:forEach>
<c:forEach  var="rclimbingList1" items="${rclimbingList}">
<script>
rclimbingId.push("${rclimbingList1.rclimbingId}");
rclimbingTime.push("${rclimbingList1.time}");
rclimbingPrice.push("${rclimbingList1.price}");
</script>
</c:forEach>
<c:forEach  var="visitPassList1" items="${visitPassAssignments}">
<script>
visitPassAssiId.push("${visitPassList1.vid}");
visitPassAssiStart.push("${visitPassList1.startDate}");
visitPassAssiEnd.push("${visitPassList1.endDate}");
visitPassAssiEndcust.push("${visitPassList1.cust.cid}");
</script>
</c:forEach>


<c:forEach  var="monthlypasslist1" items="${monthlyPassAssignments}">
<script>
monthlyPassAssiId.push("${monthlypasslist1.id}");
monthlyPassAssiStart.push("${monthlypasslist1.startDate}");
monthlyPassAssiEnd.push("${monthlypasslist1.endDate}");
monthlyPassAssiEndcust.push("${monthlypasslist1.cust.cid}");


</script>
</c:forEach>

<c:forEach  var="birthdaylist1" items="${birthdaylist}">
<script>
birthId.push("${birthdaylist1.birthdayId}");
birthType.push("${birthdaylist1.packagetype}");
birthPrice.push("${birthdaylist1.price}");

</script>
</c:forEach>

<c:forEach  var="rocklist1" items="${rocklist}">
<script>
rockId.push("${rocklist1.attempId}");
attempts.push("${rocklist1.attempts}");
rockPrice.push("${rocklist1.price}");
</script>
</c:forEach>


<!-- Billing section -->

<script>
var customer=new Array();
var customerId=new Array();

var custMobCountry1 = new Array();
var custMobCountry2 = new Array();

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

custMobCountry1.push("${customer1.countryCodeMobile1}");
custMobCountry2.push("${customer1.countryCodeMobile2}");

customer.push("${customer1.childname}");// it enters child name into array named customer
 mob1.push("${customer1.mob1}");
 mob2.push("${customer1.mob2}");
 lastName.push("${customer1.lastName}");
 fatherName.push("${customer1.fatherName}");
 motherName.push("${customer1.motherName}");
 email.push("${customer1.email}");
 dob.push("${customer1.dob}");
 address.push("${customer1.address}");
 locality.push("${customer1.locality.id}");

</script>
</c:forEach>
<script>
mob=mob1.concat(mob2);

</script>




	<script type="text/javascript">
	
	function showexp()
	{
		   
		
		var date2=$( "#datepickerRev1" ).datepicker({ dateFormat: 'dd-mm-yy' }).val();
		var date1=$( "#datepickerRev" ).datepicker({ dateFormat: 'dd-mm-yy' }).val();
		
		$.ajax({
			url : 'showExp',
			type : 'POST',
			data :{date1:date1,date2:date2},
			success:function(data) {
				
			
				
				$("#lightbill1").html(data);
			
				

			},
			error : function(xhr, ajaxOptions, thrownError) {
			//	alert("err" + thrownError + xhr.responseText);
				console.log("Error In saveChatForfeedbackcom" + thrownError + xhr.responseText);
			}
		});
		
	
	}
	</script>
<script type="text/javascript">
function addthisRowexpRev() {
	
		var table = document.getElementById("expenseType");
		var rowCount = table.rows.length;
		var row1 = rowCount;
		
		var row = table.insertRow(rowCount);
		var lastid = document.getElementById("lastid").value;
		document.getElementById("lastid").value = eval(lastid) + 1;
		rowCount = eval(eval(lastid) + 1);
		//code for Yarn Composition cell in fabric compostion table
		var cell1 = row.insertCell(0);
		var srno = "<td align=left>" +
		"<select  id= time  class='form-control'>" +
		"<option value='Staff salary'>Staff salary</option>"+
		"<option value='Staff welfare'>Staff welfare</option>"+
		"<option value='Rent'>Rent</option>"+
		"<option value='Electricity'>Electricity</option>"+
	    "<option value='Food charges'>Food charges</option>"+
	    "<option value='Material'>Material</option>"+
	    "<option value='Maintenance'>Maintenance</option>"+
	    "<option value='miscellaneous'>Miscellaneous</option>"+
	    "<option value='conveyance'>Conveyance</option>"+
	    "<option value='Office Expense'>Office Expense</option>"+
	    "<option value='Labour Charges'>Labour Charges</option>"+
	    "<option value='Stationery'>Stationery</option>"+
	    "<option value='Business Promotion Expenses'>Business Promotion Expenses</option>"+
	    "<option value='Entertainment Expenses'>Entertainment Expenses</option>"+
	    "<option value='Other'>Other</option>"+
		
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell1.innerHTML = srno;

		var cell8 = row.insertCell(1);
var p1="<td align=center>"+"<input type='number' class='form-control'   value='0' min='0' placeholder='0'></text>"+"</td>";
cell8.align = "center";	
		var productName1 = "<td align=left>" +
		"<select  class='form-control'   id=adults>" +
		"<text value=''>0</text>" +
		
		"<optgroup   id=sis_class_sections_filter1></optgroup>" +
		"										</select>" +
		"</td>";
		cell8.innerHTML = p1;

		
		var cell9 = row.insertCell(2);
		var p2="<td align=center>"+"<input type='text'  class='form-control'></text>"+"</td>";
		cell9.align = "center";	
				var productName1 = "<td align=left>" +
				"<select  class='form-control'   id=adults>" +
				"<text value=''>0</text>" +
				
				"<optgroup   id=sis_class_sections_filter1></optgroup>" +
				"										</select>" +
				"</td>";
				cell9.innerHTML = p2;

		
		
		

		var cell3 = row.insertCell(3);
	
		cell3.innerHTML = "<td align><button class='btn btn-xs btn-danger' onclick='removeRowExpense(this);'>&times;</button></td>";

		var availableTags = productCode;
		var availableTag = productName;

		$("#table tr").each(function() {
			$(this).find("td:first").next().find("input").autocomplete({
				source : availableTags
			});
			$(this).find("td:first").next().next().find("input").autocomplete({
				source : availableTag
			});

		});

	}

</script>

<!-- expense revenue  -->
<script>


function visitPass(num){
	/* alert(num); */
	var j=-1;
	for(var iii=0;iii<visitPassAssiId.length;iii++){
		if(visitPassAssiId[iii]==num)
		{
			j=iii;	
			
			
			fetchDataByCustomerId(visitPassAssiEndcust[j]);
			
			  var date= visitPassAssiStart[j];
			 var date1= visitPassAssiEnd[j];
			 
			
			 var currdate=	new Date();
			var curdate= currdate.getDate();
			var curfullyear = currdate.getFullYear();
			var curmonth = currdate.getMonth();
			
			/* alert(curdate+"  curdate  "+curfullyear+"  curfullyear  "+curmonth+"   curmonth"); */
					var mySplitResultvis = date.split("-");
					
			    	var dateOne = new Date(curfullyear,curmonth,curdate); //Year, Month, Date
			    	var datestart = new Date(mySplitResultvis[0], parseInt(mySplitResultvis[1])-1, mySplitResultvis[2]); //Year, Month, Date
			    	if (dateOne < datestart) {
			    		 $("#passStartDate").slideDown();
						 $("#passStartDate").fadeOut(3000);
						 $(".visitpassauto").val(0);
			            alert("pass Start Date is "+date);
			            
			            return ;
			            
			        }else {
			        	
			          /*   alert(dateOne+"Date Two is greather then Date One."+dateTwo); */
			        }
			    	
			    	
			    	mySplitResultvis = date1.split("-");
			       var dateTwo = new Date(mySplitResultvis[0],  parseInt(mySplitResultvis[1])-1, mySplitResultvis[2]); //Year, Month, Date
			       
			       
			       
			       if (dateOne > dateTwo) {
			     /*        alert("Date One is greather then Date Two."); */
			            $("#passEndDate").slideDown();
						 $("#passEndDate").fadeOut(3000);
						 $(".visitpassauto").val(0);
						    return ;
			        }else {
			          /*   alert("Date Two is greather then Date One."); */
			        }

			/*  alert(date+"   one");
			 alert(date1+"   two");  */
			break;
		}
	}
	
	if(j==-1){
		 $("#passRecordNotFound").slideDown();
		 $("#passRecordNotFound").fadeOut(3000);
		$(".visitpassauto").val(0);
		return;
	}
	
}


function monthPass(num){
 
	var j=-1;
	
	for(var iii=0;iii<monthlyPassAssiId.length;iii++){
		
		if(monthlyPassAssiId[iii]==num)
		{
			j=iii;
			
			fetchDataByCustomerId(monthlyPassAssiEndcust[j]);
			
			 var date = monthlyPassAssiStart[j];
			 var date1= monthlyPassAssiEnd[j];
			
			
			 var currdate=	new Date();
				var curdate= currdate.getDate();
				var curfullyear = currdate.getFullYear();
				var curmonth = currdate.getMonth();
				
				/* alert(curdate+"  curdate  "+curfullyear+"  curfullyear  "+curmonth+"   curmonth"); */
						var mySplitResultvis = date.split("-");
				
				    	var dateOne = new Date(curfullyear,curmonth,curdate); //Year, Month, Date
				    	var datestart = new Date(mySplitResultvis[0], parseInt(mySplitResultvis[1])-1, mySplitResultvis[2]); //Year, Month, Date
				    	if (dateOne < datestart) {
				    		 $("#passStartDate").slideDown();
							 $("#passStartDate").fadeOut(3000);
							 $(".monthpassauto").val(0);
				            alert("pass Start Date is "+date  +" yyyy-mm-dd ");
				            return ;
				            
				        }else {
				        	
				          /*   alert(dateOne+"Date Two is greather then Date One."+dateTwo); */
				        }
				    
				    	mySplitResultvis = date1.split("-");
				       var dateTwo = new Date(mySplitResultvis[0],  parseInt(mySplitResultvis[1])-1, mySplitResultvis[2]); //Year, Month, Date
				       
				       
				       
				       if (dateOne > dateTwo) {
				     /*        alert("Date One is greather then Date Two."); */
				            $("#passEndDate").slideDown();
							 $("#passEndDate").fadeOut(3000);
							 $(".monthpassauto").val(0);
							    return ;
				        }else {
				          /*   alert("Date Two is greather then Date One."); */
				        }

				/*  alert(date+"   one");
				 alert(date1+"   two");  */
				break;
		}
	}
	
	if(j==-1){ 
		 $("#passRecordNotFound").slideDown();
		 $("#passRecordNotFound").fadeOut(3000);
		
		$(".monthpassauto").val(0);
		return;
	}
	
}
function fetchData(moba)
{

if(moba==""){
	return ;
}
	var i;
	var j=-1;
	
	/* alert(moba); */
for(i=0;i<mob1.length;i++)
	{
	
	if(mob1[i]==moba)
		{
		
			j=i;	
			break;
		
		}
	
	}
	if(j==-1){
		
		for(i=0;i<mob2.length;i++)
		{

		if(mob2[i]==moba)
			{
				j=i;		
			
			}

		}		
	}

//alert(customerId[j]);
	if(j!=-1){
		document.getElementById('cname').value=customer[j] ; 

		document.getElementById('lname').value=lastName[j] ; 

		document.getElementById('fathername').value=fatherName[j] ; 

		document.getElementById('mothername').value=motherName[j] ; 
		document.getElementById('email').value=email[j] ; 


		document.getElementById('mno1').value=mob1[j] ; 

		document.getElementById('mno2').value=mob2[j] ;
		document.getElementById('address').value=address[j] ;
		document.getElementById('locality').value=locality[j] ;
		document.getElementById('countryCodeMob1').value=custMobCountry1[j] ;   
		document.getElementById('countryCodeMob2').value=custMobCountry2[j] ;

		
		if(dob[j]!=""){
			var mySplitResult = dob[j].split("-");

			var bdate = mySplitResult[1]+"/"+mySplitResult[2]+"/"+mySplitResult[0];

			var bdate = mySplitResult[1]+"/"+mySplitResult[2]+"/"+mySplitResult[0];

			document.getElementById('datepicker1').value=bdate ;
		}
		
	//	document.getElementById('datepicker1').value=dob[j] ;
		$("#hiddenCustId").val(customerId[j]);	
		}else{
			$("#hiddenCustId").val(0);
		}

}

function fetchDataByCustomerId(moba)
{
	if(moba==""){
		return ;
	}
	var i;
	var j=-1;
	
	/* alert(moba); */
for(i=0;i<customerId.length;i++)
	{
	
	if(customerId[i]==moba)
		{
		
			j=i;	
			break;
		
		}
	
	}
	/* if(j==-1){
		
		for(i=0;i<mob2.length;i++)
		{

		if(mob2[i]==moba)
			{
				j=i;		
			
			}

		}		
	}
 */
//alert(customerId[j]);
	if(j!=-1){
		document.getElementById('cname').value=customer[j] ; 

		document.getElementById('lname').value=lastName[j] ; 

		document.getElementById('fathername').value=fatherName[j] ; 

		document.getElementById('mothername').value=motherName[j] ; 
		document.getElementById('email').value=email[j] ; 


		document.getElementById('mno1').value=mob1[j] ; 

		document.getElementById('mno2').value=mob2[j] ;
		document.getElementById('address').value=address[j] ;
		document.getElementById('locality').value=locality[j] ;

		if(dob[j]!=""){
			var mySplitResult = dob[j].split("-");

			var bdate = mySplitResult[1]+"/"+mySplitResult[2]+"/"+mySplitResult[0];

			var bdate = mySplitResult[1]+"/"+mySplitResult[2]+"/"+mySplitResult[0];

			document.getElementById('datepicker1').value=bdate ;
		}
		
		document.getElementById('countryCodeMob1').value=custMobCountry1[j] ;   
		document.getElementById('countryCodeMob2').value=custMobCountry2[j] ;
		
	//	document.getElementById('datepicker1').value=dob[j] ;
		$("#hiddenCustId").val(customerId[j]);	
		}else{
			$("#hiddenCustId").val(0);
		}


  	
	
}
function advanceBirtBooking(advBirthBookId){
	
	
	
	
	
	if(advBirthBookId=="0"){
		
		
		 $("#birthdayInvalid").slideDown();
		 $("#birthdayInvalid").fadeOut(3000);
		
		$("#birthAdvanceBook").val(0);
		return;
	}
	
	
	
	            $("#remainingHiddenAmount").val(0);
	             $("#remainingHiddenPaidAmount").val(0);
	
	var j=-1;
	
	for(var api=0;api<processingAdvanceBirthdayBookingId.length;api++){
		
		if(processingAdvanceBirthdayBookingId[api]== advBirthBookId){
			/* var advanceBirthId =$("#birthAdvanceBook").val(); */
			j=api;
			fetchDataByCustomerId(processingAdvanceBirthdayBookingCustomer[api]);
			
			
	
			$("#package").val(processingAdvanceBirthdayBookingPackage[api]);                                         
			$("#advBirthHiddenAdult").val(processingAdvanceBirthdayBookingAdult[api]);    
			$("#advBirthHiddenChild").val(processingAdvanceBirthdayBookingChild[api]);
			
			
			$("#birthDayAdult").val(processingAdvanceBirthdayBookingAdult[api]); 
			$("#birthDayChild").val(processingAdvanceBirthdayBookingChild[api]);
			
			$("#birthAdvanceBookHidden").val(processingAdvanceBirthdayBookingId[api]);
			
			
			$("#paidAmount").val(processingAdvanceBirthdayBookingPaidAmount[api]);
			
			$("#BillAmount").val(processingAdvanceBirthdayBookingTotal[api]);
			
			
		 var remainingPrice=	($("#BillAmount").val() -	$("#paidAmount").val());
		  var remainingPaidPrice=$("#paidAmount").val();
		
		   $("#remainingHiddenAmount").val(remainingPrice);
	    //	alert(	$("#remainingHiddenAmount").val()+"remainning amount");
		 $("#remainingHiddenPaidAmount").val(remainingPaidPrice);
		   //alert($("#remainingHiddenPaidAmount").val);
		
			
		}
	}
	
	
	
	
	
	
	
	if(j==-1){
		 $("#birthdayInvalid").slideDown();
		 $("#birthdayInvalid").fadeOut(3000);
		$("#birthAdvanceBook").val(0);
		$("#remainingHiddenAmount").val(0);
		return false;
	}
	
}




</script>

<!--   <script>
$(function() {
var availableTags = customer;
$("#cname").autocomplete({source: availableTags});
});

</script> -->
  <script>
$(function() {
var availableTags1 = mob;
$(".mobCodeClass" ).autocomplete({source: availableTags1});
});

$(function() {
	var availableTags2 = visitPassAssiId;
	$(".visitpassauto" ).autocomplete({source: availableTags2});
	});



$(function() {
	var availableTags3 = monthlyPassAssiId;
	$(".monthpassauto" ).autocomplete({source: availableTags3});
	});


$(function() {
	var availableTags4 = processingAdvanceBirthdayBookingId;
	$(".AdvanceBirthdayBookingauto").autocomplete({source: availableTags4});
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
					<strong>Warning: </strong>please Enter Date Of Birth .
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="dateselectbill">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>please Enter Quotation Date .
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="passStartDate">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Check Start Date.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="passEndDate">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Pass Expired Purchase Another One.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="passRecordNotFound">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Pass Record Not Found Check Pass Id.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="birthdayInvalid">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Enter Valid Booking Id Or Record Not Found.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="birthdayChildQuantity">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Can Not Reduce The Quantity Of Child In Advance Booking.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="birthdayAdultQuantity">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Can Not Reduce The Quantity Of Adult  In Advance Booking.
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-success alert-dismissable"
					id="expenseSaved">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Expense saved SuccessFully.
				</div>
				
				<div style="margin-top: 20px;"
					class="alert alert-danger alert-dismissable"
					id="payBillAmount">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Please Pay Quotation Amount .
				</div>
				<div style="margin-top: 20px;"
					class="alert alert-success alert-dismissable"
					id="quotId">
					<button type="button" class="close" data-dismiss="alert"
				aria-hidden="true">&times;</button>
					<strong>Warning: </strong>Quotation Saved Success .
				</div>
		</div>
				
				  <script type="text/javascript">
	              $("#cnameselect").hide();
	              $("#lnameselect").hide();
	              $("#fathernameselect").hide();
	              $("#mothernameselect").hide();
	              $("#dateselectbill").hide();
	              $("#passStartDate").hide();
	              $("#passEndDate").hide();
	              $("#passRecordNotFound").hide();
	              $("#birthdayInvalid").hide();
	              $("#birthdayAdultQuantity").hide();
	              $("#birthdayChildQuantity").hide();
	              
	              $("#quotId").hide();
				  $("#expenseSaved").hide();
				  
				  $("#payBillAmount").hide();
				  
	              	             
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
		
		
			
					<c:forEach  var="permlist" items="${permissionList}">
									
						<c:if test="${permlist.type == 7}">
								<li><a  href="#student_specific_details_tab" data-toggle="tab">Billing</a></li>	              		</c:if> 
	               	 
	               	 <c:if test="${permlist.type == 8}">
							  <li><a href="#class_specific_details_tab" data-toggle="tab">Marketing</a></li>
	               	 </c:if>
	               	 
	               	 <c:if test="${permlist.type == 9}">
		   			<li><a href="#Expense_Revenue_details_tab" data-toggle="tab">Accounts</a></li>
	               	 
	               	 </c:if>
	                <c:if test="${permlist.type == 10}">
		     			<!-- 	 <li><a href="#class_specific_details_tab" data-toggle="tab">Communicator</a></li> -->
	               	 
	               	 </c:if> 
	               	 
	               	
	               	 </c:forEach>
		
		
		  
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
						<input type="text" class="form-control  required customerCodeClass"
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
					<label>Country</label> 
					<select name="countryCodeMob1" id="countryCodeMob1" class="form-control">
					<option data-countryCode="GB" value="44" Selected>UK (+44)</option>
					<option data-countryCode="US" value="1">USA (+1)</option>
					<option data-countryCode="DZ" value="213">Algeria (+213)</option>
					<option data-countryCode="AD" value="376">Andorra (+376)</option>
					<option data-countryCode="AO" value="244">Angola (+244)</option>
					<option data-countryCode="AI" value="1264">Anguilla (+1264)</option>
					<option data-countryCode="AG" value="1268">Antigua &amp; Barbuda (+1268)</option>
					<option data-countryCode="AR" value="54">Argentina (+54)</option>
					<option data-countryCode="AM" value="374">Armenia (+374)</option>
					<option data-countryCode="AW" value="297">Aruba (+297)</option>
					<option data-countryCode="AU" value="61">Australia (+61)</option>
					<option data-countryCode="AT" value="43">Austria (+43)</option>
					<option data-countryCode="AZ" value="994">Azerbaijan (+994)</option>
					<option data-countryCode="BS" value="1242">Bahamas (+1242)</option>
					<option data-countryCode="BH" value="973">Bahrain (+973)</option>
					<option data-countryCode="BD" value="880">Bangladesh (+880)</option>
					<option data-countryCode="BB" value="1246">Barbados (+1246)</option>
					<option data-countryCode="BY" value="375">Belarus (+375)</option>
					<option data-countryCode="BE" value="32">Belgium (+32)</option>
					<option data-countryCode="BZ" value="501">Belize (+501)</option>
					<option data-countryCode="BJ" value="229">Benin (+229)</option>
					<option data-countryCode="BM" value="1441">Bermuda (+1441)</option>
					<option data-countryCode="BT" value="975">Bhutan (+975)</option>
					<option data-countryCode="BO" value="591">Bolivia (+591)</option>
					<option data-countryCode="BA" value="387">Bosnia Herzegovina (+387)</option>
					<option data-countryCode="BW" value="267">Botswana (+267)</option>
					<option data-countryCode="BR" value="55">Brazil (+55)</option>
					<option data-countryCode="BN" value="673">Brunei (+673)</option>
					<option data-countryCode="BG" value="359">Bulgaria (+359)</option>
					<option data-countryCode="BF" value="226">Burkina Faso (+226)</option>
					<option data-countryCode="BI" value="257">Burundi (+257)</option>
					<option data-countryCode="KH" value="855">Cambodia (+855)</option>
					<option data-countryCode="CM" value="237">Cameroon (+237)</option>
					<option data-countryCode="CA" value="1">Canada (+1)</option>
					<option data-countryCode="CV" value="238">Cape Verde Islands (+238)</option>
					<option data-countryCode="KY" value="1345">Cayman Islands (+1345)</option>
					<option data-countryCode="CF" value="236">Central African Republic (+236)</option>
					<option data-countryCode="CL" value="56">Chile (+56)</option>
					<option data-countryCode="CN" value="86">China (+86)</option>
					<option data-countryCode="CO" value="57">Colombia (+57)</option>
					<option data-countryCode="KM" value="269">Comoros (+269)</option>
					<option data-countryCode="CG" value="242">Congo (+242)</option>
					<option data-countryCode="CK" value="682">Cook Islands (+682)</option>
					<option data-countryCode="CR" value="506">Costa Rica (+506)</option>
					<option data-countryCode="HR" value="385">Croatia (+385)</option>
					<option data-countryCode="CU" value="53">Cuba (+53)</option>
					<option data-countryCode="CY" value="90392">Cyprus North (+90392)</option>
					<option data-countryCode="CY" value="357">Cyprus South (+357)</option>
					<option data-countryCode="CZ" value="42">Czech Republic (+42)</option>
					<option data-countryCode="DK" value="45">Denmark (+45)</option>
					<option data-countryCode="DJ" value="253">Djibouti (+253)</option>
					<option data-countryCode="DM" value="1809">Dominica (+1809)</option>
					<option data-countryCode="DO" value="1809">Dominican Republic (+1809)</option>
					<option data-countryCode="EC" value="593">Ecuador (+593)</option>
					<option data-countryCode="EG" value="20">Egypt (+20)</option>
					<option data-countryCode="SV" value="503">El Salvador (+503)</option>
					<option data-countryCode="GQ" value="240">Equatorial Guinea (+240)</option>
					<option data-countryCode="ER" value="291">Eritrea (+291)</option>
					<option data-countryCode="EE" value="372">Estonia (+372)</option>
					<option data-countryCode="ET" value="251">Ethiopia (+251)</option>
					<option data-countryCode="FK" value="500">Falkland Islands (+500)</option>
					<option data-countryCode="FO" value="298">Faroe Islands (+298)</option>
					<option data-countryCode="FJ" value="679">Fiji (+679)</option>
					<option data-countryCode="FI" value="358">Finland (+358)</option>
					<option data-countryCode="FR" value="33">France (+33)</option>
					<option data-countryCode="GF" value="594">French Guiana (+594)</option>
					<option data-countryCode="PF" value="689">French Polynesia (+689)</option>
					<option data-countryCode="GA" value="241">Gabon (+241)</option>
					<option data-countryCode="GM" value="220">Gambia (+220)</option>
					<option data-countryCode="GE" value="7880">Georgia (+7880)</option>
					<option data-countryCode="DE" value="49">Germany (+49)</option>
					<option data-countryCode="GH" value="233">Ghana (+233)</option>
					<option data-countryCode="GI" value="350">Gibraltar (+350)</option>
					<option data-countryCode="GR" value="30">Greece (+30)</option>
					<option data-countryCode="GL" value="299">Greenland (+299)</option>
					<option data-countryCode="GD" value="1473">Grenada (+1473)</option>
					<option data-countryCode="GP" value="590">Guadeloupe (+590)</option>
					<option data-countryCode="GU" value="671">Guam (+671)</option>
					<option data-countryCode="GT" value="502">Guatemala (+502)</option>
					<option data-countryCode="GN" value="224">Guinea (+224)</option>
					<option data-countryCode="GW" value="245">Guinea - Bissau (+245)</option>
					<option data-countryCode="GY" value="592">Guyana (+592)</option>
					<option data-countryCode="HT" value="509">Haiti (+509)</option>
					<option data-countryCode="HN" value="504">Honduras (+504)</option>
					<option data-countryCode="HK" value="852">Hong Kong (+852)</option>
					<option data-countryCode="HU" value="36">Hungary (+36)</option>
					<option data-countryCode="IS" value="354">Iceland (+354)</option>
					<option data-countryCode="IN" value="91">India (+91)</option>
					<option data-countryCode="ID" value="62">Indonesia (+62)</option>
					<option data-countryCode="IR" value="98">Iran (+98)</option>
					<option data-countryCode="IQ" value="964">Iraq (+964)</option>
					<option data-countryCode="IE" value="353">Ireland (+353)</option>
					<option data-countryCode="IL" value="972">Israel (+972)</option>
					<option data-countryCode="IT" value="39">Italy (+39)</option>
					<option data-countryCode="JM" value="1876">Jamaica (+1876)</option>
					<option data-countryCode="JP" value="81">Japan (+81)</option>
					<option data-countryCode="JO" value="962">Jordan (+962)</option>
					<option data-countryCode="KZ" value="7">Kazakhstan (+7)</option>
					<option data-countryCode="KE" value="254">Kenya (+254)</option>
					<option data-countryCode="KI" value="686">Kiribati (+686)</option>
					<option data-countryCode="KP" value="850">Korea North (+850)</option>
					<option data-countryCode="KR" value="82">Korea South (+82)</option>
					<option data-countryCode="KW" value="965">Kuwait (+965)</option>
					<option data-countryCode="KG" value="996">Kyrgyzstan (+996)</option>
					<option data-countryCode="LA" value="856">Laos (+856)</option>
					<option data-countryCode="LV" value="371">Latvia (+371)</option>
					<option data-countryCode="LB" value="961">Lebanon (+961)</option>
					<option data-countryCode="LS" value="266">Lesotho (+266)</option>
					<option data-countryCode="LR" value="231">Liberia (+231)</option>
					<option data-countryCode="LY" value="218">Libya (+218)</option>
					<option data-countryCode="LI" value="417">Liechtenstein (+417)</option>
					<option data-countryCode="LT" value="370">Lithuania (+370)</option>
					<option data-countryCode="LU" value="352">Luxembourg (+352)</option>
					<option data-countryCode="MO" value="853">Macao (+853)</option>
					<option data-countryCode="MK" value="389">Macedonia (+389)</option>
					<option data-countryCode="MG" value="261">Madagascar (+261)</option>
					<option data-countryCode="MW" value="265">Malawi (+265)</option>
					<option data-countryCode="MY" value="60">Malaysia (+60)</option>
					<option data-countryCode="MV" value="960">Maldives (+960)</option>
					<option data-countryCode="ML" value="223">Mali (+223)</option>
					<option data-countryCode="MT" value="356">Malta (+356)</option>
					<option data-countryCode="MH" value="692">Marshall Islands (+692)</option>
					<option data-countryCode="MQ" value="596">Martinique (+596)</option>
					<option data-countryCode="MR" value="222">Mauritania (+222)</option>
					<option data-countryCode="YT" value="269">Mayotte (+269)</option>
					<option data-countryCode="MX" value="52">Mexico (+52)</option>
					<option data-countryCode="FM" value="691">Micronesia (+691)</option>
					<option data-countryCode="MD" value="373">Moldova (+373)</option>
					<option data-countryCode="MC" value="377">Monaco (+377)</option>
					<option data-countryCode="MN" value="976">Mongolia (+976)</option>
					<option data-countryCode="MS" value="1664">Montserrat (+1664)</option>
					<option data-countryCode="MA" value="212">Morocco (+212)</option>
					<option data-countryCode="MZ" value="258">Mozambique (+258)</option>
					<option data-countryCode="MN" value="95">Myanmar (+95)</option>
					<option data-countryCode="NA" value="264">Namibia (+264)</option>
					<option data-countryCode="NR" value="674">Nauru (+674)</option>
					<option data-countryCode="NP" value="977">Nepal (+977)</option>
					<option data-countryCode="NL" value="31">Netherlands (+31)</option>
					<option data-countryCode="NC" value="687">New Caledonia (+687)</option>
					<option data-countryCode="NZ" value="64">New Zealand (+64)</option>
					<option data-countryCode="NI" value="505">Nicaragua (+505)</option>
					<option data-countryCode="NE" value="227">Niger (+227)</option>
					<option data-countryCode="NG" value="234">Nigeria (+234)</option>
					<option data-countryCode="NU" value="683">Niue (+683)</option>
					<option data-countryCode="NF" value="672">Norfolk Islands (+672)</option>
					<option data-countryCode="NP" value="670">Northern Marianas (+670)</option>
					<option data-countryCode="NO" value="47">Norway (+47)</option>
					<option data-countryCode="OM" value="968">Oman (+968)</option>
					<option data-countryCode="PW" value="680">Palau (+680)</option>
					<option data-countryCode="PA" value="507">Panama (+507)</option>
					<option data-countryCode="PG" value="675">Papua New Guinea (+675)</option>
					<option data-countryCode="PY" value="595">Paraguay (+595)</option>
					<option data-countryCode="PE" value="51">Peru (+51)</option>
					<option data-countryCode="PH" value="63">Philippines (+63)</option>
					<option data-countryCode="PL" value="48">Poland (+48)</option>
					<option data-countryCode="PT" value="351">Portugal (+351)</option>
					<option data-countryCode="PR" value="1787">Puerto Rico (+1787)</option>
					<option data-countryCode="QA" value="974">Qatar (+974)</option>
					<option data-countryCode="RE" value="262">Reunion (+262)</option>
					<option data-countryCode="RO" value="40">Romania (+40)</option>
					<option data-countryCode="RU" value="7">Russia (+7)</option>
					<option data-countryCode="RW" value="250">Rwanda (+250)</option>
					<option data-countryCode="SM" value="378">San Marino (+378)</option>
					<option data-countryCode="ST" value="239">Sao Tome &amp; Principe (+239)</option>
					<option data-countryCode="SA" value="966">Saudi Arabia (+966)</option>
					<option data-countryCode="SN" value="221">Senegal (+221)</option>
					<option data-countryCode="CS" value="381">Serbia (+381)</option>
					<option data-countryCode="SC" value="248">Seychelles (+248)</option>
					<option data-countryCode="SL" value="232">Sierra Leone (+232)</option>
					<option data-countryCode="SG" value="65">Singapore (+65)</option>
					<option data-countryCode="SK" value="421">Slovak Republic (+421)</option>
					<option data-countryCode="SI" value="386">Slovenia (+386)</option>
					<option data-countryCode="SB" value="677">Solomon Islands (+677)</option>
					<option data-countryCode="SO" value="252">Somalia (+252)</option>
					<option data-countryCode="ZA" value="27">South Africa (+27)</option>
					<option data-countryCode="ES" value="34">Spain (+34)</option>
					<option data-countryCode="LK" value="94">Sri Lanka (+94)</option>
					<option data-countryCode="SH" value="290">St. Helena (+290)</option>
					<option data-countryCode="KN" value="1869">St. Kitts (+1869)</option>
					<option data-countryCode="SC" value="1758">St. Lucia (+1758)</option>
					<option data-countryCode="SD" value="249">Sudan (+249)</option>
					<option data-countryCode="SR" value="597">Suriname (+597)</option>
					<option data-countryCode="SZ" value="268">Swaziland (+268)</option>
					<option data-countryCode="SE" value="46">Sweden (+46)</option>
					<option data-countryCode="CH" value="41">Switzerland (+41)</option>
					<option data-countryCode="SI" value="963">Syria (+963)</option>
					<option data-countryCode="TW" value="886">Taiwan (+886)</option>
					<option data-countryCode="TJ" value="7">Tajikstan (+7)</option>
					<option data-countryCode="TH" value="66">Thailand (+66)</option>
					<option data-countryCode="TG" value="228">Togo (+228)</option>
					<option data-countryCode="TO" value="676">Tonga (+676)</option>
					<option data-countryCode="TT" value="1868">Trinidad &amp; Tobago (+1868)</option>
					<option data-countryCode="TN" value="216">Tunisia (+216)</option>
					<option data-countryCode="TR" value="90">Turkey (+90)</option>
					<option data-countryCode="TM" value="7">Turkmenistan (+7)</option>
					<option data-countryCode="TM" value="993">Turkmenistan (+993)</option>
					<option data-countryCode="TC" value="1649">Turks &amp; Caicos Islands (+1649)</option>
					<option data-countryCode="TV" value="688">Tuvalu (+688)</option>
					<option data-countryCode="UG" value="256">Uganda (+256)</option>
					<!-- <option data-countryCode="GB" value="44">UK (+44)</option> -->
					<option data-countryCode="UA" value="380">Ukraine (+380)</option>
					<option data-countryCode="AE" value="971">United Arab Emirates (+971)</option>
					<option data-countryCode="UY" value="598">Uruguay (+598)</option>
					<!-- <option data-countryCode="US" value="1">USA (+1)</option> -->
					<option data-countryCode="UZ" value="7">Uzbekistan (+7)</option>
					<option data-countryCode="VU" value="678">Vanuatu (+678)</option>
					<option data-countryCode="VA" value="379">Vatican City (+379)</option>
					<option data-countryCode="VE" value="58">Venezuela (+58)</option>
					<option data-countryCode="VN" value="84">Vietnam (+84)</option>
					<option data-countryCode="VG" value="84">Virgin Islands - British (+1284)</option>
					<option data-countryCode="VI" value="84">Virgin Islands - US (+1340)</option>
					<option data-countryCode="WF" value="681">Wallis &amp; Futuna (+681)</option>
					<option data-countryCode="YE" value="969">Yemen (North)(+969)</option>
					<option data-countryCode="YE" value="967">Yemen (South)(+967)</option>
					<option data-countryCode="ZM" value="260">Zambia (+260)</option>
					<option data-countryCode="ZW" value="263">Zimbabwe (+263)</option>
					</select>
					</div>

					<div class="col-xs-3">
						<label>Mobile No 1</label><input type="text" class="form-control required mobCodeClass"
							placeholder="mobile No1" name="mno1" id="mno1" value="${mob1}"  autocomplete="on" onblur="fetchData(this.value);" onChange="fetchData(this.value);">
					</div>
					
					<div class="col-xs-3">
					<label>Country</label> 
					<select name="countryCodeMob2" id="countryCodeMob2" class="form-control">
					<option data-countryCode="GB" value="44" Selected>UK (+44)</option>
					<option data-countryCode="US" value="1">USA (+1)</option>
					<option data-countryCode="DZ" value="213">Algeria (+213)</option>
					<option data-countryCode="AD" value="376">Andorra (+376)</option>
					<option data-countryCode="AO" value="244">Angola (+244)</option>
					<option data-countryCode="AI" value="1264">Anguilla (+1264)</option>
					<option data-countryCode="AG" value="1268">Antigua &amp; Barbuda (+1268)</option>
					<option data-countryCode="AR" value="54">Argentina (+54)</option>
					<option data-countryCode="AM" value="374">Armenia (+374)</option>
					<option data-countryCode="AW" value="297">Aruba (+297)</option>
					<option data-countryCode="AU" value="61">Australia (+61)</option>
					<option data-countryCode="AT" value="43">Austria (+43)</option>
					<option data-countryCode="AZ" value="994">Azerbaijan (+994)</option>
					<option data-countryCode="BS" value="1242">Bahamas (+1242)</option>
					<option data-countryCode="BH" value="973">Bahrain (+973)</option>
					<option data-countryCode="BD" value="880">Bangladesh (+880)</option>
					<option data-countryCode="BB" value="1246">Barbados (+1246)</option>
					<option data-countryCode="BY" value="375">Belarus (+375)</option>
					<option data-countryCode="BE" value="32">Belgium (+32)</option>
					<option data-countryCode="BZ" value="501">Belize (+501)</option>
					<option data-countryCode="BJ" value="229">Benin (+229)</option>
					<option data-countryCode="BM" value="1441">Bermuda (+1441)</option>
					<option data-countryCode="BT" value="975">Bhutan (+975)</option>
					<option data-countryCode="BO" value="591">Bolivia (+591)</option>
					<option data-countryCode="BA" value="387">Bosnia Herzegovina (+387)</option>
					<option data-countryCode="BW" value="267">Botswana (+267)</option>
					<option data-countryCode="BR" value="55">Brazil (+55)</option>
					<option data-countryCode="BN" value="673">Brunei (+673)</option>
					<option data-countryCode="BG" value="359">Bulgaria (+359)</option>
					<option data-countryCode="BF" value="226">Burkina Faso (+226)</option>
					<option data-countryCode="BI" value="257">Burundi (+257)</option>
					<option data-countryCode="KH" value="855">Cambodia (+855)</option>
					<option data-countryCode="CM" value="237">Cameroon (+237)</option>
					<option data-countryCode="CA" value="1">Canada (+1)</option>
					<option data-countryCode="CV" value="238">Cape Verde Islands (+238)</option>
					<option data-countryCode="KY" value="1345">Cayman Islands (+1345)</option>
					<option data-countryCode="CF" value="236">Central African Republic (+236)</option>
					<option data-countryCode="CL" value="56">Chile (+56)</option>
					<option data-countryCode="CN" value="86">China (+86)</option>
					<option data-countryCode="CO" value="57">Colombia (+57)</option>
					<option data-countryCode="KM" value="269">Comoros (+269)</option>
					<option data-countryCode="CG" value="242">Congo (+242)</option>
					<option data-countryCode="CK" value="682">Cook Islands (+682)</option>
					<option data-countryCode="CR" value="506">Costa Rica (+506)</option>
					<option data-countryCode="HR" value="385">Croatia (+385)</option>
					<option data-countryCode="CU" value="53">Cuba (+53)</option>
					<option data-countryCode="CY" value="90392">Cyprus North (+90392)</option>
					<option data-countryCode="CY" value="357">Cyprus South (+357)</option>
					<option data-countryCode="CZ" value="42">Czech Republic (+42)</option>
					<option data-countryCode="DK" value="45">Denmark (+45)</option>
					<option data-countryCode="DJ" value="253">Djibouti (+253)</option>
					<option data-countryCode="DM" value="1809">Dominica (+1809)</option>
					<option data-countryCode="DO" value="1809">Dominican Republic (+1809)</option>
					<option data-countryCode="EC" value="593">Ecuador (+593)</option>
					<option data-countryCode="EG" value="20">Egypt (+20)</option>
					<option data-countryCode="SV" value="503">El Salvador (+503)</option>
					<option data-countryCode="GQ" value="240">Equatorial Guinea (+240)</option>
					<option data-countryCode="ER" value="291">Eritrea (+291)</option>
					<option data-countryCode="EE" value="372">Estonia (+372)</option>
					<option data-countryCode="ET" value="251">Ethiopia (+251)</option>
					<option data-countryCode="FK" value="500">Falkland Islands (+500)</option>
					<option data-countryCode="FO" value="298">Faroe Islands (+298)</option>
					<option data-countryCode="FJ" value="679">Fiji (+679)</option>
					<option data-countryCode="FI" value="358">Finland (+358)</option>
					<option data-countryCode="FR" value="33">France (+33)</option>
					<option data-countryCode="GF" value="594">French Guiana (+594)</option>
					<option data-countryCode="PF" value="689">French Polynesia (+689)</option>
					<option data-countryCode="GA" value="241">Gabon (+241)</option>
					<option data-countryCode="GM" value="220">Gambia (+220)</option>
					<option data-countryCode="GE" value="7880">Georgia (+7880)</option>
					<option data-countryCode="DE" value="49">Germany (+49)</option>
					<option data-countryCode="GH" value="233">Ghana (+233)</option>
					<option data-countryCode="GI" value="350">Gibraltar (+350)</option>
					<option data-countryCode="GR" value="30">Greece (+30)</option>
					<option data-countryCode="GL" value="299">Greenland (+299)</option>
					<option data-countryCode="GD" value="1473">Grenada (+1473)</option>
					<option data-countryCode="GP" value="590">Guadeloupe (+590)</option>
					<option data-countryCode="GU" value="671">Guam (+671)</option>
					<option data-countryCode="GT" value="502">Guatemala (+502)</option>
					<option data-countryCode="GN" value="224">Guinea (+224)</option>
					<option data-countryCode="GW" value="245">Guinea - Bissau (+245)</option>
					<option data-countryCode="GY" value="592">Guyana (+592)</option>
					<option data-countryCode="HT" value="509">Haiti (+509)</option>
					<option data-countryCode="HN" value="504">Honduras (+504)</option>
					<option data-countryCode="HK" value="852">Hong Kong (+852)</option>
					<option data-countryCode="HU" value="36">Hungary (+36)</option>
					<option data-countryCode="IS" value="354">Iceland (+354)</option>
					<option data-countryCode="IN" value="91">India (+91)</option>
					<option data-countryCode="ID" value="62">Indonesia (+62)</option>
					<option data-countryCode="IR" value="98">Iran (+98)</option>
					<option data-countryCode="IQ" value="964">Iraq (+964)</option>
					<option data-countryCode="IE" value="353">Ireland (+353)</option>
					<option data-countryCode="IL" value="972">Israel (+972)</option>
					<option data-countryCode="IT" value="39">Italy (+39)</option>
					<option data-countryCode="JM" value="1876">Jamaica (+1876)</option>
					<option data-countryCode="JP" value="81">Japan (+81)</option>
					<option data-countryCode="JO" value="962">Jordan (+962)</option>
					<option data-countryCode="KZ" value="7">Kazakhstan (+7)</option>
					<option data-countryCode="KE" value="254">Kenya (+254)</option>
					<option data-countryCode="KI" value="686">Kiribati (+686)</option>
					<option data-countryCode="KP" value="850">Korea North (+850)</option>
					<option data-countryCode="KR" value="82">Korea South (+82)</option>
					<option data-countryCode="KW" value="965">Kuwait (+965)</option>
					<option data-countryCode="KG" value="996">Kyrgyzstan (+996)</option>
					<option data-countryCode="LA" value="856">Laos (+856)</option>
					<option data-countryCode="LV" value="371">Latvia (+371)</option>
					<option data-countryCode="LB" value="961">Lebanon (+961)</option>
					<option data-countryCode="LS" value="266">Lesotho (+266)</option>
					<option data-countryCode="LR" value="231">Liberia (+231)</option>
					<option data-countryCode="LY" value="218">Libya (+218)</option>
					<option data-countryCode="LI" value="417">Liechtenstein (+417)</option>
					<option data-countryCode="LT" value="370">Lithuania (+370)</option>
					<option data-countryCode="LU" value="352">Luxembourg (+352)</option>
					<option data-countryCode="MO" value="853">Macao (+853)</option>
					<option data-countryCode="MK" value="389">Macedonia (+389)</option>
					<option data-countryCode="MG" value="261">Madagascar (+261)</option>
					<option data-countryCode="MW" value="265">Malawi (+265)</option>
					<option data-countryCode="MY" value="60">Malaysia (+60)</option>
					<option data-countryCode="MV" value="960">Maldives (+960)</option>
					<option data-countryCode="ML" value="223">Mali (+223)</option>
					<option data-countryCode="MT" value="356">Malta (+356)</option>
					<option data-countryCode="MH" value="692">Marshall Islands (+692)</option>
					<option data-countryCode="MQ" value="596">Martinique (+596)</option>
					<option data-countryCode="MR" value="222">Mauritania (+222)</option>
					<option data-countryCode="YT" value="269">Mayotte (+269)</option>
					<option data-countryCode="MX" value="52">Mexico (+52)</option>
					<option data-countryCode="FM" value="691">Micronesia (+691)</option>
					<option data-countryCode="MD" value="373">Moldova (+373)</option>
					<option data-countryCode="MC" value="377">Monaco (+377)</option>
					<option data-countryCode="MN" value="976">Mongolia (+976)</option>
					<option data-countryCode="MS" value="1664">Montserrat (+1664)</option>
					<option data-countryCode="MA" value="212">Morocco (+212)</option>
					<option data-countryCode="MZ" value="258">Mozambique (+258)</option>
					<option data-countryCode="MN" value="95">Myanmar (+95)</option>
					<option data-countryCode="NA" value="264">Namibia (+264)</option>
					<option data-countryCode="NR" value="674">Nauru (+674)</option>
					<option data-countryCode="NP" value="977">Nepal (+977)</option>
					<option data-countryCode="NL" value="31">Netherlands (+31)</option>
					<option data-countryCode="NC" value="687">New Caledonia (+687)</option>
					<option data-countryCode="NZ" value="64">New Zealand (+64)</option>
					<option data-countryCode="NI" value="505">Nicaragua (+505)</option>
					<option data-countryCode="NE" value="227">Niger (+227)</option>
					<option data-countryCode="NG" value="234">Nigeria (+234)</option>
					<option data-countryCode="NU" value="683">Niue (+683)</option>
					<option data-countryCode="NF" value="672">Norfolk Islands (+672)</option>
					<option data-countryCode="NP" value="670">Northern Marianas (+670)</option>
					<option data-countryCode="NO" value="47">Norway (+47)</option>
					<option data-countryCode="OM" value="968">Oman (+968)</option>
					<option data-countryCode="PW" value="680">Palau (+680)</option>
					<option data-countryCode="PA" value="507">Panama (+507)</option>
					<option data-countryCode="PG" value="675">Papua New Guinea (+675)</option>
					<option data-countryCode="PY" value="595">Paraguay (+595)</option>
					<option data-countryCode="PE" value="51">Peru (+51)</option>
					<option data-countryCode="PH" value="63">Philippines (+63)</option>
					<option data-countryCode="PL" value="48">Poland (+48)</option>
					<option data-countryCode="PT" value="351">Portugal (+351)</option>
					<option data-countryCode="PR" value="1787">Puerto Rico (+1787)</option>
					<option data-countryCode="QA" value="974">Qatar (+974)</option>
					<option data-countryCode="RE" value="262">Reunion (+262)</option>
					<option data-countryCode="RO" value="40">Romania (+40)</option>
					<option data-countryCode="RU" value="7">Russia (+7)</option>
					<option data-countryCode="RW" value="250">Rwanda (+250)</option>
					<option data-countryCode="SM" value="378">San Marino (+378)</option>
					<option data-countryCode="ST" value="239">Sao Tome &amp; Principe (+239)</option>
					<option data-countryCode="SA" value="966">Saudi Arabia (+966)</option>
					<option data-countryCode="SN" value="221">Senegal (+221)</option>
					<option data-countryCode="CS" value="381">Serbia (+381)</option>
					<option data-countryCode="SC" value="248">Seychelles (+248)</option>
					<option data-countryCode="SL" value="232">Sierra Leone (+232)</option>
					<option data-countryCode="SG" value="65">Singapore (+65)</option>
					<option data-countryCode="SK" value="421">Slovak Republic (+421)</option>
					<option data-countryCode="SI" value="386">Slovenia (+386)</option>
					<option data-countryCode="SB" value="677">Solomon Islands (+677)</option>
					<option data-countryCode="SO" value="252">Somalia (+252)</option>
					<option data-countryCode="ZA" value="27">South Africa (+27)</option>
					<option data-countryCode="ES" value="34">Spain (+34)</option>
					<option data-countryCode="LK" value="94">Sri Lanka (+94)</option>
					<option data-countryCode="SH" value="290">St. Helena (+290)</option>
					<option data-countryCode="KN" value="1869">St. Kitts (+1869)</option>
					<option data-countryCode="SC" value="1758">St. Lucia (+1758)</option>
					<option data-countryCode="SD" value="249">Sudan (+249)</option>
					<option data-countryCode="SR" value="597">Suriname (+597)</option>
					<option data-countryCode="SZ" value="268">Swaziland (+268)</option>
					<option data-countryCode="SE" value="46">Sweden (+46)</option>
					<option data-countryCode="CH" value="41">Switzerland (+41)</option>
					<option data-countryCode="SI" value="963">Syria (+963)</option>
					<option data-countryCode="TW" value="886">Taiwan (+886)</option>
					<option data-countryCode="TJ" value="7">Tajikstan (+7)</option>
					<option data-countryCode="TH" value="66">Thailand (+66)</option>
					<option data-countryCode="TG" value="228">Togo (+228)</option>
					<option data-countryCode="TO" value="676">Tonga (+676)</option>
					<option data-countryCode="TT" value="1868">Trinidad &amp; Tobago (+1868)</option>
					<option data-countryCode="TN" value="216">Tunisia (+216)</option>
					<option data-countryCode="TR" value="90">Turkey (+90)</option>
					<option data-countryCode="TM" value="7">Turkmenistan (+7)</option>
					<option data-countryCode="TM" value="993">Turkmenistan (+993)</option>
					<option data-countryCode="TC" value="1649">Turks &amp; Caicos Islands (+1649)</option>
					<option data-countryCode="TV" value="688">Tuvalu (+688)</option>
					<option data-countryCode="UG" value="256">Uganda (+256)</option>
					<!-- <option data-countryCode="GB" value="44">UK (+44)</option> -->
					<option data-countryCode="UA" value="380">Ukraine (+380)</option>
					<option data-countryCode="AE" value="971">United Arab Emirates (+971)</option>
					<option data-countryCode="UY" value="598">Uruguay (+598)</option>
					<!-- <option data-countryCode="US" value="1">USA (+1)</option> -->
					<option data-countryCode="UZ" value="7">Uzbekistan (+7)</option>
					<option data-countryCode="VU" value="678">Vanuatu (+678)</option>
					<option data-countryCode="VA" value="379">Vatican City (+379)</option>
					<option data-countryCode="VE" value="58">Venezuela (+58)</option>
					<option data-countryCode="VN" value="84">Vietnam (+84)</option>
					<option data-countryCode="VG" value="84">Virgin Islands - British (+1284)</option>
					<option data-countryCode="VI" value="84">Virgin Islands - US (+1340)</option>
					<option data-countryCode="WF" value="681">Wallis &amp; Futuna (+681)</option>
					<option data-countryCode="YE" value="969">Yemen (North)(+969)</option>
					<option data-countryCode="YE" value="967">Yemen (South)(+967)</option>
					<option data-countryCode="ZM" value="260">Zambia (+260)</option>
					<option data-countryCode="ZW" value="263">Zimbabwe (+263)</option>
					</select>
					</div>
					
					<div class="col-xs-3">
						<label>Mobile No 2</label><input type="text" class="form-control required mobCodeClass "
							placeholder="mobile no 2" name="mon2" id="mno2" value="${mob}"  onChange="fetchData(this.value);" autocomplete="on">
					</div>
					<div class="col-xs-3">
						<label>Email</label><input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  class="form-control"
							placeholder="Email" name="email" id="email" value="abc@gmail.com" >
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
			      <select name="locality" id="locality" class="form-control">
			      <c:forEach var="loc" items="${localities}" varStatus="theCount">
							<option value="${loc.id}" selected>${loc.name}</option>
							
				</c:forEach>
						</select>
				</div>
				<input type="hidden"  name="hiddenCustId" id="hiddenCustId"  value="0" />
				
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
					
					<div align="right" style="width: 90%;">
				
									 Date:
										
			                        <input type="text"   name="datepicker" id="datepicker"  readonly="readonly" />
			   						
				  </div>
									<br>
					<div style="width: 90%;">
						<div align="center" id="student_attendance_filter_1" >
							<form action="#" id="bill_1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="palyzone" name="palyzone">
									<tbody>
									<tr>
									<th> Time </th>
								    <th>No Of Children </th>
								    <th>No Of Adult</th>
								    <th></th>
								   </tr>  
							
							
									
									<tr>
									
										<td align="left">
											<select name="sis_class_sections" id="time" class="form-control">
												
													<option value='30 min'>30 min</option>
											<option value='1 hour'>1 hour</option>
											<option value='1hour 30 min'>1 hour 30 min</option>
											<option value='2 hour'>2 hour</option>
										    <option value='2 hour 30 min'>2 hour 30 min</option>
										    <option value='2 hour 45 min'>2 hour 45 min</option>
										    <option value='3 hour'>3 hour</option>
										    <option value='3 hours 30 min'>3 hours 30 min</option>
										 	 <option value='4 hour'>4 hour </option>
										 	 <option value='4 hour 30 min'>4 hour 30 min</option>
										 	 <option value='5 hour'>5 hour</option>
										 	 <option value='5 hour 30 min'>5 hour 30 min</option>
										 	 <option value='6 hour'>6 hour</option>
										     <option value='6 hour 30 min'>6 hour 30 min</option>
										 	 <option value='7 hour'>7 hour</option>
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										
										<td align="left">
											<select name="sis_class_sections" id="child" class="form-control">
											
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													  <option value='5'>5</option>
													   <option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
													   
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
									
										<td align="left">
											<select id="adults" id="adults" class="form-control">
												

												
												<option value='0'>0</option>
												<option value='1'>1</option>
												<option value='2'>2</option>
												<option value='3'>3</option>
												<option value='4'>4</option>
												<option value='5'>5</option>
												<option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										
									<td align="left">
									<input type="hidden" id="lastid" value="1">
									<input type="hidden" id="deleterow1" value="">
					          <!--    <input type="Button" value="+" id="addPlayzone" onclick="addRow(this.value);" class="btn btn-primary btn-sm "/> -->
											
										</td>
									
									</tr>
									</tbody>
								</table>
								
										    <div align="right">
		       					 <input type="Button" value="Add (+)" id="palyzoneAdd" onclick="playzoneBill();deleteplayzone2(this)" class="btn btn-primary btn-sm "/>
		      </div>
							</form>
							
					
			
					
			</div>
						
		   
					
				 		<!-- <div id="student_attendance_filter_1_result" >
					</div> 
					 -->
					
						<div align="left" id="student_attendance_filter_2">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="rclimbing" name="rcliming">
									<tr>
								
								
								
								   <th>Time</th>
								   <th>No Of Children</th>								   
								   <th>No Of Adult</th>
								   <th></th>
								   
								   
								   
								   </tr>
									<tr>
										<td align="left">
											<select  id="time" class="form-control" >
											
											<option value='30 min'>30 min</option>
											<option value='1 hour'>1 hour</option>
											<option value='1hour 30 min'>1 hour 30 min</option>
											<option value='2 hour'>2 hour</option>
										    <option value='2 hour 30 min'>2 hour 30 min</option>
										    <option value='2 hour 45 min'>2 hour 45 min</option>
										    <option value='3 hour'>3 hour</option>
										    <option value='3 hours 30 min'>3 hours 30 min</option>
										 	 <option value='4 hour'>4 hour </option>
										 	 <option value='4 hour 30 min'>4 hour 30 min</option>
										 	 <option value='5 hour'>5 hour</option>
										 	 <option value='5 hour 30 min'>5 hour 30 min</option>
										 	 <option value='6 hour'>6 hour</option>
										     <option value='6 hour 30 min'>6 hour 30 min</option>
										 	 <option value='7 hour'>7 hour</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select  id="child"" class="form-control">
												
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
													   <option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
										<td align="left">
											<select id="adults " class="form-control">
											<option value='0'>0</option>
												
												<option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
													   <option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
												<optgroup id="sis_classes_filter1">
												</optgroup>
											</select>
										</td>
									
										
							<td align="left">
									<input type="hidden" id="lastid" value="1">
									<input type="hidden" id="deleterow1" value="">
					             	<!-- <input type="Button" value="+" id="addRclimbimbing" onclick="rclimingAddRow(this.value);" class="btn btn-primary btn-sm "/> -->
											
						  	</td>
									
											
								</tr>
								</table>
								
								<div align="right">
		     						<input type="Button" value="Add" id="add" onclick="rclimbingBill();deletRclimbing2(this) " class="btn btn-primary btn-sm "/>
		    					</div>
							    </form>
							
			
						</div>
						
						
						
						
						

						
						
						<div align="left" id="student_attendance_filter_3">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="visitpass" >
									<tr align="center">
									    <th>Pass Type</th>
										<th>Pass Number</th>
										<th>No Of Adult </th>
								         <th></th>
								   
								    
								 
								   </tr>
									<tr>
									       <td align="left">
											 <select  id="pass" class="form-control">
												
													<c:forEach var="vis" items="${visitpasslist}"
																varStatus="theCount">
																<option value="${vis.visitpassId}" selected>${vis.passTypa}</option>
																</c:forEach>
													
												
													  
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select> 
											
										</td>
									
									
										<td align="left">
											<!-- <select  id="time">
												
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select> -->
											<input type="text" class="form-control required  visitpassauto" id="visitpassauto" name="visitpassauto" value="0"  autocomplete="on" onblur="visitPass(this.value);" onChange="visitPass(this.value);">
										</td>
										<td align="left">
											<select  id="adults" class="form-control">
												<option value='0'>0</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
													   <option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								<td align="left">
									<input type="hidden" id="lastid" value="1">
									<input type="hidden" id="deleterow1" value="">
					             	<!-- <input type="Button" value="+" id="addvisitpass"  onclick="visitpassaddRow(this.value);" class="btn btn-primary btn-sm "/> -->
											
										</td>
								</tr>
									
									
								</table>
								<div align="right">
		       					 <input type="Button" value="Add" id="add" onclick="visitPassBill();deletVisitpass2(this)  " class="btn btn-primary btn-sm "/>
		     					 </div>
							</form>
						</div>
						<div align="left" id="student_attendance_filter_4">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="monthlypass">
									<tr>
								<th>Pass Type</th>
										<th>Pass Number</th>
										<th>No Of Adult </th>
								         <th></th>	
								
								   </tr>
									<tr>
								
										 <td align="left">
											 <select id="pass" class="form-control">
												<c:forEach var="vis" items="${monthlypasslist}"
																varStatus="theCount">
																<option value="${vis.mpnthlyPassId}" selected>${vis.monpasstype}</option>
																</c:forEach>
											</select>	 
											
													
											</td>	
													  
									<td align="left">
											<!-- <select id="time" class="form-control">
												<option value='30'>30 Min</option>
												<option value='60'>1 Hour</option>
												<option value='90'>1.5 Hour</option>
												<option value='120'>2 Hour</option>
												<option value='150'>other</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
												
											</select> -->
											<input type="text" class="form-control required  monthpassauto" id="monthpass" name="monthpass" value="0"  autocomplete="on" onblur="monthPass(this.value);" onChange="monthPass(this.value);">
										</td>
										<td align="left">
											<select  id="adults " class="form-control">
												<option value='0'>0</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													 <option value='4'>4</option>
													 <option value='5'>5</option>
													 <option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										
										<td align="left">
											<input type="hidden" id="lastid" value="1">
									        <input type="hidden" id="deleterow1" value="">
					           			<!--  <input type="Button" value="+" id="addmonthlypass" onclick="monthlypassaddRow(this.value);" class="btn btn-primary btn-sm "/> -->
											
										</td>
										
										
									</tr>
									
									
								</table>
								<div align="right">
		       					 <input type="Button" value="Add" id="add" onclick="monthlyPassBill();deletMonthlypass2(this) " class="btn btn-primary btn-sm "/>
		     					 </div>
							</form>
							     
						</div>
						
						
						<div align="left" id="student_attendance_filter_5">
							
							<div class="row">		
							<div class="col-xs-3">
						<label>Enter Advance Booking Id</label>
						<input type="text" class="form-control required  AdvanceBirthdayBookingauto" value="0"
							placeholder="0" name="birthAdvanceBook" id="birthAdvanceBook" autocomplete="on" onblur="return advanceBirtBooking(this.value);" onChange="return advanceBirtBooking(this.value);">
						
						<input type="hidden" name="birthAdvanceBookHidden" id="birthAdvanceBookHidden" value="0">
						</div>
					
					</div>
							
							<div class="col-xs-3">
							
							<input type="hidden" id="advBirthHiddenChild" name="advBirthHiddenChild"  value="0">
							<input type="hidden" id="advBirthHiddenAdult" name="advBirthHiddenAdult" value="0">
							<input type="hidden" id="remainingHiddenAmount" name="remainingHiddenAmount">
							<input type="hidden" id="remainingHiddenPaidAmount" name="remainingHiddenPaidAmount">
							
							</div>
					
					
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="birthday">
									<tr>
									<th>Birthday Pack</th>
									
								    <th>No Of Children</th>
									<th>No Of Adult</th>
									<th></th>
								   </tr>
									<tr>
									
										<td align="left">
											<select id="package" name="package" class="form-control">
												
													<option value='1'>package 1</option>
													 <option value='2'>package 2</option>
													
													 <optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<!-- <select id="time" class="form-control">
												
												     <option value='60'>2 hours</option>
													 <option value='150'>2.5 hours</option>
													 <option value='180'>3 hours</option>
													  
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select> -->
											<input type="number" class="form-control required " style="height: 30px;" id="birthDayChild" name="birthDayChild" value="0"  autocomplete="on" min="1" max="100"  onblur="BirthDayPackChild(this.value);"  onChange="BirthDayPackChild(this.value);">
										</td>
								
										<td align="left">
											<!-- <select id="adults" class="form-control" >
												<option value='0'>0</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
												</optgroup>
											</select> -->
											<input type="number" class="form-control required" style="height: 30px;" id="birthDayAdult" name="birthDayAdult" value="0"  autocomplete="on" min="1" max="100" onblur="BirthDayPackAdult(this.value);"  onChange="BirthDayPackAdult(this.value);">
										</td>
									
										
										
										<td align="left">
										<input type="hidden" id="lastid" value="1">
										<input type="hidden" id="deleterow1" value="">
					           			<!--  <input type="Button" value="+" id="addbirthday" onclick=" addbirthdayRow(this.value);" class="btn btn-primary btn-sm "/> -->
											
										</td>
										
										
									</tr>
									
									
								</table>
								<div align="right">
		       					 <input type="Button" value="Add" id="add" onclick="birthdayBill();deletBirthday2(this) " class="btn btn-primary btn-sm "/>
		     					 </div>
							</form>
							
						</div>
						
						
						
						<div align="left" id="student_attendance_filter_6">
							<form action="#" id="sis_filter_form1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="rock">
									<tr>
									
									
									<th>No Of Attempts</th>
								
									<th>Extra Adult</th>
								    <th></th>
								    <th></th>
						
								 
								   </tr>
									<tr>
										<td align="left">
											<select id="attempts" class="form-control">
												
													<option value='2'>2</option>
													 <option value='4'>4</option>
													 <option value='6'>6</option>
													  <option value='8'>8</option>
													   <option value='10'>10</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
										<td align="left">
											<select id="adults" class="form-control" >
												<option value='0'>0</option>
												     <option value='1'>1</option>
													 <option value='2'>2</option>
													 <option value='3'>3</option>
													  <option value='4'>4</option>
													   <option value='5'>5</option>
													   <option value='6'>6</option>
													   <option value='7'>7</option>
													   <option value='8'>8</option>
													   <option value='9'>9</option>
													   <option value='10'>10</option>
													   <option value='11'>11</option>
													   <option value='12'>12</option>
													   <option value='13'>13</option>
													   <option value='14'>14</option>
													   <option value='15'>15</option>
													   <option value='16'>16</option>
													   <option value='17'>17</option>
													   <option value='18'>18</option>
													   <option value='19'>19</option>
													   <option value='20'>20</option>
													   <option value='21'>21</option>
													   <option value='22'>22</option>
													   <option value='23'>23</option>
													   <option value='24'>24</option>
													   <option value='25'>25</option>
													   <option value='26'>26</option>
													   <option value='27'>27</option>
													   <option value='28'>28</option>
													   <option value='29'>29</option>
													   <option value='30'>30</option>
													   <option value='31'>31</option>
													   <option value='32'>32</option>
													   <option value='33'>33</option>
													   <option value='34'>34</option>
													   <option value='35'>35</option>
													   <option value='36'>36</option>
													   <option value='37'>37</option>
													   <option value='38'>38</option>
													   <option value='39'>39</option>
													   <option value='40'>40</option>
													   <option value='41'>41</option>
													   <option value='42'>42</option>
													   <option value='43'>43</option>
												
												<optgroup   id="sis_class_sections_filter1">
												</optgroup>
											</select>
										</td>
								
										<td align="left">
											
										</td>
									
										<td align="left">
										<input type="hidden" id="lastid" value="1">
										<input type="hidden" id="deleterow1" value="">
					           			<!--  <input type="Button" value="+" id="addrock" onclick="rockaddRow(this.value);" class="btn btn-primary btn-sm "/> -->
											
										</td>
										
										
									</tr>
									
									
								</table>
								<div align="right">
		       					 <input type="Button" value="Add" id="add" onclick="rockBill(); deleteRock2(this);" class="btn btn-primary btn-sm "/>
		     					 </div>
						</div>
							</form>
							
							
						
						<br><br>
						
						
						
						<div class="table-responsive" >
                                        <table class="table table-bordered table-hover table-striped  pretty" id="dataTable1">
                                            <thead>
                                                    <tr>
                                                    <th>Sr.No</th>
                                                     <th >Time</th>
                                                     <th>No Of Child</th>
                                                     <th >No Of Adult </th>
													 <th> No Of Attempt</th>
                                                      <th>Type </th>
                                                      <th>Pass Type</th>
                                                      <th>Pass Number</th>
                                                      <th>Amount</th>
                                                      <th></th>
                                                   
                                                    </tr>
                                             </thead>
                                        
								             <tbody>
										
		  								 		 <tr>
                                                     <td></td> 
                                                     <td></td>
		                            				<td></td>
		                            				<td></td>
		                          					<td></td>
		                            				<td></td>
		                            				<td></td>
		                            				<td>
		                            				<input type="hidden" id="lastid" value="1">
													<input type="hidden" id="deleterow1" value="">
		                            				</td>
                                                </tr>
                                          
                                            </tbody>
                                        </table>
                                        	
                                        
                                    
                                    </div>
						
						<br><br>
					
					<!-- <!-- Bill Formats -->
					
					
					<div id="container-fluid" >
        <div id="row-fluid" >     <!-- <div class="col-sm-5"> -->
       
        <div class="span2">
              
                <!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->
                
              
             	
             	 
             	 <form action="#" id="billFormat">
             	<div class="row">
					<div class="col-xs-3">
						<label>Amount</label>
						<input type="text" class="form-control"
						value="0"	placeholder="0" name="BillAmount" id="BillAmount" readonly="readonly" >
						
						
					</div>


					<!-- <div class="col-xs-3">
						<label>Discount In Rs</label>
						<input type="text" class="form-control"
							 name="Discount" id="Discount" value="0" onchange="return hiddenDiscount(); ">
							 
						
						<input type="hidden" name="HiddenDiscount" id="HiddenDiscount" value="0">
						  
					</div> -->
					
					<div class="col-xs-3">
						<label>Discount In Percent (%)</label>
						<input type="text" class="form-control"
							 name="Discount" id="Discount" value="0" onchange="return hiddenDiscountInPercentage(this.value);">
						
						  
					</div>
					
					
					
					<div class="col-xs-3">
						<label>Other Charges</label> <input type="text" class="form-control"
							name="OtherCharges" id="OtherCharges" value="0"  onchange="return hiddenOtherCharges();"	> 
							
							
						<input type="hidden" name="HiddenOtherCharges" id="HiddenOtherCharges" value="0">
					</div>
					
					<div class="col-xs-3">
						<label>OSF Handling Charges</label> <input type="text" class="form-control"
							name="osfhandling" id="osfhandling" value="0"  onchange="return hiddenosfhandling();"	> 
							
							
						<input type="hidden" name="Hiddenosfhandling" id="Hiddenosfhandling" value="0">
					</div>
					
					 <div class="col-xs-3">
						<label>Service Tax</label>
						<input type="text" class="form-control"
							placeholder="14.5" name="serviceTax" id="serviceTax" readonly="readonly" value="14.5">
						 
					</div>
					
					<div class="col-xs-3">
						<label>Paid Amount</label>
						<input type="text" class="form-control"
							placeholder="0" name="paidAmount" id="paidAmount" readonly="readonly" value="0" >
						 
					</div>

					
				
				

				</div>
			<br><br>
					<div class="col-xs-4">
					</div>
				
					
				</form>
				
				
		       		
         </div>
        </div>
    </div>
					
						
						<input type="hidden" name="totalAmountOfBill" id="totalAmountOfBill" value="0" >
				<div class="col-xs-3">
				<input type="Button"  value="Pay Amount" id="saveandprint" onclick="payMoney();" class="btn btn-primary btn-sm center-block "/>
			 	</div>
				<div class="col-xs-3">
				<input type="Button"  value="Save And Print Quotation" id="saveandprintQuot" onclick="return saveAndPrintBill();" class="btn btn-primary btn-sm  "/>
			 
				</div>		
					
					<!-- End of bill Format -->
				</div>
					
					    <script>
         // var tablerow=0;
          function payMoney(){
        
        	
        			document.getElementById('light').style.display = 'block';
        			document.getElementById('fade').style.display = 'block';
        			switchViewPayments('cashview', this);
        	
          }
          </script>
			
			
			<div id="lightbill" class="white_content"></div>
	<div id="fadebill" class="black_overlay"></div>			
					
		<!--pop up code start for cubic feet and cubic meter -->
	<div id="light" class="white_content" style="width:500px;min-height:500px!important;
		margin-left: 492px !important;overflow:hidden!important;border:20px solid #ffffff!important;">
<form>
	<div class="tab-content">
			
			<!-- VIEW STUDENT SPECIFIC ATTENDANCE DETAILS -->
			<div class="tab-pane fade in active" id="student_specific_details_tab" >
				<div  style="padding: 10px;">
					<div>
						<ul class="pagination">
						
						  <li class="active" onclick="switchViewPayments('cashview', this);"><a href="#"> By Cash</a></li>
						 
						  <li onclick="switchViewPayments('chequeview', this);"><a href="#">By Cheque</a></li>
						  <li onclick="switchViewPayments('creditview', this);"><a href="#">By Credit Card</a></li>
						 </ul> 
					</div>
				
					<div align="center" id="cashview" >
					<table>
					<tr>
					<!-- <td><label>Cash Amount</label></td>
					<td><input type="text"  id="cash"  name="cash" onkeypress="calculatePaidAmount();" value="0" onkeyup="calculatePaidAmount();"/></td> -->
					</tr>
			
					</table>
					
					
					</div>
					
					
					<div align="center" id="chequeview" >
			
					<table>
					<tr>
					<td><label>Cheque No</label></td>
					<td> 	<input type="text"  id="chequeNo"  name="chequeNo"  value="0" /></td>
					</tr>
					
					<tr>
					<td><label>Bank Name</label></td>
					<td>	<input type="text"  id="chequeBank"  name="chequeBank" value="0" /></td>
					</tr>
			
					<!-- <tr>
					<td><label>Amount</label></td>
					<td>	<input type="text"  id="chequeAmount"  name="chequeAmount" value="0"  onkeyup="calculatePaidAmount();" onkeypress="calculatePaidAmount();"/></td>
					</tr> -->
					</table>				
							
							
					</div>
					
					
					<div align="center" id="creditview">
																<br>
																<table>
																	<tr>
																		<!-- <td><label>Cash Amount</label></td>
																		<td><input type="text" id="creditcash"  value="0"
																			name="creditcash" onchange="calculatePaidAmount();" onkeypress="calculatePaidAmount();"
																			onkeyup="calculatePaidAmount();" /></td> -->
																	</tr>

																</table>


															</div>
					
					</div>
					</div>
					</div>
					
			
	
	
	<div style="margin-top:20px;">
	<br><br>
<div class="col-xs-6">
						<label>Payment Mode</label>
						<input type="text" class="form-control"
							 name="payMode" id="payMode" value="0" readonly="readonly" >
						
						<input type="hidden" name="HiddenDiscount" id="HiddenDiscount" value="0">
						  
					</div>
					<div class="col-xs-6">
					<label>Total Amount</label>
	<div class="input-group">
<div class="input-group-addon">Rs.</div>
<input id="payingAmt" class="form-control" type="text" placeholder="Amount" id="payingAmt" name="payingAmt" readonly="readonly">
</div>
</div>

<br><br><br><br>
<script>
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
	<input type="button" onClick="closePopUp(),addPayingAmount();"value="OK" class="btn btn_danger"  />
	
	
	
	</div>				
	</form>
</div>
	<div id="fade" class="black_overlay"></div>	
						
						
						
					</div>
				
			</div>

			<!-- VIEW CLASS SPECIFIC ATTENDANCE DETAILS -->
			
			<div class="tab-pane fade" id="class_specific_details_tab">
				<div align="center" style="padding: 10px;">
					<div>
						<ul class="pagination">
					
						  <li class="active" onclick="switchView('class_attendance_filter_1', this);"><a href="#">Customers</a></li>
						
						<c:forEach  var="permlist" items="${permissionList}">
						<c:if test="${permlist.type == 14}">
						  <li onclick="switchView('view_feedback', this);"><a href="#">View FeedBack</a></li>
						  </c:if>
						  </c:forEach>
						
						</ul>
					</div>




					<div style="width: 100%;">
					<c:forEach  var="permlist" items="${permissionList}">
					<c:if test="${permlist.type == 8}">
					
					
						<div align="left" id="class_attendance_filter_1">
							<div id="" >
    <div class="block users scrollBox table-responsive">
    
				<!-- put error/success messages here  -->
					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable"
						id="failselect">
						 <button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Message Not send SuccessFully.
					</div>
					<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="messageselect">
							 <button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Enter Message Or Email.
					</div>
					
					<div style="margin-top: 20px;"
							class="alert alert-danger alert-dismissable"
							id="userselect">
							 <button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
							<strong>Warning: </strong>Please Select At Least One Customer.
					</div>
				
				<div style="margin-top: 20px;"
							class="alert alert-success alert-dismissable"
							id="successselect">
							<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
					<strong>Warning: </strong> Message Send SuccessFully.
				</div>
				
		</div>
				
				  <script type="text/javascript">
	               $("#successselect").hide();
	               $("#failselect").hide();
	               $("#messageselect").hide();
	               $("#userselect").hide();
	             
				 </script>
	
		<script type="text/javascript">
		var customerMarketingId=new Array();
		</script>
					 
 <c:forEach  var="cust" items="${customerlist}">
		<script>
		customerMarketingId.push("${cust.cid}");
					
		</script>
</c:forEach>


 <div id="container-fluid" >
        <div id="row-fluid" >    
       
        <div class="span2">
              
              
             	    
             	    <div style="width: 80%;" class="table-responsive">
             	     <div class="col-xs-3">
             	     </div>
             	    <div class="col-xs-3">
             	    
             	    <label class="">From Date:</label>
             	    <input type="text"  class="form-control" name="datepicker" id="datepickerMark1"  readonly="readonly" />
             	    </div>
             	    <div class="col-xs-3">
             	   <label class="">To Date:</label>
             	     <input type="text"  class="form-control" name="datepicker" id="datepickerMark2"  readonly="readonly" />
             	   </div>
             	    <div class="col-xs-3">
             	    <label class="">&nbsp;&nbsp;</label>
             	     <input type="button"   value="Search" onclick="searchCustomDetails();"  class="btn btn-primary btn-sm  "/>
             	   </div>
             	    <form id="marketingForm">
             	   <%--  <c:forEach  var="permlist" items="${permissionList}">
					<c:if test="${permlist.type == 8}"> --%>
             	    <table class="table table-bordered table-hover table-striped  pretty"  id="dataTableMark">
                                            <thead>
                                                    <tr>
                                                    	<td  colspan="7" align="right" >  
                                                    	<input type="button" value="Mark All" id="markAll" name="markAll" onclick="selectAll();"> 
                                                    	<input type="text" name="myInputTextField" id="myInputTextField"  >
                                                    	
                                                    </td>
                                                  
                                                  </tr>
                                                  
                                                    <tr>
                                                    <th style="width: 10%;">Select </th>
                                                    <th>Date</th>
                                                  
                                                     <th >Name</th>
                                                     <th>Mob</th>
                                                     <th >Email </th>
                                                     <th >Locality </th>
													</tr>
													
                                             </thead>
                                        
								             <tbody>
										<c:set var="dateTempVar" value="" />
										<%int i=1; %>
		  						<c:forEach var="cust" items="${customerlist}" varStatus="theCount">  
											<tr>
													<td>
													<input type="checkbox" name="${cust.cid}" value="${cust.countryCodeMobile1}${cust.mob1}-${cust.email}" id=""></td>
													
													
													<c:choose>
													<c:when test="${dateTempVar == ''}">
												   	<c:set var="dateTempVar" value="${cust.lastComingDate}" />
												   	<td><fmt:formatDate type="date" value="${cust.lastComingDate}" /> </td>
												     <%--  <td><%=i %></td> --%>
												      <%i++; %>
												   </c:when>
												   <c:otherwise>
												    
												    <!--  -->
												    
												    <c:choose>
													<c:when test="${dateTempVar == cust.lastComingDate}">
												   	<c:set var="dateTempVar" value="${cust.lastComingDate}" />
												      <td><%=i %></td>
												      <%i++; %>
												   </c:when>
												   <c:otherwise>
												      <c:set var="dateTempVar" value="${cust.lastComingDate}" />
												      <% i=1; %>
												      	<td><fmt:formatDate type="date" value="${cust.lastComingDate}" /> </td>
												      <%-- <td><%=i %></td> --%>
												      <%i++; %>  
												   </c:otherwise>
													</c:choose>
												    <!--  -->
												    
												   </c:otherwise>
													</c:choose>
													
													<td>${cust.childname} &nbsp;${cust.lastName}</td>
													<td>${cust.mob1}</td>
													<td>${cust.email}</td>			
													<td>${cust.locality.name}</td>		  											 
		   											
		   											
												 												
										</tr>
								</c:forEach>
                                          
                                            </tbody>
                                        </table>
             	   
             	    
             	    <br>
             	    
             		<div class="col-xs-8 ">
						<label>Message:</label>
						 	<textarea  rows="6" cols="10" 
							class="form-control" placeholder="Message"
							name="message" id="message"  >
							</textarea>
	 	<br> 	
			      	</div>
			     
			      	<div class="col-xs-8 ">
			      	<input  type="checkbox" value="sms" name="type" class="chk" />Message 
			      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      	<input  type="checkbox" value="email" name="type" class="chk"/>Email
			      	<br> 
			      	<br>
			      </div>
			      	<div class="col-xs-8 " align="center">
			      	<input type="reset" value="clear" class="btn btn-primary btn-sm  " />
						  	 
						  	 &nbsp;
					 <input type="Button" value="submit" id="submit" class="btn btn-primary btn-sm " onclick="sendEmailOrSms();"/>
			      	
			      	
			      	</div>

             	    
             	    </form>
             	    
             	    </div>
             	    
             	 
             	
		       		
         </div>
        </div>
    </div>
						
				</div>
			</div>
			
			 </c:if>
             	    </c:forEach>
             	    
             	    
             	    
		</div>
		
		
		<c:forEach  var="permlist" items="${permissionList}">
						<c:if test="${permlist.type == 14}">
		<div align="left" id="view_feedback">
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
			
		<script type="text/javascript">
		
		
				 $('#FeedbackdataTable').dataTable({
					
					"sPaginationType" : "full_numbers"
			
				
						//$(document).ready(function() {
					 		
				});  
				//var table = $('#dataTable2').dataTable();
			
					
					
			</script>
		
	
		</div>
		</c:if>
		</c:forEach>
		</div>
		</div>
		
			
			
			
			
			
			<!-- Expense revenue tab -->
			
			<div class="tab-pane fade" id="Expense_Revenue_details_tab" >
				<div align="center" style="padding: 10px;">
					<div>
						<ul class="pagination">
						  <li class="active" onclick="switchView('expense', this);"><a href="#">Add Expense</a></li>
						  <c:forEach  var="permlist" items="${permissionList}">
									
						<c:if test="${permlist.type == 13}">
						  <li onclick="switchView('revenue', this);"><a href="#">View Expense and Revenue</a></li>
						  </c:if>
						  </c:forEach>
						   
						</ul>
					</div>
					
					
			
									<br>
					<div style="width: 90%;">
						<div align="center" id="expense" >
							<form action="#" id="bill_1" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="expenseType" name="expenseType">
									<tbody>
									<tr>
									<th> Expense types </th>
								    <th>Amount </th>
								    <th>Description</th>
								
								     <th></th>
								   </tr>  
							
							
									
									<tr>
									
										<td align="left">
											<select name="sis_class_sections" id="time" class="form-control">
												
													<option value='Staff salary'>Staff salary</option>
											<option value='Staff welfare'>Staff welfare</option>
											<option value='Rent'>Rent</option>
											<option value='Electricity'>Electricity</option>
										    <option value='Food charges'>Food charges</option>
										    <option value='Material'>Material</option>
										    <option value='Maintenance'>Maintenance</option>
										    <option value='Miscellaneous'>Miscellaneous</option>
										    <option value='Conveyance'>Conveyance</option>
										    <option value='Office Expense'>Office Expense</option>
										    <option value='Labour Charges'>Labour Charges</option>
										    <option value='Stationery'>Stationery</option>
										    <option value='Business Promotion Expenses'>Business Promotion Expenses</option>
										    <option value='Entertainment Expenses'>Entertainment Expenses</option>
										    <option value='Other'>Other</option>
										    
										    <!-- 
												<optgroup   id="sis_class_sections_filter1">
												</optgroup> -->
											</select>
										</td>
										
										<td align="center">
										<input type="number"  id="expenseAmount" class="form-control"   value="0" min="0" placeholder="0">
											
											
										</td>
								
									<td align="center">
										<input type="text" value=""  class="form-control"  id="expenseDescription">
											
											
										</td>
								
	
									
										
									<td align="left">
									<input type="hidden" id="lastid" value="1">
									<input type="hidden" id="deleterow1" value="">
					            <input type="Button" value="+" id="addPlayzone" onclick="addthisRowexpRev(this.value);" class="btn btn-primary btn-sm "/> 
											
										</td>
									
									</tr>
									</tbody>
								</table>
								
										    <div align="right">
		       					 <input type="Button" value="Save expenses" id="expenseTypeAdd" onclick="calculate(),deleteRowExpense(this);" class="btn btn-primary btn-sm "/>
		      </div>
							</form>
							
					
			
					
			</div>
						
		   
		   
		   
		   <div style="width: 90%;">
						<div align="left" id="revenue" >
							<form action="#" id="bill_" ><!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
								<table class="table" id="paly" name="paly">
									<tbody>
									 <tr>
									  <th>Start date </th>
									 
								      <th>End date </th>
								     </tr>  
								     
								    
								   <tr align="left">
							         <td align="center">
										
										<div class="col-xs-4" align="center">
						
					                      
											</div>
										<div class="col-xs-4" align="center">
						
					                      <input type="text"  class="form-control" name="datepicker1" id="datepickerRev"  readonly="readonly" />	
											</div>
										</td>
											
											
										<td align="center">
										
										<div class="col-xs-4" align="center">
						
					                      
											</div>
										<div class="col-xs-4" align="center">
						
					                      <input type="text"  class="form-control" name="datepicker" id="datepickerRev1"  readonly="readonly" />	
											</div>
										</td>
									
										
									
									
									</tr>
									</tbody>
								</table>
									
									
									
										
										
								
	
										
							
								
										    <div align="right">
		       					 <input type="Button" value="Show expenses" id="palyc" onclick="showexp()" class="btn btn-primary btn-sm "/>
		       					 <!-- <input type="Button" value="Show revenue" id="palyc" onclick="showrev()" class="btn btn-primary btn-sm "/> -->
		      </div>
		      
		      
		      
		     <div id="lightbill1" ></div>
				
		      
		      </div>
		      
		      
		      
							
					
			
					
			</div>
						
		   
		   
		   
		   
					
					
					
					<div id="container-fluid" >
        <div id="row-fluid" >     <!-- <div class="col-sm-5"> -->
       
        <div class="span2">
              
              
					</div>
				
			</div>

					</div>
				</div>
			</div>
			
			
		</div>
			<!-- Expense revenue tab End -->
			
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
    	dateFormat: 'dd/mm/yy',
        changeMonth: true,
        changeYear: true,
        yearRange: '1950:2050'
        
    }).datepicker("setDate", new Date());
});
 
  </script> 
  
  	 <script> 
  
  $(function () {
    $("#datepicker").datepicker({
    	dateFormat: 'dd/mm/yy',
        changeMonth: true,
        changeYear: true,
        yearRange: '1950:2050'
    }).datepicker("setDate", new Date());
});
 
  
 /*  
  var currentDate = new Date();  
  $("#datepicker").datepicker({ 
	  dateFormat: 'dd/mm/yy'}
  ).datepicker("setDate", new Date());
  $("#datepicker1").datepicker({ dateFormat: 'dd/mm/yy'}).datepicker("setDate", new Date()); */
 
  
  </script> 
 

</body>

</html>



		
<script>

$("#teacher_distribute_product").hide();
$("#class_distribute_product").hide();
$("#expense").hide();
$("#revenue").hide();
$("#class_distribute_product").hide();


function hideAllViews() {
	$("#student_distribute_product").hide();
	$("#teacher_distribute_product").hide();
	$("#staff_distribute_product").hide();
	$("#class_distribute_product").hide();
	$("#Expense_Revenue_details_tab").hide();
	
	/* $("#expense").hide();
	$("#revenue").hide(); */
	
}

function 	hideAllpayments(){
	$("#cashview").hide();
	$("#chequeview").hide();
	$("#creditview").hide();
	
}


function switchViewPayments(currentSubTabView, currentLi){
	hideAllpayments(currentSubTabView);
	
	$("#payingAmt").val($("#BillAmount").val());
	
	 if(currentSubTabView=='cashview'){
		 $("#payMode").val("CASH");
		 
	}
	if(currentSubTabView=='chequeview'){
		$("#payMode").val("CHEQUE");
	}
	if(currentSubTabView=='creditview'){
		$("#payMode").val("CREDIT");
	} 
	$("#"+currentSubTabView).show();
	
	$(".pagination li").removeClass("active");
	
	$(currentLi).addClass("active");
	
}
function switchView(currentSubTabView, currentLi) {
	

	hideAllViews();
	
	
	$("#"+currentSubTabView).show();
	
	$(".pagination li").removeClass("active");
	
	$(currentLi).addClass("active");
}
function loadClasses(classSelectionBoxId) {
$("#"+classSelectionBoxId).html("");

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



$("#expense").hide();
$("#revenue").hide();
$("#class_attendance_filter_1").hide();
$("#view_feedback").hide();
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
/* $("#expense").hide();
$("#revenue").hide(); */

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
$('#dataTable1').dataTable({
	
	  "sPaginationType": "full_numbers",
	  "bPaginate": false,
	    "bLengthChange": false,
	    "bFilter": true,
	    "bInfo": false,
	    "bAutoWidth": false


});
	


	$('#dataTable2').dataTable({
		"bJQueryUI" : true,
		"sPaginationType" : "full_numbers",
		"sDom" : 'T<"clear">lfrtip<"clear spacer">T'

	});
	
	
	  
	
	
		
</script>

<script>
var table = $('#dataTable1').DataTable();

$('#dataTable1 tbody').on( 'click', 'img.icon-delete', function () {
    table
        .row( $(this).parents('tr') )
        .remove()
        .draw();
} );





var oTable = $('#dataTableMark').DataTable({
	"sPaginationType" : "full_numbers",
	"lengthMenu": [ [100, 150, 200, 250, -1], [100, 150, 200, 250, "All"] ]
});  

$('#myInputTextField').keyup(function(){
   oTable.search( $(this).val() ).draw();
})

</script>

 	 <script> 
  

  
  
  var currentDate = new Date();  
  $("#datepickerRev").datepicker({
	  dateFormat: 'dd/mm/yy',
	  changeMonth: true,
      changeYear: true,
      yearRange: '1950:2050'
	  }).datepicker("setDate", new Date());
  
  $("#datepickerRev1").datepicker({
	  dateFormat: 'dd/mm/yy',
	  changeMonth: true,
      changeYear: true,
      yearRange: '1950:2050'
	  }).datepicker("setDate", new Date());
  
  
  $("#datepickerRev1").datepicker({
	  dateFormat: 'dd/mm/yy',
	  changeMonth: true,
      changeYear: true,
      yearRange: '1950:2050'
	  }).datepicker("setDate", new Date());
  
  $("#datepickerMark1").datepicker({
	  dateFormat: 'dd/mm/yy',
	  changeMonth: true,
      changeYear: true,
      yearRange: '1950:2050'
	  }).datepicker("setDate", new Date());
  
  
  $("#datepickerMark2").datepicker({
	  dateFormat: 'dd/mm/yy',
	  changeMonth: true,
      changeYear: true,
      yearRange: '1950:2050'
	  }).datepicker("setDate", new Date());
  
  
  
  
  </script> 


 <!-- it will hide the search option -->
     <style type="text/css">
	 .dataTables_filter {
	 display: none;
	 }
	 </style> 
  
 <!-- expense revenue -->

<script type="text/javascript">
function calculate()
{
	//document.open();
	
	//var rows = table.getElementsByTagName('tr');

	//document.getElementById("time").innerHTML ="<h1>Hello World</h1>";
	
//var tabl = document.getElementById('expenseType');
//alert( tabl.rows.length);
//alert('end');

	 //document.write("<h1>Hello World</h1>");
	 //document.write("hjjjjjjjjjjjjjjjjjjjjjkl");
	var i=0;
	var expType =new  Array();
	var expAmt =new  Array();
	var expDesc =new  Array();
	 $("#expenseType tr").each(function() {
       	if(i==0){
       		
       	}else{
       	    var val=$(this).find("td:first").find('select option:selected').val();	
	          var val1=$(this).find("td:first").next().find('input').val();
	          var val2=$(this).find("td:first").next().next().find('input').val();
	          
	          if(val1==" "){
	        	  val1=0;
	          }
	          expType.push(val)
	          expAmt.push(val1)
	          expDesc.push(val2)
	          
       	}
       	
       	
       	  i++;
      
	 });
	 

    	$.ajax({
			url : 'addExpense',
			type : 'GET',
		
			data :{exp:expType,amt:expAmt,desc:expDesc},
			success:function(data) {
				
			/* 	$("#light").html(data); */
				  $("#expenseSaved").slideDown();
				  $("#expenseSaved").fadeOut(3000);
	     	
				  $("#expenseDescription").val("");
				  
				  $("#expenseAmount").val("");
				  
				     
				  
	     		
			},
			error : function(xhr, ajaxOptions, thrownError) {
			//	alert("err" + thrownError + xhr.responseText);
				console.log("Error In saveChatForfeedbackcom" + thrownError + xhr.responseText);
			}
		});	
}
function reload(){
/* 	location.reload(true); */
	var r1 = $('#dataTable1 tbody tr').length;

	for ( var i = r1; i > 1; i--) {
		document.getElementById("dataTable1").deleteRow(i);
		
	} 
	totalamountwithservicetax=0;
 $("#quotId").slideDown();
 $("#quotId").fadeOut(4000);
 
 billtime=new Array();
 billnoOfChild =new Array();
 billnoOfAdult =new Array(); 
 billnoOfAttempt=new Array();
 billtype =new Array();
 billPassType=new Array();
 billamount=new Array();
 passNumber =new Array();
 
}
$("#countryCodeMob1").val("91");
$("#countryCodeMob2").val("91");
	</script>

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 