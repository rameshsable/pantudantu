function cancle(bookingId, status, customer) {

	var  bookingId=bookingId;
	var status =status;
	var  customer=customer;
	
	
	$.confirm({
		content : ' You want to cancle Booking <br>',
		theme : 'white',
		animationSpeed : 2000,
		confirmButtonClass : 'btn-info',
		cancelButtonClass : 'btn-danger',

		onOpen : function() {

			this.$content.find('button.examplebutton').click(function() {

			});
		},
		onClose : function() {

		},
		onAction : function(action) {

			if ('confirm' == action) {
				
				$.ajax({
					url : "getCanclationdiductionWindow",
					type : "GET",
					data : "bookingId=" + bookingId + "&status=" + status
							+ "&customer=" + customer,

					success : function(data) {
						document.getElementById('diductWindow').style.display = 'block';
						document.getElementById('diductWindowfade').style.display = 'block';
						
						$("#diductWindow").html(data);
						
						 
					},
					error : function(xhr, ajaxOptions, thrownError) {
						alert("err" + thrownError + xhr.responseText);
					}
				});

				
				
				

				
				
				}

			}
		});

	
	
	
	
	/*
	 * $.ajax({ url : "getCanclationConfirmation", type : "GET", data
	 * :"bookingId="+bookingId +"&status="+status+"&customer="+customer,
	 * 
	 * success : function(data) {
	 * 
	 * //location.reload(true); }, error : function(xhr, ajaxOptions,
	 * thrownError) { alert("err" + thrownError + xhr.responseText); } });
	 */

}

function removeDataRow(o) {

	var p = o.parentNode.parentNode.rowIndex;
	var purchaseamount = $(o).parent('td').prev().text();

	document.getElementById("dataTable1").deleteRow(p);
	var k = 1;
	var tbllen = document.getElementById("lastid").value;

	for (var i = 1; i <= tbllen; i++) {
		if (document.getElementById("srno" + i) != null)
			document.getElementById("srno" + i).value = k++;
	}
	var lastid = document.getElementById("lastid").value;

	var lastrowid = eval(lastid) - 1;

	document.getElementById("lastid").value = lastrowid;

}

function removePostpondRow(o) {

	var p = o.parentNode.parentNode.rowIndex;
	var purchaseamount = $(o).parent('td').prev().text();

	document.getElementById("dataTable1").deleteRow(p);
	var k = 1;
	var tbllen = document.getElementById("lastid").value;

	for (var i = 1; i <= tbllen; i++) {
		if (document.getElementById("srno" + i) != null)
			document.getElementById("srno" + i).value = k++;
	}
	var lastid = document.getElementById("lastid").value;

	var lastrowid = eval(lastid) - 1;

	document.getElementById("lastid").value = lastrowid;

}

function postpond(bookingId, status, customer) {

	$.ajax({
		url : "getPostPondConfirmation",
		type : "GET",
		data : "bookingId=" + bookingId + "&status=" + status + "&customer="
				+ customer,

		success : function(data) {

			// location.reload(true);
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("err" + thrownError + xhr.responseText);
		}
	});

}
