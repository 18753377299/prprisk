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
		}, {
			"data" : null,
			"searchable" : false,
			"orderable" : false
		} ];
function rowCallback(row, data, displayIndex, displayIndexFull) {
	var url = contextPath + "/sysusers/" + data.id+"/delete";
	$('td:eq(0)', row).html(
			"<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.id
					+ "\">&nbsp;&nbsp;<a  href='" + contextPath
					+ "/sysusers/" + data.id + "/show'>" + (displayIndex + 1)
					+ "</a>");
	$('td:eq(7)', row)
			.html(
					"<a class='glyphicon glyphicon-eye-open' href='"
					+ contextPath
					+ "/sysusers/"
					+ data.id+"/show"
					+ "'/>"+"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
				     		+ "/sysusers/"+ data.id+"/edit/" 
							+ 
							"'/>" 
							+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "','DELETE');\"/>");

}

//function setComValue( treeNode) {
//	$("#comCode").val(treeNode.id);
//	$("#comCName").val(treeNode.name);
//}
//
// DataTables initialisation
//

$(function() {
	// 控件事件
	$("button.btn-create").click(function() {
		location.href = contextPath + "/sysusers/new";
	});
	// 控件事件
	$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/sysusers/index';
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
		var url = contextPath + "/sysUser/deleteAll/" + selectedIds;
		batchDeleteRows("search",url);
	});
	//zTree选择树放到了公用部分ZTreeCode.jspf,调用方法详解 ZTreeCode.js
	$("#comCName").bind(
			'click input propertychange', function() {
				showComCodeTree("comCName"," setComValue( treeNode)");
			});
	

});

	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	