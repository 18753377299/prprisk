<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
</style>
<script
	src="${ctx}/${app_version}/saa/userpower/js/UserPowerList.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form id="saaUserPowerForm" class="form-horizontal" role="form"
				action="${ctx}/saa/userpower/list">
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
												<label for="userCode" class="control-label"><fmt:message
														key="label.saauserpower.usercode" /></label>
											</div>
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
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="systemCode" class="control-label"><fmt:message
														key="label.saauserpower.systemcode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="systemCode" name="[form][systemCode][value]"
													class="form-control" type="text"
													placeholder="Search systemCode"><input
													name="[form][systemCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][systemCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="dataOper" class="control-label"><fmt:message
														key="label.saauserpower.dataoper" /></label>
											</div>
											<div class="col-xs-8">
												<input id="dataOper" name="[form][dataOper][value]"
													class="form-control" type="text"
													placeholder="Search dataOper"><input
													name="[form][dataOper][dataType]" type="hidden"
													value="String" /> <input
													name="[form][dataOper][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="dataValue" class="control-label"><fmt:message
														key="label.saauserpower.datavalue" /></label>
											</div>
											<div class="col-xs-8">
												<input id="dataValue" name="[form][dataValue][value]"
													class="form-control" type="text"
													placeholder="Search dataValue"><input
													name="[form][dataValue][dataType]" type="hidden"
													value="String" /> <input
													name="[form][dataValue][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="factorCodeVal" class="control-label"><fmt:message
														key="label.saafactor.factorcode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="factorCodeVal1"
													name="[form][saaFactor.factorCode][value]"
													class="form-control" type="text"
													placeholder="Search factorCode" /> <input
													name="[form][saaFactor.factorCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][saaFactor.factorCode][queryType]"
													type="hidden" value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="factorDesc" class="control-label"><fmt:message
														key="label.saafactor.factordesc" /></label>
											</div>
											<div class="col-xs-8">
												<input id="factorDesc" name="[form][factorDesc][value]"
													class="form-control" type="text"
													placeholder="Search factorDesc" /> <input
													name="[form][factorDesc][dataType]" type="hidden"
													value="String" /> <input
													name="[form][factorDesc][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-6 col-xs-12">
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
							class="btn btn-primary btn-sm btn-eidtSaaUserPower">
							<fmt:message key="label.button.edit" />
						</button>
						<button type="button"
							class="btn btn-primary btn-sm btn-deleteSaaUserPower">
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
								id="resultSaaUserPowerDataTable">
								<thead>
									<tr>
										<th width="8%"><input id="checkAll" name="checkAll"
											type="checkbox">&nbsp;&nbsp;<fmt:message
												key="label.common.serialnumber" /></th>
										<th><fmt:message key="label.saafactor.factorcode" /></th>
										<th><fmt:message key="label.saauserpower.usercode" /></th>
										<th><fmt:message key="label.saauserpower.systemcode" /></th>
										<th><fmt:message key="label.saauserpower.dataoper" /></th>
										<th><fmt:message key="label.saauserpower.datavalue" /></th>
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
	<!-- 权限因子:查找带回 -->
	<div id="ajax-factorModal" class="modal fade" tabindex="-1"
		style="display: none;"></div>
</body>
</html>