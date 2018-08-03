var columns = [
		{
			"data" : null,
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},{
     		"data" : "factorCode",
			"orderSequence" : [ "asc" ],
			"render" : function(data, type, row) {
				return data;
			}
		}, {
			"data" : "factorDesc"
		}, {
			"data" : "dataType"
		}, {
			"data" : null,
			"searchable" : false,
			"orderable" : false
		} ];

function rowCallback(row, data, displayIndex, displayIndexFull) {
		var url = contextPath + "/saa/factor/delete/" + data.factorCode;
		$('td:eq(0)', row).html(
				"<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.factorCode
						+ "\">&nbsp;&nbsp;<a href='#'>" + (displayIndex + 1)+"</a>");
		$('td:eq(4)', row)
		.html(
				"<a class='glyphicon glyphicon-edit' href='"
						+ contextPath
						+ "/saa/factor/edit/"
						+ data.factorCode 
						+ "'/>" 
						+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
						 + url + "','" + (displayIndex + 1) 
						+ "');\"/>");

}
// DataTables initialisation
$(function() {
	$("#checkAll").click(function() {
		$("input[type='checkbox']").attr("checked", this.checked);
	});
	// 控件事件
	$("button.btn-create").click(function() {
		location.href = contextPath + "/saa/factor/edit/0?editMode=create";
	});
	// 控件事件
	$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/saa/factor/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});
	//编辑权限因子
	$("button.btn-eidtSaafactor").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要编辑的记录");
			return false;
		}
		if (selectedIds.split(",").length > 1) {
			bootbox.alert("只能选择一条记录");
			return false;
		}
		var id = selectedIds;
		location.href = contextPath+ "/saa/factor/edit/"+id;
	});
	//删除权限因子
	$("button.btn-deleteSaafactor").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		if (selectedIds.split(",").length > 1) {
			bootbox.alert("只能选择一条记录");
			return false;
		}
		var id = selectedIds;
		var url = contextPath + "/saa/factor/delete/" + id;
		//当前对象父亲的孩子a
		var siblingVal = "";
		$("input[name='checkCode']:checked").each(function() {
			siblingVal = siblingVal + $(this).parent().children("a").html();
		});
		deleteRows("resultDataTable", url,siblingVal);
	});
	//权限因子批量删除
	$("button.btn-deleteAll").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要批量删除的记录");
			return false;
		}
		var url = contextPath + "/saa/factor/deleteAll/" + selectedIds;
		batchDeleteRows("search",url);
	});
});