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
				action="${ctx}/saa/role/list">
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
												<label for="roleCode" class="control-label"><fmt:message
														key="label.saarole.rolecode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleCode" name="[form][roleCode][value]"
													class="form-control" type="text"
													placeholder="Search roleCode" /> <input
													name="[form][roleCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][roleCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="comCode" class="control-label "><fmt:message
														key="label.saarole.comcode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="comCode" name="[form][comCode][value]"
													class="form-control" type="text"
													placeholder="Search comCode"><input
													name="[form][comCode][dataType]" type="hidden"
													value="String" /> <input name="[form][comCode][queryType]"
													type="hidden" value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="validInd" class="control-label "><fmt:message
														key="label.saarole.validind" /></label>
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
												<label for="roleCName" class="control-label "><fmt:message
														key="label.saarole.rolecname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleCName" name="[form][roleCName][value]"
													class="form-control" type="text"
													placeholder="Search roleCName"><input
													name="[form][roleCName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][roleCName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="roleTName" class="control-label "><fmt:message
														key="label.saarole.roletname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleTName" name="[form][roleTName][value]"
													class="form-control" type="text"
													placeholder="Search roleTName"><input
													name="[form][roleTName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][roleTName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="roleEName" class="control-label "><fmt:message
														key="label.saarole.roleename" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleEName" name="[form][roleEName][value]"
													class="form-control" type="text"
													placeholder="Search roleEName"><input
													name="[form][roleEName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][roleEName][queryType]" type="hidden"
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
							class="btn btn-primary btn-sm btn-eidtSaaRole">
							<fmt:message key="label.button.edit" />
						</button>
						<button type="button"
							class="btn btn-primary btn-sm btn-deleteSaaRole">
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
										<th><fmt:message key="label.saarole.rolecode" /></th>
										<th><fmt:message key="label.saarole.comcode" /></th>
										<th><fmt:message key="label.saarole.rolecname" /></th>
										<th><fmt:message key="label.saarole.roletname" /></th>
										<th><fmt:message key="label.saarole.roleename" /></th>
										<th><fmt:message key="label.saarole.validind" /></th>
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
	<script src="${ctx}/${app_version}/saa/role/js/RoleList.js"></script>
</body>
</html>