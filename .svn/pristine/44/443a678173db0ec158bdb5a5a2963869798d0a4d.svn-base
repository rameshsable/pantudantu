

<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<head>
<title>Home</title>
<jsp:include page="body.jsp"></jsp:include>
<script
	src="${pageContext.request.contextPath}/resources/registration/Registration.js"
	charset='utf-8'></script>
<script
	src="${pageContext.request.contextPath}/resources/Bill/passes.js"
	charset='utf-8'></script>
<script
	src="${pageContext.request.contextPath}/resources/Bill/passBill.js"
	charset='utf-8'></script>





<script>
	var customer = new Array();
	var customerId = new Array();
	var mob1 = new Array();
	var mob2 = new Array();
	var mob = new Array();
	var lastName = new Array();
	var fatherName = new Array();
	var motherName = new Array();
	var email = new Array();
	var dob = new Array();
	var address = new Array();
	var locality = new Array();
	
	var custMobCountry1 = new Array();
	var custMobCountry2 = new Array();
	
	var visitpasslstId = new Array();
	var visitpasslstAmount = new Array();
	
	
	var monthlypasslstId =new Array();
	var monthlypasslstAmount =new Array();
</script>
<c:forEach var="customer1" items="${customerlist}">
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
		locality.push("${customer1.locality.id}");
		custMobCountry1.push("${customer1.countryCodeMobile1}");
		custMobCountry2.push("${customer1.countryCodeMobile2}");
		
	</script>
</c:forEach>



<c:forEach var="visitpasslst" items="${visitpasslist}">
	<script>
	visitpasslstId.push("${visitpasslst.visitpassId}");
	visitpasslstAmount.push("${visitpasslst.price}");
	</script>
</c:forEach>

<c:forEach var="monthlypasslst" items="${monthlypasslist}" varStatus="theCount">
<script>
	monthlypasslstId.push("${monthlypasslst.mpnthlyPassId}");
	monthlypasslstAmount.push("${monthlypasslst.price}");			
</script>																
</c:forEach>

<script>
	mob = mob1.concat(mob2);
</script>


<script>
	

	function fetchData(moba) {
		if(moba==""){
			return ;
		}
		var i;
		var j = -1;

	
		for (i = 0; i < mob1.length; i++) {

			if (mob1[i] == moba) {

				j = i;
				break;

			}

		}
		if (j == -1) {

			for (i = 0; i < mob2.length; i++) {

				if (mob2[i] == moba) {
					j = i;

				}

			}
		}

		//alert(customerId[j]);
		if (j != -1) {
			document.getElementById('cname').value = customer[j];

			document.getElementById('lname').value = lastName[j];

			document.getElementById('fathername').value = fatherName[j];

			document.getElementById('mothername').value = motherName[j];
			document.getElementById('email').value = email[j];

			document.getElementById('mno1').value = mob1[j];

			document.getElementById('mno2').value = mob2[j];
			document.getElementById('address').value = address[j];
			document.getElementById('locality').value = locality[j];
			document.getElementById('id1').value = customerId[j];
			
			document.getElementById('countryCodeMob1').value=custMobCountry1[j] ;   
			document.getElementById('countryCodeMob2').value=custMobCountry2[j] ;
			
			if (dob[j] != "") {
				var mySplitResult = dob[j].split("-");

				var bdate = mySplitResult[1]+"/"+mySplitResult[2]+"/"+mySplitResult[0];

				var bdate = mySplitResult[1]+"/"+mySplitResult[2]+"/"+mySplitResult[0];

				document.getElementById('datepicker12').value=bdate ;
			} /* else {
				document.getElementById('datepicker12').value = "";
			} */

			//	document.getElementById('datepicker1').value=dob[j] ;
			//$("#hiddenCustId").val(customerId[j]);	
		}

	}

	//alert(customerId[j]);
</script>

<script>
	$(function() {
		var availableTags = customer;
		$(".customerCodeClass").autocomplete({
			source : availableTags
		});
	});
</script>
<script>
	$(function() {
		var availableTags = mob;
		$(".mobCodeClass").autocomplete({
			source : availableTags
		});
	});
</script>


</head>





<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div id="home">
	

			<div>&nbsp;</div>



			<div id="page-wrapper">
				<div >
				
				

					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="cnameselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>please Enter Child name.
					</div>
					<div style="margin-top: 20px;"
						class="alert alert-danger-dismissable" id="lnameselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Please Enter Last Name.

					</div>
					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="fathernameselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Please Enter Father name.
					</div>



					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="mothernameselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Please Enter Mother Name.
					</div>

					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="mon1select">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Please Enter Mobile number.
					</div>


					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="emailselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Please Enter valid Email ID.
					</div>

					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="addressselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>Please enter Address.

					</div>

					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="localityselect">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<strong>Warning: </strong>please Select Locality .
					</div>

					<div style="margin-top: 20px;"
						class="alert alert-danger alert-dismissable" id="dateselect">
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












				<div id="container-fluid">
					<div id="row-fluid">
						<!-- <div class="col-sm-5"> -->

						<div class="span2">

							<!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->







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
														href="#">Visit Pass</a></li>

													<li
														onclick="switchView('student_attendance_filter_3', this);"><a
														href="#">Monthly Pass</a></li>
												</ul>



											</div>


											<div id="accordion" class="panel-group" style="width: 80%;">

												<div class="panel panel-default">

													<div class="panel-heading" style="height: 40px;">

														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#accordion"
																href="#collapseOne" class="pull-left">Customer
																Detail</a>
														</h4>

													</div>

													<div id="collapseOne" class="panel-collapse collapse">

														<div class="panel-body">

															<div id="container-fluid">
																<div id="row-fluid">
																	<!-- <div class="col-sm-5"> -->

																	<div class="span2">

																		<!--    <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form-->




																		<form action="#" id="accordinForm">
																			<div class="row">
																				<div class="col-xs-3">
																					<label>Child Name</label> <input type="text"
																						class="form-control customerCodeClass"
																						placeholder="name" name="cname" id="cname"
																						value="${customer}" autocomplete="on">


																				</div>

																				<div class="col-xs-3">
																					<label>Last Name</label> <input type="text"
																						class="form-control" placeholder="last name"
																						name="lname" id="lname">

																				</div>
																				<div class="col-xs-3">
																					<label>Father Name</label> <input type="text"
																						class="form-control" placeholder="father name"
																						name="fathername" id="fathername">


																				</div>
																				<div class="col-xs-3">
																					<label>Mother Name</label> <input type="text"
																						class="form-control" placeholder="mother name"
																						name="mothername" id="mothername"
																						autocomplete="on">

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
																					<label>Mobile No 1</label><input type="text"
																						class="form-control required mobCodeClass"
																						placeholder="mobile No1" name="mno1" id="mno1"
																						value="${mob1}" autocomplete="on"  onblur="fetchData(this.value);"
																					
																						onChange="fetchData(this.value);">
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
																					<label>Mobile No 2</label><input type="text"
																						class="form-control required mobCodeClass"
																						placeholder="mobile no 2" name="mon2" id="mno2"
																						value="${mob}"
																						onChange="operatorfirstName(this.value);"
																						onkeydown="operatorfirstName(this.value)"
																						autocomplete="on">
																				</div>
																				<div class="col-xs-3">
																					<label>Email</label><input type="email"
																						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
																						class="form-control" placeholder="Email"
																						name="email" id="email">
																				</div>

																				<div class="col-xs-3">
																					<label>Date Of Birth</label> <input type="text"
																						class="form-control" name="datepicker12"
																						id="datepicker12" readonly="readonly" />

																				</div>
																				<div class="col-xs-3">
																					<label>Address:</label>
																					<textarea rows="2" cols="10" class="form-control"
																						placeholder="Address" name="address" id="address">
							</textarea>

																				</div>
																				<div class="col-xs-3">
																						<label>Locality</label> <select name="locality"  class="form-control"
																							id="locality">
																							<c:forEach var="loc" items="${localities}"
																							varStatus="theCount">
																							<option value="${loc.id}" selected>${loc.name}</option>
																							</c:forEach>
																					</select>
																				</div>

																				<div class="col-xs-3"></div>
																				<!-- <div class="col-xs-3">
																					<input align="right" type="reset" value="clear"
																						class="btn btn-info btn-sm spacer " />

																				</div> -->

																				<input type="hidden" id="id1" value="0" /> <br>
																				<br>
																				<div class="col-xs-4"></div>
																		</form>



																	</div>
																	<br>
																	<br>


																</div>
															</div>


														</div>

													</div>

												</div>





											</div>
											<br>
											<br>

											<div style="width: 100%;">



												<div class="block users ">
													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="startDateselect">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong>Select Start Date.
													</div>
													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="endDateselect">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong>Select End Date.
													</div>

													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="typeselect">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong>Select Type.
													</div>


												</div>

												<div align="center" id="student_attendance_filter_1" style="width: 100%;">
													<form action="#" id="assing_visit">
														<!-- onsubmit="return loadDateSpecificFilterViewForStudent(),pdf1();" -->
														<table class="table" id="visitpass" name="visitpass">
															<tbody>
																<tr>
																	<th>Type</th>
																	<th>Start Date</th>
																	<th>End Date</th>
																	<th></th>
																</tr>
																<tr>
																	<td align="center">
																	<select name="passtype" id="passtype" class="form-control" onchange="return visitpassAddPrice();" >
																<c:forEach var="vis" items="${visitpasslist}"
																varStatus="theCount">
																<option value="${vis.visitpassId}" selected>${vis.passTypa}</option>
																</c:forEach>
															 </select>

																			

																	</select>
																	<td align="center"><input type="text"
																		class="form-control" name="startdate" id="datepicker" 
																		readonly="readonly" onchange="return visitpassAddPrice();" /></td>

																	<td align="center"><input type="text"
																		class="form-control" name="enddate" id="datepicker2" 
																		readonly="readonly" onchange="return visitpassAddPrice();"/></td>
														
															
																	<input type="hidden" value="0"  id="visitpassHidden">

																	<!-- <td align="center"><input type="Button"
																		value="submit" id="submit"
																		class="btn btn-primary btn-sm "
																		onclick=" visitPass();" /></td> -->
																</tr>
															</tbody>






														</table>
														<input type="hidden" id="hidden" value="visit" />

															

													</form>

													<script>
														$("#typeselect").hide();
														$("#startDateselect")
																.hide();
														$("#endDateselect")
																.hide();
													
													</script>
													
											
													


												</div>


												<div class="block users  ">
													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="startDateselect1">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong>Select Start Date.
													</div>
													
													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="completeamt">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong> Pay Complete Amount.
													</div>
													
													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="endDateselect1">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong>Select End Date.
													</div>

													<div style="margin-top: 20px;"
														class="alert alert-danger alert-dismissable"
														id="typeselect1">
														<button type="button" class="close" data-dismiss="alert"
															aria-hidden="true">&times;</button>
														<strong>Warning: </strong>Select Type.
													</div>





													<div align="left" id="student_attendance_filter_3">
														<form action="#" id="assign_monthly">
														
															
															<table class="table" id="monthlypass"  class="form-control">
																<tbody>
																	<tr>
																		<th>Type</th>
																		<th>Start Date</th>
																		<th>End Date</th>
																		<th></th>
																	</tr>
																	<tr>
																		<td align="center">
																		<select name="mpasstype"
																			id="mpasstype" class="form-control" onchange="return MonthlypassAddPrice();" >

																				<c:forEach var="vis" items="${monthlypasslist}"
																varStatus="theCount">
																<option value="${vis.mpnthlyPassId}" selected>${vis.monpasstype}</option>
																</c:forEach>


																		</select>
																		<td align="center"><input type="text"
																			class="form-control" name="startdate" 
																			id="datepicker3" readonly="readonly" onchange="return MonthlypassAddPrice();" /></td>

																		<td align="center"><input type="text"
																			class="form-control" name="enddate" id="datepicker4" 
																			readonly="readonly" onchange="return MonthlypassAddPrice();" /></td>

																<input type="hidden" value="0"  id="monthlypassHidden">
																
																
																		<!-- <td align="center"><input type="Button"
																			value="submit" id="submit"
																			class="btn btn-primary btn-sm "
																			onclick=" monthlyPass();" /></td>
 -->																	</tr>
																</tbody>


															</table>
																
																<input type="hidden" id="hidden1" value="monthly" />
														

														</form>


														<script>
															$("#typeselect1")
																	.hide();
															$(
																	"#startDateselect1")
																	.hide();
															$("#endDateselect1")
																	.hide();
															
															$("#completeamt").hide();
														</script>
														
															



												

													</div>
													
																									
													
													<form action="">
													<div class="col-xs-3">
															<label>Amount</label> <input type="text"
																class="form-control" placeholder="0" name="amount"
																id="amount" readonly="readonly" value="0">
														</div>
													</form>

													<div class="col-xs-3">
																<label>Paid Amount</label>
																<input type="text" class="form-control"
																placeholder="0" name="paidAmount" id="paidAmount" readonly="readonly" value="0" >
						 
														</div>

													<div class="col-xs-3">
													<label>   </label>
														<input type="Button" value="Pay Amount" id="saveandprint"
															onclick="payMoney();"
															class="btn btn-primary btn-sm center-block " />
													</div>
													<div class="col-xs-3">
														<label>   </label>
														<input type="Button" value="Save And Print Bill"
															id="saveandprint" onclick="return savePass();"
															class="btn btn-primary btn-sm  " />

													</div>
													
													
												
													

												</div>
												<!-- End of bill Format -->

												<script>
													// var tablerow=0;
													function payMoney() {

														document
																.getElementById('light').style.display = 'block';
														document
																.getElementById('fade').style.display = 'block';
														switchViewPayments(
																'cashview',
																this);
													}
												</script>
												<script>
													// var tablerow=0;
													function payMoney1() {

														document
																.getElementById('light1').style.display = 'block';
														document
																.getElementById('fade1').style.display = 'block';
														switchViewPayments(
																'cashview1',
																this);
													}
												</script>

													



											</div>



										</div>


										<div id="light" class="white_content"
											style="width: 500px; min-height: 500px !important; margin-left: 492px !important; overflow: hidden !important; border: 20px solid #ffffff !important;">
											<form>
												<div class="tab-content">

													<!-- VIEW STUDENT SPECIFIC ATTENDANCE DETAILS -->
													<div class="tab-pane fade in active"
														id="student_specific_details_tab">
														<div style="padding: 10px;">
															<div>
																<ul class="pagination">

																	<li class="active"
																		onclick="switchViewPayments('cashview', this);"><a
																		href="#"> By Cash</a></li>

																	<li onclick="switchViewPayments('chequeview', this);"><a
																		href="#">By Cheque</a></li>

																	<li onclick="switchViewPayments('creditview', this);"><a
																		href="#">By Credit Card</a></li>

																</ul>
															</div>

															<div align="center" id="cashview">
																<table>
																	<tr>
																		<!-- <td><label>Cash Amount</label></td>
																		<td><input type="text" id="cash" name="cash"
																			onkeypress="calculatePaidAmount();"  onchange="calculatePaidAmount();"
																			onkeyup="calculatePaidAmount();" value="0"/></td> -->
																	</tr>

																</table>


															</div>


															<div align="center" id="chequeview">

																<table>
																	<tr>
																		<td><label>Cheque No</label></td>
																		<td><input type="text" id="chequeNo"
																			name="chequeNo" value="0" /></td>
																	</tr>

																	<tr>
																		<td><label>Bank Name</label></td>
																		<td><input type="text" id="chequeBank"
																			name="chequeBank" value="0" /></td>
																	</tr>

																	<tr>
																		<!-- <td><label>Amount</label></td>
																		<td><input type="text" id="chequeAmount"
																			name="chequeAmount" value="0"
																			onkeypress="calculatePaidAmount();" onchange="calculatePaidAmount();"
																			onkeypress="calculatePaidAmount();" /></td> -->
																	</tr>
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
	<input type="button" onClick="closePopUp(),addPayingAmount();"value="OK" class="btn btn_danger"  />
	</div>
											</form>
										</div>
										
										
										
										<!-- ramesgh -->
										<!-- <div id="light1" class="white_content"
											style="width: 500px; min-height: 500px !important; margin-left: 492px !important; overflow: hidden !important; border: 20px solid #ffffff !important;">
											<form>
												<div class="tab-content">

													VIEW STUDENT SPECIFIC ATTENDANCE DETAILS
													<div class="tab-pane fade in active"
														id="student_specific_details_tab">
														<div style="padding: 10px;">
															<div>
																<ul class="pagination">

																	<li class="active"
																		onclick="switchViewPayments('cashview1', this);"><a
																		href="#"> By Cash</a></li>

																	<li onclick="switchViewPayments('chequeview1', this);"><a
																		href="#">By Cheque</a></li>

																	<li onclick="switchViewPayments('creditview1', this);"><a
																		href="#">By Credit Card</a></li>

																</ul>
															</div>

															<div align="center" id="cashview1">
																<table>
																	<tr>
																		<td><label>Cash Amount</label></td>
																		<td><input type="text" id="cash1" name="cash1"
																			onkeypress="calculatePaidAmount();"
																			onkeyup="calculatePaidAmount1();" /></td>
																	</tr>

																</table>


															</div>


															<div align="center" id="chequeview1">

																<table>
																	<tr>
																		<td><label>Cheque No</label></td>
																		<td><input type="text" id="chequeNo1"
																			name="chequeNo1" /></td>
																	</tr>

																	<tr>
																		<td><label>Bank Name</label></td>
																		<td><input type="text" id="chequeBank1"
																			name="chequeBank1" /></td>
																	</tr>

																	<tr>
																		<td><label>Amount</label></td>
																		<td><input type="text" id="chequeAmount1"
																			name="chequeAmount1"
																			onkeypress="calculatePaidAmount1();"
																			onkeypress="calculatePaidAmount1();" /></td>
																	</tr>
																</table>


															</div>
															<div align="center" id="creditview1">
																<br>
																<table>
																	<tr>
																		<td><label>Cash Amount</label></td>
																		<td><input type="text" id="creditcash1"
																			name="creditcash1" onkeypress="calculatePaidAmount1();"
																			onkeyup="calculatePaidAmount1();" /></td>
																	</tr>

																</table>


															</div>
														</div>
													</div>
												</div>




												<div style="margin-top: 20px;">
													<br>
													<br>

													<div class="input-group">
														<div class="input-group-addon">Rs.</div>
														<input id="payingAmt1" class="form-control" type="text"
															placeholder="Amount" name="payingAmt1">
													</div>
													<br>
													<br> <input type="button"
														onClick="closePopUp1(),addPayingAmount1();" value="OK"
														class="btn btn_danger" />
												</div>
											</form>
										</div> -->
										
										

										<div id="fade" class="black_overlay"></div>
										
									
										<div id="fade1" class="black_overlay"></div>
										
										
									</div>

										<div id="printlight" class="white_content" class="white_content" style="width:1000px;min-height:500px!important;
		margin-left: 492px !important;overflow:hidden!important;border:20px solid #ffffff!important;">
		
										<div style="margin-top: 20px;"
											class="alert alert-success alert-dismissable" id="successForm">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
											<strong>Warning: </strong>Pass Saved SuccessFully.
										</div>
					
										<div id="printMyBill"></div>
										</div>
										<div id="printfade" class="black_overlay"></div>
									<br><br><br><br>
									<div id="result"></div>


								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>



	<script>
		$(function() {
			$("#datepicker").datepicker({
				dateFormat: 'dd/mm/yy',
		        changeMonth: true,
		        changeYear: true,
		        yearRange: '1990:2050'
			});
		});
		
		$("#successForm").hide();
	</script>

	<script>
		$(function() {
			$("#datepicker2").datepicker({
				dateFormat: 'dd/mm/yy',
		        changeMonth: true,
		        changeYear: true,
		        yearRange: '1990:2050'
			});
		});
	</script>




	<script>
		$(function() {
			$("#datepicker3").datepicker({
				dateFormat: 'dd/mm/yy',
		        changeMonth: true,
		        changeYear: true,
		        yearRange: '1990:2050'
			});
		});
	</script>
	<script>
		$(function() {
			$("#datepicker4").datepicker({
				dateFormat: 'dd/mm/yy',
		        changeMonth: true,
		        changeYear: true,
		        yearRange: '1990:2050'
			});
		});
	</script>
	
	<script>
		$(function() {
			$("#datepicker5").datepicker({
				dateFormat: 'dd/mm/yy',
		        changeMonth: true,
		        changeYear: true,
		        yearRange: '1990:2050'
			});
		});
	</script>
	
	<script>
		function switchViewPayments(currentSubTabView, currentLi) {
			
			
			$("#payingAmt").val($("#amount").val());
			
			 if(currentSubTabView=='cashview'){
				 $("#payMode").val("CASH");
				 
			}
			if(currentSubTabView=='chequeview'){
				$("#payMode").val("CHEQUE");
			}
			if(currentSubTabView=='creditview'){
				$("#payMode").val("CREDIT");
			} 
			
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

		function hideAllpayments() {
			$("#cashview").hide();
			$("#chequeview").hide();
			$("#creditview").hide();
			$("#cashview1").hide();
			$("#chequeview1").hide();
			$("#creditview1").hide();

		}
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
		$("#" + currentSubTabView).show();

		$(".pagination li").removeClass("active");

		$(currentLi).addClass("active");
	}
	/* function loadClasses(classSelectionBoxId) {
		$("#" + classSelectionBoxId).html("");

		$.ajax({
			url : "/attendance/ajax/GetClassesList",
			type : "GET",
			data : "",
			success : function(data) {
				$("#" + classSelectionBoxId).html(data);
			}
		});

	} */
/* 
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
	} */

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
	var oTable = $('#dataTable1').dataTable({

		"sPaginationType" : "full_numbers",
		"bPaginate" : false,
		"bLengthChange" : false,
		"bFilter" : true,
		"bInfo" : false,
		"bAutoWidth" : false

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





<script>
function visitpassAddPrice(){

	
var passtypeId=	$("#passtype").val();
var vpassamt =$("#visitpassHidden").val();

if($("#datepicker").val()=='' && $("#datepicker2").val()=='' ){

	return false;
} 
	  for(var i=0;i<visitpasslstId.length;i++){
		  
			  if(parseInt(visitpasslstId[i])==parseInt(passtypeId)){
	
			 	
				  if(parseInt($("#amount").val())==0){
				 
					  $("#visitpassHidden").val(parseInt(visitpasslstAmount[i]));
					  $("#amount").val(parseInt(visitpasslstAmount[i]));
			 
				  }else if(parseInt($("#visitpassHidden").val())==0){
				
					  var amt= $("#amount").val();
					  $("#visitpassHidden").val(parseInt(visitpasslstAmount[i]));
					  $("#amount").val(parseInt(amt)+parseInt(visitpasslstAmount[i]));
			 	  }else if(parseInt($("#visitpassHidden").val())>0){
						
			 		  var amt= $("#amount").val();
				 	  var actvispassamt=parseInt(amt)-parseInt($("#visitpassHidden").val());
				 	  $("#visitpassHidden").val(parseInt(visitpasslstAmount[i]));
				 	  $("#amount").val(parseInt(actvispassamt)+parseInt(visitpasslstAmount[i]));
				 }
			 
		  }
	  }
	  
	
}
           
function MonthlypassAddPrice(){
	
	
	
	 
    	var mpasstypeId=	$("#mpasstype").val();
    	var mpassamt= $("#monthlypassHidden").val();
    	

    	if($("#datepicker3").val()=='' && $("#datepicker4").val()=='' ){
    		return false;
    		
    	}
    		
    	
	for(var i=0;i<monthlypasslstId.length;i++){
		if(monthlypasslstId[i] == mpasstypeId){
		
			  if(parseInt(monthlypasslstId[i])==parseInt(mpasstypeId)){
			
			 	
				  if(parseInt($("#amount").val())==0){
				 
					  $("#monthlypassHidden").val(parseInt(monthlypasslstAmount[i]));
					  $("#amount").val(parseInt(monthlypasslstAmount[i]));
			 
				  }else if(parseInt($("#monthlypassHidden").val())==0){
				
					  var amt= $("#amount").val();
					  $("#monthlypassHidden").val(parseInt(monthlypasslstAmount[i]));
					  $("#amount").val(parseInt(amt)+parseInt(monthlypasslstAmount[i]));
			 	  }else if(parseInt($("#monthlypassHidden").val())>0){
						
			 		  var amt= $("#amount").val();
				 	  var actvispassamt=parseInt(amt)-parseInt($("#monthlypassHidden").val());
				 	  $("#monthlypassHidden").val(monthlypasslstAmount[i]);
				 	  $("#amount").val(parseInt(actvispassamt)+parseInt(monthlypasslstAmount[i]));
				 }
			 
		  }
		  }
	  }
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
		closePopUpBill();
	}

};

function closePopUpBill() {
	  
	

	document.getElementById('printlight').style.display = 'none';
	document.getElementById('printfade').style.display = 'none';
	
	return false;
}
window.onkeyup = function(e) {

	var key = e.keyCode ? e.keyCode : e.which;

	if (key == 27) {
		closePopUp();
		closePopUpBill();
	}

};
</script>

<script>
  var currentDate = new Date();  
	  $("#datepicker12").datepicker({ dateFormat: 'dd/mm/yy',changeMonth: true,
	        changeYear: true,
	        yearRange: '1990:2050'}).datepicker("setDate", new Date());
	  
	  $("#countryCodeMob1").val("91");
	  $("#countryCodeMob2").val("91");
</script>

