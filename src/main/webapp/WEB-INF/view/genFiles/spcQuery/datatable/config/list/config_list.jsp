<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.config.list.configlist" /></title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页</a></li>
				<li class="active"><i class="fa fa-table"></i> 用户管理</li>
			</ol>
		</div>
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/user/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"> <fmt:message
										key="label.dict.pleaseinputcondition" />
								</a>
							</h4>
						</div>
						<div class="panel-heading">
							<input name="pageCode" class="form-control" type="hidden"
								value="config_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="pageCode" class="control-label"><fmt:message
														key="label.config.list.pagecode" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="pageCode" name="[form][pageCode][value]"
													class="form-control" type="text" placeholder="config/list"
													title="" /> <input name="[form][pageCode][dataType]"
													type="hidden" value="String" /> <input
													name="[form][pageCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="description" class="control-label"><fmt:message
														key="label.config.list.description" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="description" name="[form][description][value]"
													class="form-control" type="text" placeholder="description"
													title="" /> <input name="[form][description][dataType]"
													type="hidden" value="String" /> <input
													name="[form][description][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-xs-12">
									<div class="btn-toolbar" style="text-align: center;">
										<button class="btn btn-primary btn-outline btn-search"
											id="search" type="button">查询</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-12" id="accordionTwo">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<button type="button" class="btn btn-primary btn-sm btn-create">
							<fmt:message key="label.config.list.create" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.config.list.deleteAll" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-export">
							<fmt:message key="label.config.list.export" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-import">
							<fmt:message key="label.config.list.import" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-backup">
							<fmt:message key="label.config.list.backup" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-recover">
							<fmt:message key="label.config.list.recover" />
						</button>
						&nbsp;
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover jqueryDataTable"
								id="resultDataTable">
								<thead>
									<tr>
										<th><input id="checkAll" name="checkAll" type="checkbox">&nbsp;&nbsp;<fmt:message
												key="label.dict.serialnumber" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.config.list.pagecode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.config.list.description" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.config.list.control" /></th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>var columns = [{"data":null,"searchable":false,"orderable" : false},{ "data": "pageCode","class":"center","searchable":true,"orderable":true,"showType":true},{ "data": "description","class":"center","searchable":true,"orderable":true,"showType":true},{ "data": null,"class":"center","searchable":true,"orderable":true,"showType":true}];function rowCallback(row, data, displayIndex, displayIndexFull) {	var url = contextPath + "/spc/queryDelete/" + data.id;
	$('td:eq(0)', row).html('&nbsp;&nbsp;<input name="checkCode" type="checkbox" value="'
			+ data.id + '">&nbsp;&nbsp;' + (displayIndex + 1));
	$('td:eq(3)', row)
			.html(
					"<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
							+ "/spc/queryEdit/"
							+ data.id
							+ "'/>"
							+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "');\"/>");
}
$(function() {$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/datatable/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});$("button.btn-create").click(function() {location.href = contextPath + "/spc/queryEdit/new?editMode=create";});$("button.btn-deleteAll").click(function() {var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		var url = contextPath + "/spc/queryBatchdel/" + selectedIds;
		batchDeleteRows("search",url);});$("button.btn-export").click(function() {		var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要导出的记录");
			return false;
		}
		if(selectedIds.indexOf(",") != -1){
			bootbox.alert("只能选择一条记录");
			return false;
		}
		open(contextPath + "/spc/export/" + selectedIds);
	});$("button.btn-import").click(function() {
		bootbox.confirm("导入会删除原有页面编号数据，确定要导入吗?", function(result) {
			if (result) { 
				showModalDialog(contextPath + "/spc/showUpload/one.dialog",'','status:no;dialogRight:0;dialogTop:200px;dialogWidth:600px;resizable:yes;help:no');
			}
		});

	});$("button.btn-backup").click(function() {open(contextPath + "/spc/backup");});$("button.btn-recover").click(function() {		bootbox.confirm("恢复会删除原有页面编号数据，确定要恢复吗?", function(result) {
			if (result) { 
				showModalDialog(contextPath + "/spc/showUpload/all.dialog",'','status:no;dialogRight:0;dialogTop:200px;dialogWidth:600px;resizable:yes;help:no');
			}
		});
	});});	</script>
</body>
</html>