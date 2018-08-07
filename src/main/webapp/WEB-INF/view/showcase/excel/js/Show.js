$("button.btn-info").click(function(){
	location.href = contextPath + "/excelTest/export";
//	location.href = contextPath + "/riskinfo/queryClaimInfo";
});
$(function(){
	if($("#file").val == ""){
		$("input.btn-info").attr("disabled",true);
	}
	$("#file").change(function(){
		var file = $("#file").val;
		if(file == ""){
			$("input.btn-info").attr("disabled",true);
		}else{
			$("input.btn-info").attr("disabled",false);
		}
	})
});