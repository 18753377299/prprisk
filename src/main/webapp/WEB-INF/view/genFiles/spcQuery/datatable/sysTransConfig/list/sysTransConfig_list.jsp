<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.990502.transconfigmanage" /></title>
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
								value="sysTransConfig_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="transType" class="control-label"><fmt:message
														key="label.sysTransConfig.list.transtype" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="transType" name="[form][transType][value]"
													class="form-control" type="text"
													placeholder="Search transType" title="" /> <input
													name="[form][transType][dataType]" type="hidden"
													value="String" /> <input
													name="[form][transType][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="transName" class="control-label"><fmt:message
														key="label.sysTransConfig.list.transname" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="transName" name="[form][transName][value]"
													class="form-control" type="text"
													placeholder="Search transName" title="" /> <input
													name="[form][transName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][transName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="selectTable" class="control-label"><fmt:message
														key="label.sysTransConfig.list.selecttable" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="selectTable" name="[form][selectTable][value]"
													class="form-control" type="text"
													placeholder="Search selectTable" title="" /> <input
													name="[form][selectTable][dataType]" type="hidden"
													value="String" /> <input
													name="[form][selectTable][queryType]" type="hidden"
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
							<fmt:message key="label.sysTransConfig.list.create" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.sysTransConfig.list.deleteAll" />
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
												key="label.sysTransConfig.list.transtype" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysTransConfig.list.transname" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysTransConfig.list.selecttable" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysTransConfig.list.selectcode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysTransConfig.list.selectname" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysTransConfig.list.control" /></th>
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
	<script>var columns = [{"data":null,"searchable":false,"orderable" : false},{ "data": "transType","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "transName","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "selectTable","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "selectCode","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "selectName","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": null,"class":"center","searchable":true,"orderable":true,"showType":true}];function rowCallback(row, data, displayIndex, displayIndexFull) {var url = contextPath + "/sysTransConfig/delete/" + data.transType;
	$('td:eq(0)', row).html(
			"&nbsp;&nbsp;<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.transType
					+ "\">"+(displayIndex + 1));

	$('td:eq(6)', row)
			.html("<a class='glyphicon glyphicon-eye-open' href='"
					+ contextPath
					+  "/sysTransConfig/view/" + data.transType+ "'/>"+
					"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
							+ "/sysTransConfig/edit/"
							+ data.transType
							+ "'/>"
							+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "');\"/>");}
$(function() {$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/sysTransConfig/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});$("button.btn-create").click(function() {location.href = contextPath + "/sysTransConfig/edit/new/?editMode=create";});$("button.btn-deleteAll").click(function() {var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		var url = contextPath + "/sysTransConfig/deleteAll/" + selectedIds;
		batchDeleteRows("search", url);});});	</script>
</body>
</html>