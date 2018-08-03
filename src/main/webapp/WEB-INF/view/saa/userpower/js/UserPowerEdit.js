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
	$("#checkAll").click(function() {
		$("input[type='checkbox']").attr("checked", this.checked);
	});
	//2.控件事件
	$("button.btn-return").click(function() {
		history.go(-1);
	});
		
	//3.页面校验
	//校验规则
	var rules = {
		userCode : "required",
		sysCode : "required",
		factorCode : "required",
		dataOper  : "required",
		dataValue : "required",
	};
	//校验提示

	//4.Ajax表单操作相关
	var ajaxEdit = new AjaxEdit("#form");
	ajaxEdit.rules = rules;
	//ajaxEdit.messages = messages;
	ajaxEdit.targetUrl = contextPath + "/saa/userpower/save"; 
	ajaxEdit.beforeSubmit=function(){
		var selectIds = "";
		$("input[name='checkCode']:checked").each(function() {
			selectIds = selectIds + $(this).val() + ",";
		});
		if (selectIds != "") {
			selectIds = selectIds.substr(0, selectIds.length - 1);
		}
		$("#factors").val(selectIds);
	}; 
	ajaxEdit.afterSuccess=function(){
		history.go(-1); 
		//bootbox.alert("Success");
	}; 
//	ajaxEdit.afterFailure=function(){
//		alert("Failure");
//	}; 
	//绑定表单
	ajaxEdit.bindForm();

});