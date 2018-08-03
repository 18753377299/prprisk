
/**	   增加功能 模块	*/
var columns = [
		{
			"data" : null,
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},
		{
			"data" : "id"
		}, {
			"data" : "comCode"
		}, {
			"data" : "name"
		}, {
			"data" : "comPath"
		},  {
			"data" : "createdAt"
		},  {
			"data" : "updatedAt"
		},  {
			"data" : "description"
		},  {
			"data" : null,
			"searchable" : false,
			"orderable" : false
		} ];

/**		删除功能 模块*/
function rowCallback(row, data, displayIndex, displayIndexFull) {
	var  url = contextPath + "/sysCompany/delete/" +data.id;
	$('td:eq(0)', row).html(
			"&nbsp;&nbsp;<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.id
					+ "\">"+(displayIndex + 1));

	$('td:eq(8)', row)
	.html("<a class='glyphicon glyphicon-eye-open' href='"
			+ contextPath
			+ "/sysCompany/view/" + data.id 
			+ " '/> "+
			"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
					+ contextPath
					+ "/sysCompany/edit/"
					+ data.id
					+ "'/>"
					+ "&nbsp;&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
					 + url + "','" + (displayIndex + 1) 
					+ "');\"/>");

}

//
// DataTables initialisation
//
$(function() {

	$("#checkAll").click(function() {
		$("input[type='checkbox']").attr("checked", this.checked);
	});
	// 控件事件
	$("button.btn-create").click(function() {
		location.href = contextPath + "/sysCompany/edit/new/?editMode=create";
	});
	// 控件事件
	$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/sysCompany/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});
	$("button.btn-deleteAll").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		var url = contextPath + "/sysCompany/deleteAll/" + selectedIds;
		batchDeleteRows("search", url);
	});
});