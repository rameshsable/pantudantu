
/*function saveAdvanceBooking()
 {


 this is customer data
 var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
 var cname= $("#cname").val();
 var lname= $("#lname").val();
 var fathername= $("#fathername").val();
 var mothername= $("#mothername").val();
 var email= $("#email").val();
 var mno1= $("#mno1").val();
 var mno2= $("#mno2").val();
 var locality= $("#locality").val();
 var address= $("#address").val();
 var datepicker12= $("#datepicker12").val();

 End customer data

 var packageName = $("#birtdaytype").val();
 var date = $("#datepicker3").val();
 var startTime = $("#startTime").val();
 var endTime = $("#endTime").val();
 var child=$("#noofchild").val();
 var adults=$("#noofadult").val();
 var totalAmount=$("#amount").val();
 var paidAmount=$("#paidAmount").val();
 var id1=$("#id1").val();

 PayMode Mode And Details

 var cash=$("#cash").val();
 var BankName=$("#chequeBank").val();
 var checqueNum=$("#chequeNo").val();
 var checkAmount=$("#chequeAmount").val();
 var creditAmount=$("#creditcash").val();


 alert(cash);
 alert(BankName);
 alert(checqueNum);
 alert(checkAmount);
 alert(creditAmount);



 if($('#cname').val() == ""){

 $("#cnameselect").slideDown();
 $("#cnameselect").fadeOut(3000);  
 return false;
 }


 if($("#lname").val() == ""){

 $("#lnameselect").slideDown();
 $("#lnameselect").fadeOut(3000);
 return false;
 }

 if($("#fathername").val()==""){

 $("#fathernameselect").slideDown();
 $("#fathernameselect").fadeOut(3000);
 return false;
 }



 if($("#mothername").val()==""){

 $("#mothernameselect").slideDown();
 $("#mothernameselect").fadeOut(3000);
 return false;
 }

 if($('#mno1').val() == ""){

 $("#mon1select").slideDown();
 $("#mon1select").fadeOut(3000);
 return false;

 }
 if($('#mon2').val() == ""){

 $("#cnameselect").slideDown();
 $("#cnameselect").fadeOut(3000);
 return false;

 }


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


 if(datepicker12=="")
 {

 $("#dateselect").slideDown();
 $("#dateselect").fadeOut(3000);
 return false;
 }

 if(address==""){

 $("#addressselect").slideDown();
 $("#addressselect").fadeOut(3000);
 return false;

 }



 if(packageName==""){

 $("#packageNameselect").slideDown();
 $("#packageNameselect").fadeOut(3000);
 return false;

 }
 if(date==""){

 $("#dateselect1").slideDown();
 $("#dateselect1").fadeOut(3000);
 return false;

 }
 if(startTime==""){

 $("#startTimeselect").slideDown();
 $("#startTimeselect").fadeOut(3000);
 return false;

 }
 if(endTime==""){

 $("#endTimeselect").slideDown();
 $("#endTimeselect").fadeOut(3000);
 return false;

 }
 if(child=="" ){

 $("#childselect").slideDown(); 
 $("#childselect").fadeOut(3000);  
 return false;

 }

 if(adults==""){

 $("#adultsselect").slideDown();
 $("#adultsselect").fadeOut(3000);
 return false;

 }




 $.ajax({
 url : "advaceBooking",
 type : "POST",

 data :"cname="+cname +"&lname="+lname+"&fathername="+fathername+
 "&mothername="+mothername+"&email="+email+"&mno1="+mno1+
 "&mno2="+mno2+"&locality="+locality+"&address="+address+
 "&datepicker12="+datepicker12+"&packageName="+packageName+"&date="+date+
 "&startTime="+startTime+"&endTime="+endTime+"&child="+child+
 "&adults="+adults+"&totalAmount="+totalAmount+"&paidAmount="+paidAmount+
 "&id1="+id1,


 success : function(data) {



 if(data=="fail")

 {

 $("#failselect").slideDown();
 $("#failselect").fadeOut(3000);
 }
 else
 {
 $("#datepicker3").val("");
 $("#startTime").val("");
 $("#endTime").val("");
 $("#noofchild").val("");
 $("#noofadult").val("");
 $("#amount").val("");
 $("#paidAmount").val("");

 $("#cname").val("");
 $("#lname").val("");
 $("#fathername").val("");
 $("#mothername").val("");
 $("#email").val("");
 $("#mno2").val("");
 $("#mno1").val("");
 $("#locality").val("");
 $("#address").val("");
 $("#datepicker12").val("");

 $("#successeselect").slideDown();
 $("#successeselect").fadeOut(3000);

 $("#cash").val("");
 $("#chequeBank").val("");
 $("#chequeNo").val("");
 $("#chequeAmount").val("");
 $("#creditcash").val("");

 $("#payingAmt").val("");



 }

 //location.reload(true);
 },
 error : function(xhr, ajaxOptions, thrownError) {
 alert("err" + thrownError + xhr.responseText);
 }
 });
 }*/

function saveAdvanceBooking() {

	/* this is customer data */
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	var cname = $("#cname").val();
	var lname = $("#lname").val();
	var fathername = $("#fathername").val();
	var mothername = $("#mothername").val();
	var email = $("#email").val();
	var mno1 = $("#mno1").val();
	var mno2 = $("#mno2").val();
	var locality = $("#locality").val();
	var address = $("#address").val();
	var datepicker12 = $("#datepicker12").val();

	/* End customer data */

	var packageName = $("#birtdaytype").val();
	var date = $("#datepicker3").val();
	var startTime = $("#startTime").val();
	var endTime = $("#endTime").val();
	var child = $("#noofchild").val();
	var adults = $("#noofadult").val();
	var totalAmount = $("#amount").val();
	var paidAmount = $("#paidAmount").val();
	var id1 = $("#id1").val();

	/* PayMode Mode And Details */

	var cash = $("#cash").val();
	var BankName = $("#chequeBank").val();
	var checqueNum = $("#chequeNo").val();
	var checkAmount = $("#chequeAmount").val();
	var creditAmount = $("#creditcash").val();

	if ($('#cname').val() == "") {

		$("#cnameselect").slideDown();
		$("#cnameselect").fadeOut(3000);
		return false;
	}

	if ($("#lname").val() == "") {

		$("#lnameselect").slideDown();
		$("#lnameselect").fadeOut(3000);
		return false;
	}

	if ($("#fathername").val() == "") {

		$("#fathernameselect").slideDown();
		$("#fathernameselect").fadeOut(3000);
		return false;
	}

	if ($("#mothername").val() == "") {

		$("#mothernameselect").slideDown();
		$("#mothernameselect").fadeOut(3000);
		return false;
	}

	if ($('#mno1').val() == "") {

		$("#mon1select").slideDown();
		$("#mon1select").fadeOut(3000);
		return false;

	}
	if ($('#mon2').val() == "") {

		$("#cnameselect").slideDown();
		$("#cnameselect").fadeOut(3000);
		return false;

	}

	if ($("#email").val() == "") {

		$("#emailselect").slideDown();
		$("#emailselect").fadeOut(3000);
		return false;
	}
	if (!emailRegex.test(email)) {

		$("#emailselect").slideDown();
		$("#emailselect").fadeOut(3000);
		return false;
	}

	if (datepicker12 == "") {

		$("#dateselect").slideDown();
		$("#dateselect").fadeOut(3000);
		return false;
	}

	if (address == "") {

		$("#addressselect").slideDown();
		$("#addressselect").fadeOut(3000);
		return false;

	}

	if (packageName == "") {

		$("#packageNameselect").slideDown();
		$("#packageNameselect").fadeOut(3000);
		return false;

	}
	if (date == "") {

		$("#dateselect1").slideDown();
		$("#dateselect1").fadeOut(3000);
		return false;

	}
	if (startTime == "") {

		$("#startTimeselect").slideDown();
		$("#startTimeselect").fadeOut(3000);
		return false;

	}
	if (endTime == "") {

		$("#endTimeselect").slideDown();
		$("#endTimeselect").fadeOut(3000);
		return false;

	}
	if (child == "") {

		$("#childselect").slideDown();
		$("#childselect").fadeOut(3000);
		return false;

	}

	if (adults == "") {

		$("#adultsselect").slideDown();
		$("#adultsselect").fadeOut(3000);
		return false;

	}

	if ($("#paidAmount").val() == "") {

		$("#completeamt").slideDown();
		$("#completeamt").fadeOut(3000);
		return false;

	}

	var paidAmount = $("#paidAmount").val();

	var chequeNo = $("#chequeNo").val();

	var chequeBank = $("#chequeBank").val();

	var payMode = $("#payMode").val();

	var countryCodeMob1 = $("#countryCodeMob1").val();
	var countryCodeMob2 = $("#countryCodeMob2").val();

	// cash BankName checqueNum checkAmount creditAmount

	$.ajax({
		url : "advaceBooking",
		type : "POST",

		data : "cname=" + cname + "&lname=" + lname + "&fathername="
				+ fathername + "&mothername=" + mothername + "&email=" + email
				+ "&mno1=" + mno1 + "&mno2=" + mno2 + "&locality=" + locality
				+ "&address=" + address + "&datepicker12=" + datepicker12
				+ "&packageName=" + packageName + "&date=" + date
				+ "&startTime=" + startTime + "&endTime=" + endTime + "&child="
				+ child + "&adults=" + adults + "&totalAmount=" + totalAmount
				+ "&id1=" + id1 + "&paidAmount=" + paidAmount
				+ "&paymentchequeNo=" + chequeNo + "&paymentchequeBank="
				+ chequeBank + "&payMode=" + payMode + "&countryCodeMob1="
				+ countryCodeMob1 + "&countryCodeMob2=" + countryCodeMob2,

		success : function(data) {

			if (data == "fail")

			{

				// $("#failselect").slideDown();
				// $("#failselect").fadeOut(3000);
			} else {
				$("#datepicker3").val("");
				$("#startTime").val("");
				$("#endTime").val("");
				$("#noofchild").val("");
				$("#noofadult").val("");
				$("#amount").val("");
				$("#paidAmount").val("");

				$("#cname").val("");
				$("#lname").val("");
				$("#fathername").val("");
				$("#mothername").val("");
				$("#email").val("");
				$("#mno2").val("");
				$("#mno1").val("");
				$("#locality").val("");
				$("#address").val("");
				$("#datepicker12").val("");

				$("#successForm").slideDown();
				$("#successForm").fadeOut(3000);

				$("#cash").val("");
				$("#chequeBank").val("");
				$("#chequeNo").val("");
				$("#chequeAmount").val("");
				$("#creditcash").val("");

				$("#payingAmt").val("");

				document.getElementById('printlight').style.display = 'block';
				document.getElementById('printfade').style.display = 'block';

				$("#printMyBill").html(data);
			}

			// location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});
}

function calculatePaidAmount() {

						var chequeAmount = $("#chequeAmount").val();
						var cash = $("#cash").val();
						var creditAmount = $("#creditcash").val();
						var cashamt = 0;
						if (cash != "" && cash != "undefined")
						{
							cashamt = cash;
						}
						  var chequeamt = 0;
							if (chequeAmount != "" && chequeAmount != "undefined") {
								chequeamt = chequeAmount;
							}
						
							var creditamt = 0;
						
							if (creditAmount != "" && creditAmount != "undefined") {
								creditamt = creditAmount;
							}
						
							     var totalamt = parseInt(cashamt) + parseInt(chequeamt)
									+ parseInt(creditamt);
						$("#payingAmt").val(totalamt);

}

function addPayingAmount() {

	var finalamt = $("#payingAmt").val();
	if (finalamt != "" && finalamt != "undefined") {
		$("#paidAmount").val(finalamt);
	}
}

function totalAmount() {

	var id = $("#birtdaytype").val();
	var child = $("#noofchild").val();
	var adults = $("#noofadult").val();
	var tot = 0;
	var i, totalAmount;
	var j;
	var len = packageId.length;

	for (i = 0; i < len; i++) {
		if (packageId[i] == $("#birtdaytype").val()) {
			j = i;

		}
	}

	for (i = 0; i < price.length; i++) {
		tot = price[j];

	}

	/*
	 * $.ajax({ url : "getBirthdayMoney", type : "POST",
	 * 
	 * data :{id:id},
	 * 
	 * 
	 * success : function(data) {
	 * 
	 * if(child < 15) {
	 * 
	 * alert('in'); tot=(data+1000); }
	 * 
	 * if((child >= 15) &&(adults<=child+3) ) {
	 * 
	 * alert('in1'); tot=(data); } $("#amount").val(tot);
	 *  }, error : function(xhr, ajaxOptions, thrownError) { alert(3);
	 * alert("err" + thrownError + xhr.responseText); } });
	 */// ajax is when you want data from database

	if (child < 15 && (adults <= (parseInt(child) + 3))) {

		totalAmount = ((((parseInt(child)) * parseFloat(tot)) + 1000));
	}

	if ((child >= 15) && (adults <= (parseInt(child) + 3))) {

		totalAmount = ((parseInt(child)) * parseFloat(tot));
	}
	if (child < 15 && adults > (parseInt(child) + 3)) {

		var temp = (parseInt(adults) - (parseInt(child) + 3));

		var dd = parseInt((temp));

		totalAmount = (parseInt(child) * parseInt(tot))
				+ ((parseInt(temp) * 50) + 1000);

	}

	if (child >= 15 && adults > (parseInt(child) + 3)) {

		var temp = (parseInt(adults) - (parseInt(child) + 3));

		var dd = parseInt((temp));

		totalAmount = (parseInt(child) * parseInt(tot))
				+ ((parseInt(temp) * 50));

	}

	$("#amount").val(totalAmount);

}

function confirmPostPond() {
	var id = $("#hiddenid").val();
	var date = $("#datepicker14").val();
	var sTime = $("#poststartTime").val();
	var eTime = $("#postendTime").val();

	if ($("#datepicker14").val() == "") {

		$("#postdateselect").slideDown();
		$("#postdateselect").fadeOut(3000);
		return false;
	}

	if ($("#poststartTime").val() == " ") {

		$("#poststarttimeselect").slideDown();
		$("#poststarttimeselect").fadeOut(3000);
		return false;
	}
	if ($("#postendTime").val() == "") {

		$("#postendtimeselect").slideDown();
		$("#postendtimeselect").fadeOut(3000);
		return false;
	}

	$.ajax({
		url : "confirmAndSavePospond",
		type : "POST",

		data : "id=" + id + "&date=" + date + "&sTime=" + sTime + "&eTime="
				+ eTime,

		success : function(data) {
			// $("#cancleresult").html(data);

			// $("#cancelresult").show();

			if (data == "fail")

			{

				$("#postfailselect").slideDown();
				$("#postfailselect").fadeOut(3000);
			}

			else {
				$("#postsuccesseselect").slideDown();
				$("#postsuccesseselect").fadeOut(3000);

			}

		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});

}
