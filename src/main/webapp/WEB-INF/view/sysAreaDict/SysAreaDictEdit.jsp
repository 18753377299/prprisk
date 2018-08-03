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
					<fmt:message key="label.home.sys.datadictionary.districtmanagement" />
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
												<label for="areaCode" class="control-label"><fmt:message
														key="label.sysAreaDict.list.areacode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="areaCode" name="areaCode" class="form-control"
													type="text" value="${sysAreaDict.areaCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="areaName" class="control-label"><fmt:message
														key="label.sysAreaDict.list.areaname" /></label>
											</div>
											<div class="col-xs-6">
												<input id="areaName" name="areaName" class="form-control"
													type="text" value="${sysAreaDict.areaName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="shortCode" class="control-label"><fmt:message
														key="label.sysAreaDict.list.shortCode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="shortCode" name="shortCode" class="form-control"
													type="text" value="${sysAreaDict.shortCode}" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="fullName" class="control-label"><fmt:message
														key="label.sysAreaDict.list.fullname" /></label>
											</div>
											<div class="col-xs-6">
												<input id="fullName" name="fullName" class="form-control"
													type="text" value="${sysAreaDict.fullName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="areaLevel" class="control-label"><fmt:message
														key="label.sysAreaDict.list.arealevel" /></label>
											</div>
											<div class="col-xs-6">
												<select id="areaLevel" name="areaLevel" class="form-control">
													<option value="0.0"
														${'0.0' eq sysAreaDict.areaLevel ? 'selected="selected"' : ''}>请选择</option>
													<option value="1.0"
														${'1.0' eq sysAreaDict.areaLevel ? 'selected="selected"' : ''}>省级</option>
													<option value="2.0"
														${'2.0' eq sysAreaDict.areaLevel ? 'selected="selected"' : ''}>市级</option>
													<option value="3.0"
														${'3.0' eq sysAreaDict.areaLevel ? 'selected="selected"' : ''}>区、县级</option>
													<option value="4.0"
														${'4.0' eq sysAreaDict.areaLevel ? 'selected="selected"' : ''}>街道级</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="serialNo" class="control-label"><fmt:message
														key="label.sysAreaDict.list.serialNo" /></label>
											</div>
											<div class="col-xs-6">
												<input id="serialNo" name="serialNo" class="form-control"
													type="text" value="${sysAreaDict.serialNo}" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="upperCode" class="control-label"><fmt:message
														key="label.sysAreaDict.list.upperCode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="upperCode" name="upperCode" class="form-control"
													type="text" value="${sysAreaDict.upperCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="postCode" class="control-label"><fmt:message
														key="label.sysAreaDict.list.postCode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="postCode" name="postCode" class="form-control"
													type="text" value="${sysAreaDict.postCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="isValid" class="control-label"><fmt:message
														key="label.sysAreaDict.list.isValid" /></label>
											</div>
											<div class="col-xs-6">
												<select id="isValid" name="isValid" class="form-control">
													<option value="Y"
														${'Y' eq sysAreaDict.isValid ? 'selected="selected"' : ''}><fmt:message
															key="label.common.select.valid" /></option>
													<option value="N"
														${'N' eq sysAreaDict.isValid ? 'selected="selected"' : ''}><fmt:message
															key="label.common.select.invalid" /></option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="remark" class="control-label"><fmt:message
														key="label.sysAreaDict.list.remark" /></label>
											</div>
											<div class="col-xs-6">
												<input id="remark" name="remark" class="form-control"
													type="text" value="${sysAreaDict.remark}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="oftenFlag" class="control-label"><fmt:message
														key="label.sysAreaDict.list.oftenFlag" /></label>
											</div>
											<div class="col-xs-6">
												<select id="oftenFlag" name="oftenFlag" class="form-control">
													<option value="0"
														${'' eq sysAreaDict.oftenFlag ? 'selected="selected"' : ''}>请选择</option>
													<option value="1"
														${'1' eq sysAreaDict.oftenFlag ? 'selected="selected"' : ''}>1级</option>
													<option value="2"
														${'2' eq sysAreaDict.oftenFlag ? 'selected="selected"' : ''}>2级</option>
													<option value="3"
														${'3' eq sysAreaDict.oftenFlag ? 'selected="selected"' : ''}>3级</option>
												</select>
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
	<script src="${ctx}/${app_version}/sysAreaDict/js/SysAreaDictEdit.js"></script>
</body>
</html>