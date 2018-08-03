<!-- =============== Generated by SPC,Don't Modify.=============-->
<!-- =============== Generated by SPC,Don't Modify.=============-->
<!-- =============== Generated by SPC,Don't Modify.=============-->
<!-- =============== Generated by SPC,Don't Modify.=============-->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.role.list.rolemanage" /></title>
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
								value="role_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="roleCName" class="control-label"><fmt:message
														key="label.role.list.rolecname" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="roleCName" name="[form][roleCName][value]"
													class="form-control" type="text"
													placeholder="Search roleCName" title="" /> <input
													name="[form][roleCName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][roleCName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comCode" class="control-label"><fmt:message
														key="label.role.list.comcode" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="comCode" name="[form][comCode][value]"
													class="form-control" type="text"
													placeholder="Search comCode" title="" /> <input
													name="[form][comCode][dataType]" type="hidden"
													value="String" /> <input name="[form][comCode][queryType]"
													type="hidden" value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="validInd" class="control-label"><fmt:message
														key="label.role.list.validind" /> </label>
											</div>
											<div class="col-xs-6">
												<select id="validInd" name="[form][validInd][value]"
													class="form-control"><option value="">全部</option>
													<option value="1">有效</option>
													<option value="0">无效</option></select> <input
													name="[form][validInd][dataType]" type="hidden"
													value="String" /> <input
													name="[form][validInd][queryType]" type="hidden"
													value="equal" />
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
							<fmt:message key="label.role.list.create" />
						</button>
						&nbsp;
						<button type="button"
							class="btn btn-primary btn-sm btn-editSaaRole">
							<fmt:message key="label.role.list.edit" />
						</button>
						&nbsp;
						<button type="button"
							class="btn btn-primary btn-sm btn-deleteSaaRole">
							<fmt:message key="label.role.list.delete" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.role.list.deleteAll" />
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
												key="label.role.list.rolecode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.role.list.comcode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.role.list.rolecname" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.role.list.roletname" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.role.list.roleename" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.role.list.validind" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.role.list.control" /></th>
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
	<script>var columns = [{"data":null,"searchable":false,"orderable" : false},{ "data": "roleCode","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "comCode","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "roleCName","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "roleTName","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "roleEName","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "validInd","class":"left","searchable":true,"orderable":true,"showType":true,"render": function(data, type, row) { 
				if(data == "0"){
					return "无效";
				}else if(data == "1"){
					return "有效";
				}
			}},{ "data": null,"class":"center","searchable":true,"orderable":true,"showType":true}];function rowCallback(row, data, displayIndex, displayIndexFull) {var url = contextPath + "/saarole/delete/" + data.roleCode;
		$('td:eq(0)', row).html(
				"<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.roleCode
						+ "\">&nbsp;&nbsp;<a href='#'>" + (displayIndex + 1)+"</a>");
		$('td:eq(7)', row)
		.html(
				"<a class='glyphicon glyphicon-edit' href='"
						+ contextPath
						+ "/saarole/edit/"
						+ data.roleCode
						+ "'/>"
						+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
						 + url + "','" + (displayIndex + 1) 
						+ "');\"/>");}
$(function() {$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/datatable/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});$("button.btn-create").click(function() {location.href = contextPath + "/saarole/edit/new/?editMode=create";});$("button.btn-editSaaRole").click(function() {var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要编辑的记录");
			return false;
		}
		if (selectedIds.split(",").length > 1) {
			bootbox.alert("只能选择一条记录");
			return false;
		}
		var id = selectedIds;
		location.href = contextPath + "/saarole/edit/" + id;});$("button.btn-deleteSaaRole").click(function() {var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		if (selectedIds.split(",").length > 1) {
			bootbox.alert("只能选择一条记录");
			return false;
		}
		var id = selectedIds;
		var url = contextPath + "/saarole/delete/" + id;
		//当前对象父亲的下一个兄弟的值
		var siblingVal = "";
		$("input[name='checkCode']:checked").each(function() {
			siblingVal = siblingVal + $(this).parent().children("a").html();
		});
		deleteRows("resultDataTable", url,siblingVal);});$("button.btn-deleteAll").click(function() {var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要批量删除的记录");
			return false;
		}
		var url = contextPath + "/saarole/deleteAll/" + selectedIds;
		batchDeleteRows("search",url);});});	</script>
</body>
</html>