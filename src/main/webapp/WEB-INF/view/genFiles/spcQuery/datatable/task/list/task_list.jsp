<!-- =============== Generated by SPC,Don't Modify.=============-->
<!-- =============== Generated by SPC,Don't Modify.=============-->
<!-- =============== Generated by SPC,Don't Modify.=============-->
<!-- =============== Generated by SPC,Don't Modify.=============-->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.task.list.taskmanage" /></title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页</a></li>
				<li class="active"><i class="fa fa-table"></i> 用户管理11</li>
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
								value="task_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskCode" class="control-label"><fmt:message
														key="label.task.list.taskcode" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="taskCode" name="[form][taskCode][value]"
													class="form-control" type="text"
													placeholder="Search taskCode" title="" /> <input
													name="[form][taskCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="groupName" class="control-label"><fmt:message
														key="label.task.list.groupname" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="groupName" name="[form][groupName][value]"
													class="form-control" type="text"
													placeholder="Search groupName" title="" /> <input
													name="[form][groupName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][groupName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="validInd" class="control-label"><fmt:message
														key="label.task.list.validind" /> </label>
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
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskCName" class="control-label"><fmt:message
														key="label.task.list.taskcname" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="taskCName" name="[form][taskCName][value]"
													class="form-control" type="text"
													placeholder="Search taskCName" title="" /> <input
													name="[form][taskCName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskCName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskTName" class="control-label"><fmt:message
														key="label.task.list.tasktname" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="taskTName" name="[form][taskTName][value]"
													class="form-control" type="text"
													placeholder="Search taskCName" title="" /> <input
													name="[form][taskTName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskTName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskEName" class="control-label"><fmt:message
														key="label.task.list.taskename" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="taskEName" name="[form][taskEName][value]"
													class="form-control" type="text"
													placeholder="Search taskCName" title="" /> <input
													name="[form][taskEName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskEName][queryType]" type="hidden"
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
							<fmt:message key="label.task.list.create" />
						</button>
						&nbsp;
						<button type="button"
							class="btn btn-primary btn-sm btn-editSaaTask">
							<fmt:message key="label.task.list.edit" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-taskUrl">
							<fmt:message key="label.task.list.addressmapping" />
						</button>
						&nbsp;
						<button type="button"
							class="btn btn-primary btn-sm btn-deleteSaaTask">
							<fmt:message key="label.task.list.delete" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.task.list.deleteAll" />
						</button>
						&nbsp;
						<button type="button"
							class="btn btn-primary btn-sm btn-taskCodeTree">
							<fmt:message key="label.task.list.taskcodetreeview" />
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
												key="label.task.list.taskcode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.task.list.groupname" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.task.list.taskcname" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.task.list.taskename" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.task.list.validind" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.task.list.control" /></th>
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
	<script>
		var columns = [ {
			"data" : null,
			"searchable" : false,
			"orderable" : false
		}, {
			"data" : "taskCode",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "groupName",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "taskCName",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "taskEName",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "validInd",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true,
			"render" : function(data, type, row) {
				if (data == "0") {
					return "无效";
				} else if (data == "1") {
					return "有效";
				}
			}
		}, {
			"data" : null,
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		} ];
		function rowCallback(row, data, displayIndex, displayIndexFull) {
			var url = contextPath + "/saatask/delete/" + data.taskCode;
			$('td:eq(0)', row)
					.html(
							"<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.taskCode
					+ "\">&nbsp;&nbsp;<a  href='" + contextPath
					+ "/saatask/view/" + data.taskCode + "'>"
									+ (displayIndex + 1) + "</a>");
			$('td:eq(6)', row)
					.html(
							"&nbsp;<a class='glyphicon glyphicon-eye-open' href='" 
					+ contextPath 
					+ "/saatask/view/" 
					+ data.taskCode 
					+ "'/>"
									+ "&nbsp;<a class='glyphicon glyphicon-edit' href='" 
					+ contextPath 
					+ "/saatask/edit/" 
					+ data.taskCode 
					+ 
					"'/>"
									+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
									+ url
									+ "','"
									+ (displayIndex + 1)
									+ "');\"/>");
		}
		$(function() {
			$("button.btn-search").click(
					function() {
						var ajaxList = new AjaxList("#resultDataTable");
						ajaxList.targetUrl = contextPath + '/datatable/search?'
								+ $("#form").serialize();
						ajaxList.columns = columns;
						ajaxList.rowCallback = rowCallback;
						ajaxList.query();
					});
			$("button.btn-create").click(
					function() {
						location.href = contextPath
								+ "/saatask/edit/new/?editMode=create";
					});
			$("button.btn-editSaaTask").click(function() {
				var selectedIds = getSelectedIds();
				if (selectedIds == "") {
					bootbox.alert("请选择要编辑的记录");
					return false;
				}
				if (selectedIds.split(",").length > 1) {
					bootbox.alert("只能选择一条记录");
					return false;
				}
				var id = selectedIds.split(",")[0];
				location.href = contextPath + "/saatask/edit/" + id;
			});
			$("button.btn-taskUrl").click(
					function() {
						var selectedIds = getSelectedIds();
						if (selectedIds == "") {
							bootbox.alert("请选择要地址功能映射的记录");
							return false;
						}
						if (selectedIds.split(",").length > 1) {
							bootbox.alert("只能选择一条记录");
							return false;
						}
						location.href = contextPath + "/saatask/taskUrl/"
								+ selectedIds;
					});
			$("button.btn-deleteSaaTask").click(
					function() {
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
						var url = contextPath + "/saatask/delete/" + id;
						//当前对象父亲的下一个兄弟的值
						var siblingVal = "";
						$("input[name='checkCode']:checked").each(
								function() {
									siblingVal = siblingVal
											+ $(this).parent().children("a")
													.html();
								});
						deleteRows('resultDataTable', url, siblingVal);
					});
			$("button.btn-deleteAll").click(function() {
				var selectedIds = getSelectedIds();
				if (selectedIds == "") {
					bootbox.alert("请选择要删除的记录");
					return false;
				}
				var url = contextPath + "/saatask/deleteAll/" + selectedIds;
				batchDeleteRows("search", url);
			});
			$("button.btn-taskCodeTree").click(function() {
				location.href = contextPath + "/saatask/taskCodeTree";
			});
		});
	</script>
</body>
</html>