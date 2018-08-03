var columns = [
		{
			"data" : null,
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		}, {
			"data" : "userCode",
			"orderSequence" : [ "asc" ]
		}, {
			"data" : "userName"
		}, {
			"data" : "sex",
			"render" : function(data, type, row) { 
				if(data == "0"){
					return "男";
				}else if(data == "1"){
					return "女";
				}else{
					return "";
				}
			}
		}, {
			"data" : "birthday"
		},  {
			"data" : "email"
		},  {
			"data" : "mobilePhone"
		}];
function rowCallback(row, data, displayIndex, displayIndexFull) {
	var url = contextPath + "/saa/user/delete/" + data.id;
	$('td:eq(0)', row).html(
			"<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.userCode
					+ "\">"  + (displayIndex + 1));
	/*$('td:eq(7)', row)
			.html("&nbsp;<a class='glyphicon glyphicon-edit' href='" 
					+ contextPath 
					+ "/saa/user/edit/" 
					+ data.userCode 
					+ 
					"'/>");*/


}

//时间框样式
$(".form_date").datetimepicker(
		{
			format : "yyyy-mm-dd",
			language : "zh-CN",
			autoclose : true,
			todayBtn : true,
			todayHighlight : true,
			showMeridian : false,
			minView : "month",
			pickerPosition : "bottom-left",
		
		});

$(function() {
	// 控件事件
	$("button.btn-search").click(
		function() {
			var ajaxList = new AjaxList("#resultDataTable");
			ajaxList.targetUrl = contextPath + '/saa/user/search?'
					+ $("#form").serialize();
			ajaxList.columns = columns;
			ajaxList.rowCallback = rowCallback;
			ajaxList.query();
	});
	//地址功能编辑
	$("button.btn-edit.role").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要编辑的记录");
			return false;
		}
		if (selectedIds.split(",").length > 1) {
			bootbox.alert("只能选择一条记录");
			return false;
		}
		var id = selectedIds.split(",")[0];
		location.href = contextPath + "/saa/user/edit/" + id;
	});
	$("button.btn-edit.power").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要编辑的记录");
			return false;
		}
		if (selectedIds.split(",").length > 1) {
			bootbox.alert("只能选择一条记录");
			return false;
		}
		var id = selectedIds.split(",")[0];
		location.href = contextPath + "/saa/userpower/edit/" + id;
	});

});
