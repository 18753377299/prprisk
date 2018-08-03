<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Page-Level Plugin CSS - Tables -->
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/dataTables.bootstrap.css"
	rel="stylesheet">
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/saa/task/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.inof.conditon" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="taskCode" class="control-label"><fmt:message
														key="label.saatask.taskcode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="taskCode" name="[form][taskCode][value]"
													class="form-control" type="text"
													placeholder="Search taskCode" /> <input
													name="[form][taskCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="groupName" class="control-label "><fmt:message
														key="label.saatask.groupname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="groupName" name="[form][groupName][value]"
													class="form-control" type="text"
													placeholder="Search groupName"><input
													name="[form][groupName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][groupName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="validInd" class="control-label "><fmt:message
														key="label.saatask.validind" /></label>
											</div>
											<div class="col-xs-8">
												<select id="validInd" name="[form][validInd][value]"
													class="form-control">
													<option value="" selected="selected"}><fmt:message
															key="label.common.select.all" /></option>
													<option value="1"><fmt:message
															key="label.common.select.valid" /></option>
													<option value="0"><fmt:message
															key="label.common.select.invalid" /></option>
												</select><input name="[form][validInd][dataType]" type="hidden"
													value="String" /> <input
													name="[form][validInd][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="taskCName" class="control-label "><fmt:message
														key="label.saatask.taskcname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="taskCName" name="[form][taskCName][value]"
													class="form-control" type="text"
													placeholder="Search taskCName"><input
													name="[form][taskCName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskCName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="taskTName" class="control-label "><fmt:message
														key="label.saatask.tasktname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="taskTName" name="[form][taskTName][value]"
													class="form-control" type="text"
													placeholder="Search taskTName"><input
													name="[form][taskTName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskTName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="taskEName" class="control-label "><fmt:message
														key="label.saatask.taskename" /></label>
											</div>
											<div class="col-xs-8">
												<input id="taskEName" name="[form][taskEName][value]"
													class="form-control" type="text"
													placeholder="Search taskEName"><input
													name="[form][taskEName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][taskEName][queryType]" type="hidden"
													value="begin with" />
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
				</div>
			</form>
		</div>
		<div class="col-lg-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<button type="button" class="btn btn-primary btn-sm btn-create">
							<fmt:message key="label.button.add" />
						</button>
						<button type="button"
							class="btn btn-primary btn-sm btn-eidtSaaTask">
							<fmt:message key="label.button.edit" />
						</button>
						<!--	<button type="button" class="btn btn-primary btn-sm btn-taskUrl">地址功能映射</button>  -->
						<button type="button"
							class="btn btn-primary btn-sm btn-deleteSaaTask">
							<fmt:message key="label.button.delete" />
						</button>
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.button.batchdel" />
						</button>
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
										<th width="8%"><input id="checkAll" name="checkAll"
											type="checkbox">&nbsp;&nbsp;<fmt:message
												key="label.common.serialnumber" /></th>
										<th><fmt:message key="label.saatask.taskcode" /></th>
										<th><fmt:message key="label.saatask.groupname" /></th>
										<th><fmt:message key="label.saatask.taskcname" /></th>
										<th><fmt:message key="label.saatask.tasktname" /></th>
										<th><fmt:message key="label.saatask.taskename" /></th>
										<th><fmt:message key="label.saatask.url" /></th>
										<th><fmt:message key="label.saatask.validind" /></th>
										<th><fmt:message key="label.common.operation" /></th>
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
	<script src="${ctx}/${app_version}/saa/task/js/TaskList.js"></script>
</body>
</html>
