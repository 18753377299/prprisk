/**
 * 
 */

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
	//2.控件事件
	$("button.btn-return").click(function() {
		history.go(-1);
	});
		
	//3.页面校验
	//校验规则
	var rules = {
		"saaFactor.factorCode" : "required",
		"saaFactor.factorDesc" : "required",
		"saaFactor.dataType" : "required"
	};
	//校验提示
	var resultDataTable = $('#resultDataTable').DataTable({
		"paging" : false,
		"info" : false,
		"searching" : false,
		"scrollX" : false,
		"scrollY" : 400,
		"ordering" : false,
		"language" : {
			"emptyTable" : "列表为空",
		}
	});
	$('.btn-create')
	.on(
			'click',
			function() {
				resultDataTable.row
						.add(
								[
										'<input type="text" class="form-control" name="saaFactorFieldList['
												+ $("#FactorFieldIndex")
														.val()
												+ '].fieldCode" />',

										'<input type="text" class="form-control" name="saaFactorFieldList['
												+ $("#FactorFieldIndex")
														.val()
												+ '].entityCode" />',
										'<input type="button" class="btn btn-primary dropdown-toggle" name="resultDataTable" onclick="delRow(this)" value="删除" />'

								]).draw();
				addRules($("#FactorFieldIndex").val());
				$("#FactorFieldIndex").val(
						parseInt($("#FactorFieldIndex").val()) + 1);
				
			});
	//4.Ajax表单操作相关
	var ajaxEdit = new AjaxEdit("#form");
	ajaxEdit.rules = rules;
	ajaxEdit.targetUrl = contextPath + "/saa/factor/save"; 
	ajaxEdit.afterSuccess=function(){
		history.go(-1); 
		//bootbox.alert("Success");
	}; 
//	ajaxEdit.afterFailure=function(){
//		alert("Failure");
//	}; 
	//绑定表单
	ajaxEdit.bindForm();
	var size = parseInt($("#FactorFieldIndex").val());
	if(size>0){
		initRules(size);
	}

});
function addRules(i){
	$("input[name='saaFactorFieldList[" + i + "].fieldCode']").rules("add" ,{required: true});
	$("input[name='saaFactorFieldList[" + i + "].entityCode']").rules("add" ,{required: true});
}
function initRules(size){
	for(var i=0;i<size;i++){
		$("input[name='saaFactorFieldList[" + i + "].fieldCode']").rules("add" ,{required: true});
		$("input[name='saaFactorFieldList[" + i + "].entityCode']").rules("add" ,{required: true});
	}
}
function delRow(obj) {
	$(obj).parent().parent().addClass("selected");
	var resultDataTable = $('#resultDataTable').DataTable();
	resultDataTable.row(".selected").remove().draw();
};