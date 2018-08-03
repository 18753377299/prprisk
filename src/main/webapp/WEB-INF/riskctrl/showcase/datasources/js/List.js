$("#aandbb").click(function(){
	$.ajax({
		type : "POST",
		url : contextPath + "/dataSources/aAndB",
		async : false,
		success : function(obj) {
			if (obj!= "") {			
				$("#aandb").html(obj.statusText);
			}else{
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
				flag = false;
				bootbox.alert(textStatus + errorThrown);
	}
		
	});
});
$("#bandab").click(function(){
	$.ajax({
		type : "POST",
		url : contextPath + "/dataSources/bAndA",
		async : false,
		success : function(obj) {
			if (obj!= "") {			
				$("#banda").html(obj.statusText);
			}else{
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
				flag = false;
				bootbox.alert(textStatus + errorThrown);
	}
		
	});
});
$("#ctodb").click(function(){
	$.ajax({
		type : "POST",
		url : contextPath + "/dataSources/cToD",
		async : false,
		success : function(obj) {
			if (obj!= "") {			
				$("#ctod").html(obj.statusText);
			}else{
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
				flag = false;
				bootbox.alert(textStatus + errorThrown);
	}
		
	});
});
$("#dtocb").click(function(){
	$.ajax({
		type : "POST",
		url : contextPath + "/dataSources/dToC",
		async : false,
		success : function(obj) {
			if (obj!= "") {			
				$("#dtoc").html(obj.statusText);
			}else{
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
				flag = false;
				bootbox.alert(textStatus + errorThrown);
	}
		
	});
});
