var columns = [
        {
			"data" : "type",
			"orderSequence" : [ "asc" ],
		}, {
			"data" : "typeDesc"
		}, {
			"data" : "validStatus"
		}, {
			"data" : "insertTimeForHis",
			"render" : function(data, type, row) { 
				var date = new Date(data).Format("yyyy-MM-dd hh:mm:ss");
				return date;
			}
		},{
			"data" : "operateTimeForHis",
			"render" : function(data, type, row) { 
				var date = new Date(data).Format("yyyy-MM-dd hh:mm:ss");
				return date;
			}
		},{
			"data" : null,
			"searchable" : false,
			"orderable" : false
		} ];
function rowCallback(row, data, displayIndex, displayIndexFull) {
	var url = contextPath+"/sdd/delete/" + data.type;
	$('td:eq(5)', row).html(
					"<a class='glyphicon glyphicon-eye-open' href='"+ contextPath+"/sdd/view/"+ data.type+ "'/>"
					+ "&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"+ contextPath+"/sdd/edit/"+ data.type+"?menu="+$("#bread").val()+ "'/>"
					+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "');\"/>");

}

//function setComValue( treeNode) {
//	$("#comCode").val(treeNode.id);
//	$("#comCName").val(treeNode.name);
//}
//
// DataTables initialisation
//
$(function() {	
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
	
	// 新增
	$("button.btn-create").click(function() {
		
		location.href = contextPath + "/sdd/edit/new/?editMode=create";
	});
	//
	$("button.btn-search").click(function() {				
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/sdd/search';
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
	});
});
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	