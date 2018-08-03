<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/user/list">
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
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<label for="userCode" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.usercode" /></label>
											<div class="col-xs-8">
												<input id="userCode" name="[form][userCode][value]"
													class="form-control" type="text"
													placeholder="Search userCode" /> <input
													name="[form][userCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][userCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<label for="userName" class="col-xs-4 control-label "><fmt:message
													key="label.sysuser.username" /></label>
											<div class="col-xs-8">
												<input id="userName" name="[form][userName][value]"
													class="form-control" type="text"
													placeholder="Search userName"><input
													name="[form][userName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][userName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
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
						<!-- <button type="button" class="btn btn-primary btn-sm btn-import"><fmt:message key="label.button.import" /></button>
						<button type="button" class="btn btn-primary btn-sm btn-export"><fmt:message key="label.button.export" /></button> -->
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
										<th><fmt:message key="label.sysuser.usercode" /></th>
										<th><fmt:message key="label.sysuser.username" /></th>
										<th><fmt:message key="label.sysuser.sex" /></th>
										<th><fmt:message key="label.sysuser.birthday" /></th>
										<th><fmt:message key="label.sysuser.email" /></th>
										<th><fmt:message key="label.sysuser.homePhone" /></th>
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
	<script src="${ctx}/${app_version}/sysUser/js/SysUserList.js"></script>
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
</body>
</html>