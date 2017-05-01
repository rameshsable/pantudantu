var cnt=0;
 function numeralsOnly(evt) { 
	 
	
	 var val =document.getElementById("moblie").value;
	 //if (/^\d{10}$/.test(val)) {
	 if (/^([1-9])([0-9]){9}$/.test(val)) {
	     return true;
		 // value is ok, use it
	 } else {
		 var msg ="Enter numerals only in this field";
			document.getElementById("phone").innerHTML=msg;
		 
	    // alert("Invalid number; must be ten digits");
	     //number.focus()
	     return false;
	 }
	
}
 function numeralsOnlylandline(evt) { 
	 document.getElementById("phone").innerHTML='';
	 var userMobile=document.getElementById("moblie").value;
	  evt = (evt) ? evt : event;    
	var charCode = (evt.charCode) ? evt.charCode : (evt.keyCode) ? evt.keyCode :(evt.which) ? evt.which : 0;      
	if (charCode > 31 && (charCode < 46 || charCode > 57))
			{       
		        var msg ="Enter numerals only in this field";
		        document.getElementById("phone").innerHTML=msg;
		        return false;    
		}    
	return true;
	
}
 function validationemail(evt)
 {
	 document.getElementById("mail").innerHTML='';
	 var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
     var emailField=document.getElementById("email").value;
     if(emailField=='')
	 {
	 var msg ="Can not be empty";
	 document.getElementById("mail").innerHTML=msg;
	  return false;
	 } 
 	else if (reg.test(emailField) == false) 
 	{
   
     	msg ='Invalid Email Address';
     	document.getElementById("mail").innerHTML=msg;
     	return false;
 	}
 }
  

function postcode_validate(evt)
{
	alert("Please select ddl");
   var regPostcode = /^([1-9])([0-9]){5}$/;
	//var regPostcode = /^\d{6}$/;

    var obj = document.getElementById("pinno").value;

    if(regPostcode.test(obj) == false)
    {
    	var msg = "Postcode is not yet valid.";
    	document.getElementById("pin").innerHTML=msg;
       return false;
    	// obj.innerHTML = "Postcode is not yet valid.";

    }
    else
    {

    	return true;
        //obj.innerHTML = "Your India Postal Index Number is valid!"; 

    }

}


function selectValidate()
{
if(document.getElementById('<%=ddlView.ClientID%>').selectedIndex == 0)
{
alert("Please select ddl");
//document.getElementById("ddlList").focus();
return false;
}
return true;
}
