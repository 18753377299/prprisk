

$(function() {
	
	//1.控件初始化
	$(".form_date").datetimepicker({
		format : "yyyy-mm-dd",
		language : "zh-CN",
		autoclose : true,
		todayBtn : true,
		todayHighlight : true,
		showMeridian : false,
		minView : "month",
		pickerPosition : "bottom-left",
	});
	
	// 2.控件事件
	$("button.btn-return").click(function() {
		history.go(-1);
	});

	// 3.页面校验
	// 校验规则
	var rules = {
							
		comCode : "required",
		comPath : "required",
		comCName : "required",
		newComCode : "required",
		validStatus : "required"
	};

	

	// 4.Ajax表单操作相关
	var ajaxEdit = new AjaxEdit("#form");
	ajaxEdit.rules = rules;
	ajaxEdit.targetUrl = contextPath + "/sysCompany/save";
	ajaxEdit.afterSuccess = function() {
//		history.go(-1);
		// bootbox.alert("Success");
		location.href = contextPath + "/sysCompany/list";
	};
	// 绑定表单
	ajaxEdit.bindForm();
});