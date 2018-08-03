$(function() {
	jQuery.validator.addMethod("validSelect", function(value, element) {
	    if(value==""||value==null){
	    	return false;
	    }
	    return true;
	}, "请选择状态为有效或者无效");
	var rules = {
			"sddType.validSatus":{
				validSelect:true
			},
			"sddType.type":"required"
	};
	$(".btn-return").click(function() {
		history.go(-1);
	});
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
												'<input type="text" class="form-control" name="sddCodeList['
														+ $("#BasecodeIndex")
																.val()
														+ '].code" />',

												'<input type="text" class="form-control" name="sddCodeList['
														+ $("#BasecodeIndex")
																.val()
														+ '].value" />',

												'<input type="text" class="form-control" name="sddCodeList['
														+ $("#BasecodeIndex")
																.val()
														+ '].cnName" />',
												'<input type="text" class="form-control" name="sddCodeList['
														+ $("#BasecodeIndex")
																.val()
														+ '].engName" />',
												'<input type="text" class="form-control" name="sddCodeList['
														+ $("#BasecodeIndex")
																.val()
														+ '].codeDesc" />',
												'<select name="sddCodeList['
														+ $("#BasecodeIndex")
																.val()
														+ '].validStatus" class="form-control">'+'<option value="1">有效</option><option value="0">无效</option><option value="">请选择</option>'+'</select>',

												'<input type="button" class="btn btn-primary dropdown-toggle" name="resultDataTable" onclick="delRow(this)" value="删除" />'

										]).draw();
						addRules($("#BasecodeIndex").val());
						$("#BasecodeIndex").val(parseInt($("#BasecodeIndex").val()) + 1);
						
					});
	// 4.Ajax表单操作相关
	var ajaxEdit = new AjaxEdit("#form");
	ajaxEdit.rules = rules;
	
	ajaxEdit.targetUrl = contextPath + "/sdd/save";
	ajaxEdit.afterSuccess = function() {
		history.go(-1);
		// bootbox.alert("Success");
	};
	// 绑定表单
	ajaxEdit.bindForm();
	var size = parseInt($("#BasecodeIndex").val());
	if(size>0){
		initRules(size);
	}
});
function addRules(i){
	$("input[name='sddCodeList[" + i + "].code']").rules("add" ,{required: true});
	$("input[name='sddCodeList[" + i + "].value']").rules("add" ,{required: true});
	$("input[name='sddCodeList[" + i + "].cnName']").rules("add" ,{required: true});
	$("input[name='sddCodeList[" + i + "].engName']").rules("add" ,{required: true});
}
function initRules(size){
	for(var i=0;i<size;i++){
		$("input[name='sddCodeList[" + i + "].code']").rules("add" ,{required: true});
		$("input[name='sddCodeList[" + i + "].value']").rules("add" ,{required: true});
		$("input[name='sddCodeList[" + i + "].cnName']").rules("add" ,{required: true});
		$("input[name='sddCodeList[" + i + "].engName']").rules("add" ,{required: true});
	}
}
function delRow(obj) {
	$(obj).parent().parent().addClass("selected");
	var resultDataTable = $('#resultDataTable').DataTable();
	resultDataTable.row(".selected").remove().draw();
};