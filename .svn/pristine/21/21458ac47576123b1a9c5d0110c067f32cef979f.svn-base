function feedComCriteria(value){
	if(value==0){
		
	}else if(value==1){
		$.ajax({
			url : 'feedcomOpenCriteria',
			type : "POST",
			async:false,
			success:function(data) {
				$("#result").html(data);
			},
			error : function(errorThrown) {
				console.log("Error: " + errorThrown);
			}
		});
	}else if(value==2){
		$.ajax({
			url : 'feedcomCloseCriteria',
			type : "POST",
			async:false,
			success:function(data) {
				$("#result").html(data);
			},
			error : function(errorThrown) {
				console.log("Error: " + errorThrown);
			}
		});
	}else if(value==3){
		$.ajax({
			url : 'feedcomOperatorCriteria',
			type : "POST",
			async:false,
			success:function(data) {
				$("#result").html(data);
			},
			error : function(errorThrown) {
				console.log("Error: " + errorThrown);
			}
		});
	}
}