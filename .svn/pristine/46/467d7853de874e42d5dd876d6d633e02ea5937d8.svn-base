/**
 * 
 */

function calculatePaidAmount(){
//		alert("fdsf");
		var chequeAmount =$("#chequeAmount").val();
		var cash=$("#cash").val();
		var creditAmount=$("#creditcash").val();
		var cashamt=0;
		if(cash!="" && cash!="undefined"){
		cashamt=cash;
		}
			var chequeamt=0;
				if(chequeAmount!="" && chequeAmount!="undefined"){
				chequeamt=chequeAmount;
			}
	
	var creditamt=0;
	
	if(creditAmount!="" && creditAmount!="undefined"){
		creditamt=creditAmount;
	}
	
	
	
var	totalamt=parseInt(cashamt)+parseInt(chequeamt)+parseInt(creditamt);
	$("#payingAmt").val(totalamt);

}



function addPayingAmount()
{
	
	
	var finalamt=$("#payingAmt").val();
	if(finalamt!="" && finalamt!="undefined"){
		$("#paidAmount").val(finalamt);
	}
}




function calculatePaidAmount1(){

	
	
	var chequeAmount =$("#chequeAmount1").val();
	var cash=$("#cash1").val();
	var creditAmount=$("#creditcash1").val();
	var cashamt=0;
	if(cash!="" && cash!="undefined"){
	cashamt=cash;
	}
		var chequeamt=0;
			if(chequeAmount!="" && chequeAmount!="undefined"){
			chequeamt=chequeAmount;
		}

var creditamt=0;

if(creditAmount!="" && creditAmount!="undefined"){
	creditamt=creditAmount;
}



var	totalamt=parseInt(cashamt)+parseInt(chequeamt)+parseInt(creditamt);
$("#payingAmt1").val(totalamt);

}



function addPayingAmount1()
{


var finalamt=$("#payingAmt1").val();
if(finalamt!="" && finalamt!="undefined"){
	$("#paidAmount1").val(finalamt);
}
}



function closePopUp() {
	  
	

	document.getElementById('light1').style.display = 'none';
	document.getElementById('fade1').style.display = 'none';
	
	return false;
}
window.onkeyup = function(e) {

	var key = e.keyCode ? e.keyCode : e.which;

	if (key == 27) {
		closePopUp();
	}

};











	  
