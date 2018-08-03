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
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li class="active"><i class="fa fa-table"></i>
				<fmt:message key="label.home.sys.datadictionary.districtmanagement" /></li>
			</ol>
		</div>
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
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.areaCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="areaName" class="control-label"><fmt:message
														key="label.sysAreaDict.list.areaname" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.areaName}</div>
										</div>
									</div>

									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="shortCode" class="control-label"><fmt:message
														key="label.sysAreaDict.list.shortCode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.shortCode}</div>
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
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.fullName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="areaLevel" class="control-label"><fmt:message
														key="label.sysAreaDict.list.arealevel" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<c:if test="${sysAreaDict.areaLevel=='1.0'}">省级</c:if>
												<c:if test="${sysAreaDict.areaLevel=='2.0'}">市级</c:if>
												<c:if test="${sysAreaDict.areaLevel=='3.0'}">区、县级</c:if>
												<c:if test="${sysAreaDict.areaLevel=='4.0'}">街道级</c:if>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="serialNo" class="control-label"><fmt:message
														key="label.sysAreaDict.list.serialNo" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.serialNo}</div>
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
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.upperCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="postCode" class="control-label"><fmt:message
														key="label.sysAreaDict.list.postCode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.postCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="isValid" class="control-label"><fmt:message
														key="label.sysAreaDict.list.isValid" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<c:if test="${sysAreaDict.isValid=='Y'}">
													<fmt:message key="label.common.select.valid" />
												</c:if>
												<c:if test="${sysAreaDict.isValid=='N'}">
													<fmt:message key="label.common.select.invalid" />
												</c:if>
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
											<div class="col-xs-6 form-control-static">
												${sysAreaDict.remark}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="oftenFlag" class="control-label"><fmt:message
														key="label.sysAreaDict.list.oftenFlag" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<c:if test="${sysAreaDict.oftenFlag=='1'}">1级</c:if>
												<c:if test="${sysAreaDict.oftenFlag=='2'}">2级</c:if>
												<c:if test="${sysAreaDict.oftenFlag=='3'}">3级</c:if>
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