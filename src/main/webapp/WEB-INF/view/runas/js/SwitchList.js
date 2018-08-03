$('a:contains("切换身份")').click(function(e){
	$.ajax({
		type : "POST",
		url : $(e.target).attr("id"),
		data : "",
		async : false,
		success : function(obj) {
			if (obj.status == '200') {
				bootbox.alert(obj.statusText);
			} else {
				bootbox.alert("切换身份失败，请稍后重试");
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			bootbox.alert(textStatus + errorThrown);
		}
	});
});

$('a:contains("切换到上一身份")').click(function(e){
	$.ajax({
		type : "POST",
		url : $(e.target).attr("id"),
		data : "",
		async : false,
		success : function(obj) {
			if (obj.status == '200') {
				bootbox.alert(obj.statusText);
			} else {
				bootbox.alert("切换到上一身份失败，请稍后重试");
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			bootbox.alert(textStatus + errorThrown);
		}
	});
});