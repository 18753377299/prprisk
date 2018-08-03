var columns = [ 
		   {
		"data" : "id"
	   },
					    
	   {
		"data" : "hostName"
	   },
					    
	   {
		"data" : "os"
	   },
					    
	   {
		"data" : "cpu"
	   },
					    
	   {
		"data" : "mem"
	   },
					    
	   {
		"data" : "hd"
	   },
					    
	   {
		"data" : "hdInfo"
	   },
					    
	   {
		"data" : "ip"
	   },
					    
	   {
		"data" : "remark"
	   },
					    
	  {
		"data" : null,
		"searchable" : false,
		"orderable" : false //����
	} ];

	function rowCallback(row, data, displayIndex, displayIndexFull) {
		var url = contextPath+"/pdfcserver/"
					+data.id
																																				;
		$('td:eq(0)', row).html(
						"<input name=\"checkCode\" type=\"checkbox\" value=\"" + 
							data.id
						+ "\">&nbsp;&nbsp;<a  href='" + contextPath
						+ "/pdfcserver/" + 
							+data.id
																																																						 + "'>" + (displayIndex + 1)
						+ "</a>");
				
		$('td:eq('+(columns.length-1)+')', row)
		.html(
				"<a class='glyphicon glyphicon-eye-open' href='"
				+ contextPath+"/pdfcserver/"+
					data.id
				+ "'/>"+"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
						+ contextPath+"/pdfcserver/"								
							+data.id
						+ "/edit'/>"
						+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"+url+"','" + (displayIndex + 1) 
							+ "','DELETE');\"/>");
	}
	
	
	//
	// DataTables initialisation
	//
	$(function() {	
		
		// �ؼ��¼�
		$("button.btn-create").click(function() {			
			location.href = contextPath + "/pdfcserver/new";
		});
		// �ؼ��¼�
		$("button.btn-search").click(
				function() {				
					var ajaxList = new AjaxList("#resultDataTable");
					ajaxList.targetUrl = contextPath + '/pdfcserver/index';
					ajaxList.columns = columns;
					ajaxList.rowCallback = rowCallback;
					ajaxList.method="GET";
					ajaxList.query();
				});
				
		$("button.btn-deleteAll").click(function() {
			var selectedIds = getSelectedIds();
			if (selectedIds == "") {
				bootbox.alert("��ѡ��Ҫɾ���ļ�¼");
				return false;
			}
			var url = contextPath + "/pdfcserver/deleteAll/" + selectedIds;
			batchDeleteRows("search",url,"DELETE");
		});
		
	});


