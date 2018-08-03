
/**	   增加功能 模块	*/
var columns = [
		{
			"data" : null,
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},
		{
			"data" : "userCode"
		}, {
			"data" : "userName"

		},{
			"data" : null,
			"searchable" : false,
			"orderable" : false
		} ];

/**		删除功能 模块*/
function rowCallback(row, data, displayIndex, displayIndexFull) {
	var url = contextPath + "/exercise/" + data.userCode;
	$('td:eq(0)', row).html(
			"<input name='checkCode' type='checkbox' value='" + data.userCode
					+ "'/>&nbsp;&nbsp;" + (displayIndex + 1));

	$('td:eq(3)', row)
			.html("<a class='glyphicon glyphicon-eye-open' href='"
					+ contextPath
					+ "/exercise/" + data.userCode 
					+ "'/>"+
					"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
							+ "/exercise/"
							+ data.userCode+"/edit/" 
							+ "'/>"
							+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "','DELETE');\"/>");

}

//
// DataTables initialisation
//
$(function() {
	// 1.控件初始化
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
	// 控件事件
	$("button.btn-create").click(function() {
		location.href = contextPath + "/exercise/new?editMode=create";
	});
	// 控件事件
	$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/exercise/index';
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.method="GET";
				ajaxList.query();
			});
	$("button.btn-deleteAll").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		var url = contextPath + "/exercise/"+selectedIds+"/batchdelete/";
		batchDeleteRows("search", url,"DELETE");
	});
});