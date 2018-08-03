/**
 * Ajax模式List页面支持JS
 */
function AjaxList(selector) {
	this.selector = selector;
	this.targetUrl = null;
	this.formId="form";
	this.columns = {};
	this.rowCallback = {};
	this.datatable = {};
	this.method="POST";

	// init checkAll bind
	$("#checkAll").click(function() {
		var checkFlag = this.checked;
		$("[name = checkCode]:checkbox").each(function() {
			this.checked = checkFlag;
		});

	});
	$.extend( $.fn.dataTable.defaults, {
		"paging": true,
		"lengthChange": true,
		"searching": false,
		"ordering": true,
		"info": true,
		"processing" : true,
		"serverSide" : true,
//		"searching" : false, // 搜索
//		"autoWidth" : false,
//        "scrollX": true,
//		// "dom" : '<"top"lp>rt<"bottom"pi><"clear">',
//		// dom: 'T<"clear">lfrt<"bottom"pi><"clear">',
//		//dom : '<"top"plT>rt<"bottom"pi><"clear">',
//        //dom : '<Tr>t<pli>',
//        "dom": '<"top">rt<"bottom"filp><"clear">',
	    "stateSave": true,
//	    "pagingType" : "full_numbers",
		"language" : {
			"lengthMenu" : "每页显示 _MENU_ 条记录",
			"zeroRecords" : "没有检索到数据",
			"info" : "当前第  _PAGE_ 页 （共   _PAGES_ 页  _TOTAL_ 条记录）",
			"infoEmpty" : "没有数据",
			"infoFiltered" : "(filtered from _MAX_ total records)",
			"processing" : "数据加载中...",
			"decimal" : ",",
			"thousands" : "",
			"paginate" : {
				"first" : "<span class='glyphicon glyphicon-step-backward'></span>",
				"previous" : "<span class='glyphicon glyphicon-backward'></span>",
				"next" : "<span class='glyphicon glyphicon-forward'></span>",
				"last" : "<span class='glyphicon glyphicon-step-forward'></span>"
			}
		},
		// "lengthMenu": [[10, 25, 50, -1], [10, 25, 50,"All"]], 
		"destroy" : true,
	} );
}
(function($){  
    $.fn.serializeJson=function(){  
        var serializeObj={};  
        var array=this.serializeArray();   
        $(array).each(function(){  
            if(serializeObj[this.name]){  
                if($.isArray(serializeObj[this.name])){  
                    serializeObj[this.name].push(this.value);  
                 }else{  
                     serializeObj[this.name]=[serializeObj[this.name],this.value];  
                 }  
             }else{  
                 serializeObj[this.name]=this.value;   
             }  
         });  
         return serializeObj;  
     };  
 })(jQuery);  

AjaxList.prototype.query = function() {
	var innerDataTable = $(this.selector);
	var innerTargetUrl = this.targetUrl;
	var innerFormId = this.formId;
	var innerColumns = this.columns;
	var innerRowCallback = this.rowCallback;
	var method = this.method;
	if(this.database==null){
		this.datatable = innerDataTable.dataTable({
			"ajax" : {
				url : innerTargetUrl,
				error : handleAjaxError,
				data: $("#"+innerFormId).serializeJson(),
				"method" : method,
			}, 
			"columns" : innerColumns,
			"rowCallback" : innerRowCallback
		});
	}else{
		this.datatable.ajax.reload();
	}
};
function handleAjaxError( xhr, textStatus, error ) {
	if (xhr.status == '401' && error == 'Unauthorized' ) {
		bootbox.alert( '没有授权，不能访问' );
	}else{
		bootbox.alert(textStatus+error);
		history.go(0);
	}
}

function getSelectedIds() {
	var selectIds = "";
	$("input[name='checkCode']:checked").each(function() {
		selectIds = selectIds + $(this).val() + ",";
	});
	if (selectIds != "") {
		selectIds = selectIds.substr(0, selectIds.length - 1);
	}
	return selectIds;
}

function deleteRows(tabId, url, displayIndex,method) {
	if(method==null||method==""){
		method="POST";
	}
	bootbox.confirm("确定要删除吗?", function(result) {
		if (result) {
			$.ajax({
				type : "POST",
				url : url,
				data : {
                 "_method":method,
              },
				async : false,
				success : function(obj) {
					if (obj.status == '200') {
						bootbox.alert("删除成功");
						$("#" + tabId).find("tr").eq(displayIndex).remove();
					}else if(obj.status == '500'){
						bootbox.alert(obj.statusText);
					}
					else{
						history.go(0);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					flag = false;
					bootbox.alert(textStatus + errorThrown);
				}
			});
		}
	});
}

function disableRows(tabId, url, displayIndex) {
	bootbox.confirm("确定要禁用用户吗?", function(result) {
		if (result) {
			$.ajax({
				type : "POST",
				url : url,
				data : "",
				async : false,
				success : function(obj) {
					if (obj.status == '200') {
						bootbox.alert("禁用成功");
						//$("#" + tabId).find("tr").eq(displayIndex).remove();
					}else if(obj.status == '500'){
						bootbox.alert(obj.statusText);
					}else{
						history.go(0);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					flag = false;
					bootbox.alert(textStatus + errorThrown);
				}
			});
		}
	});
}

function batchDeleteRows(buttonId, url,method) {
	bootbox.confirm("确定要删除吗?", function(result) {
		if (result) {
			$.ajax({
				type : "POST",
				url : url,
				data : {
	                 "_method":method,
	              },
				async : false,
				success : function(obj) {
					if (obj.status == '200') {
						bootbox.alert("删除成功");
						$("#" + buttonId).click();
					}else if(obj.status == '500'){
						bootbox.alert(obj.statusText);
					}else{
						history.go(0);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					flag = false;
					bootbox.alert(textStatus + errorThrown);
				}
			});
		}
	});
}