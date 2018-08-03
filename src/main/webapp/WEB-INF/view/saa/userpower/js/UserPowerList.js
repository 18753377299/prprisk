var saaUserPowerColumns = [
		{
			"data" : null,
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},			
		{
			"data" : "saaFactor.factorCode"
		}, {
			"data" : "userCode"
		}, {
			"data" : "systemCode"
		},{
			"data" : "dataOper"
		},{
			"data" :"dataValue"
		},
		{
			"data" : null,
			"searchable" : false,
			"orderable" : false
		} ];

function userPowerRowCallback(row, data, displayIndex, displayIndexFull) {
		var url = contextPath + "/saa/userpower/delete/" + data.id;
		$('td:eq(0)', row).html(
				"<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.id
						+ "\">&nbsp;&nbsp;<a href='#'>" + (displayIndex + 1)+"</a>");
		$('td:eq(6)', row)
		.html(
				"<a class='glyphicon glyphicon-edit' href='"
						+ contextPath
						+ "/saa/userpower/edit/"
						+ data.id 
						+ 
						"'/>" 
						+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultSaaUserPowerDataTable','"
						 + url + "','" + (displayIndex + 1) 
						+ "');\"/>");

}
//权限因子弹出对话框
function factorLookupDialog(){
		var $modal = $('#ajax-factorModal');
		$('body').modalmanager('loading');
		$modal.load(contextPath + "/saauserconfig/factorLookupList.dialog", '', function(){
		      $modal.modal();
		    });
};
// DataTables initialisation
$(function() {
	$("#checkAll").click(function() {
		$("input[type='checkbox']").attr("checked", this.checked);
	});
	// 控件事件
	$("button.btn-create").click(function() {
		location.href = contextPath + "/saa/userpower/edit/new/?editMode=create";
	});
	// 控件事件
	$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultSaaUserPowerDataTable");
				ajaxList.targetUrl = contextPath + '/saa/userpower/search?'
						+ $("#saaUserPowerForm").serialize();
				ajaxList.columns = saaUserPowerColumns;
				ajaxList.rowCallback = userPowerRowCallback;
				ajaxList.query();
			});
	//编辑权限因子
	$("button.btn-eidtSaaUserPower").click(function() {
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
		location.href = contextPath + "/saa/userpower/edit/" + id;
	});
	//删除权限因子
	$("button.btn-deleteSaaUserPower").click(function() {
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
		var url = contextPath + "/saa/userpower/delete/" + id;
		//当前对象父亲的孩子a
		var siblingVal = "";
		$("input[name='checkCode']:checked").each(function() {
			siblingVal = siblingVal + $(this).parent().children("a").html();
		});
		deleteRows("resultSaaUserPowerDataTable", url,siblingVal);
	});
	//权限因子批量删除
	$("button.btn-deleteAll").click(function() {
		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要批量删除的记录");
			return false;
		}
		var url = contextPath + "/saa/userpower/deleteAll/" + selectedIds;
		batchDeleteRows("search",url);
	});
});