<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.edit.list.editlist" /></title>
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
								value="edit_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="pageCode" class="control-label"><fmt:message
														key="label.edit.list.pagecode" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="pageCode" name="[form][pageCode][value]"
													class="form-control" type="text"
													placeholder="Search pageCode" title="" /> <input
													name="[form][pageCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][pageCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="description" class="control-label"><fmt:message
														key="label.edit.list.description" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="description" name="[form][description][value]"
													class="form-control" type="text"
													placeholder="Search description" title="" /> <input
													name="[form][description][dataType]" type="hidden"
													value="String" /> <input
													name="[form][description][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="title" class="control-label"><fmt:message
														key="label.edit.list.title" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="title" name="[form][title][value]"
													class="form-control" type="text" placeholder="Search title"
													title="" /> <input name="[form][title][dataType]"
													type="hidden" value="String" /> <input
													name="[form][title][queryType]" type="hidden"
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
							<fmt:message key="label.edit.list.create" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.edit.list.deleteAll" />
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
												key="label.edit.list.pagecode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.edit.list.description" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.edit.list.title" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.edit.list.control" /></th>
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
	<script>var columns = [{"data":null,"searchable":false,"orderable" : false},{ "data": "pageCode","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "description","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "title","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": null,"class":"left","searchable":true,"orderable":true,"showType":true}];function rowCallback(row, data, displayIndex, displayIndexFull) {var url = contextPath + "/spc/editDelete/" + data.id;
	$('td:eq(0)', row).html('&nbsp;&nbsp;<input name="checkCode" type="checkbox" value="'
			+ data.id + '">&nbsp;&nbsp;' + (displayIndex + 1));
	$('td:eq(4)', row)
			.html(
							"<a class='glyphicon glyphicon-eye-open' href='"
					+ contextPath
					+ "/spc/showEdit/"
					+ data.pageCode
					+ "'/>"+"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
							+ "/spc/edit/"
							+ data.id
							+ "'/>"
							+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "');\"/>");							}
$(function() {$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/datatable/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});$("button.btn-create").click(function() {location.href = contextPath + "/spc/edit/new?editMode=create";});$("button.btn-deleteAll").click(function() {});});	</script>
</body>
</html>