<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">
					<fmt:message
						key="label.home.sys.datadictionary.translationConfigurationmanagement" />
				</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message
										key="label.home.info.basic" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="transType" class="control-label"><fmt:message
														key="label.sysTransConfig.list.transtype" /></label>
											</div>
											<div class="col-xs-6">
												<input id="transType" name="transType" class="form-control"
													type="text" value="${sysTransConfig.transType}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="transName" class="control-label"><fmt:message
														key="label.sysTransConfig.list.transname" /></label>
											</div>
											<div class="col-xs-6">
												<input id="transName" name="transName" class="form-control"
													type="text" value="${sysTransConfig.transName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="selectTable" class="control-label"><fmt:message
														key="label.sysTransConfig.list.selecttable" /></label>
											</div>
											<div class="col-xs-6">
												<input id="selectTable" name="selectTable"
													class="form-control" type="text"
													value="${sysTransConfig.selectTable}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="selectCode" class="control-label"><fmt:message
														key="label.sysTransConfig.list.selectcode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="selectCode" name="selectCode"
													class="form-control" type="text"
													value="${sysTransConfig.selectCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="selectName" class="control-label"><fmt:message
														key="label.sysTransConfig.list.selectname" /></label>
											</div>
											<div class="col-xs-6">
												<input id="selectName" name="selectName"
													class="form-control" type="text"
													value="${sysTransConfig.selectName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="selectWhere" class="control-label"><fmt:message
														key="label.sysTransConfig.list.selectWhere" /></label>
											</div>
											<div class="col-xs-6">
												<input id="selectWhere" name="selectWhere"
													class="form-control" type="text"
													value="${sysTransConfig.selectWhere}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="pararmValue" class="control-label"><fmt:message
														key="label.sysTransConfig.list.pararmValue" /></label>
											</div>
											<div class="col-xs-6">
												<input id="pararmValue" name="pararmValue"
													class="form-control" type="text"
													value="${sysTransConfig.pararmValue}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="orderBy" class="control-label"><fmt:message
														key="label.sysTransConfig.list.orderBy" /></label>
											</div>
											<div class="col-xs-6">
												<input id="orderBy" name="orderBy" class="form-control"
													type="text" value="${sysTransConfig.orderBy}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="remark" class="control-label"><fmt:message
														key="label.sysTransConfig.list.remark" /></label>
											</div>
											<div class="col-xs-6">
												<input id="remark" name="remark" class="form-control"
													type="text" value="${sysTransConfig.remark}" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- row 强制换行 -->

					<!-- row 强制换行 -->


					<div class="panel panel-info">
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-submit">
												<fmt:message key="label.button.save" />
											</button>
											<button type="button" class="btn btn-default btn-return">
												<fmt:message key="label.button.return" />
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script
		src="${ctx}/${app_version}/sysTransConfig/js/SysTransConfigEdit.js"></script>
</body>
</html>