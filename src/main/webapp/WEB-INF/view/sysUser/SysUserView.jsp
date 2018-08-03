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
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label"><fmt:message
														key="label.sysuser.usercode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.userCode}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userName" class="control-label"><fmt:message
														key="label.sysuser.username" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.userName}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="sex" class="control-label"><fmt:message
														key="label.sysuser.sex" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<c:if test="${sysUser.sex=='0'}">
													<fmt:message key="label.sysuser.sex.male" />
												</c:if>
												<c:if test="${sysUser.sex=='1'}">
													<fmt:message key="label.sysuser.sex.female" />
												</c:if>
											</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="mobilePhone" class="control-label"><fmt:message
														key="label.sysuser.mobilePhone" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.mobilePhone}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="officePhone" class="control-label"><fmt:message
														key="label.sysuser.officePhone" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.officePhone}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="homePhone" class="control-label"><fmt:message
														key="label.sysuser.homePhone" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.homePhone}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="msn" class="control-label"><fmt:message
														key="label.sysuser.msn" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.msn}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="qq" class="control-label"><fmt:message
														key="label.sysuser.qq" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.qq}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="email" class="control-label"><fmt:message
														key="label.sysuser.email" /></label>
											</div>
											<div class="col-xs-6 controls form-control-static">
												${sysUser.email}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="postCode" class="control-label"><fmt:message
														key="label.sysuser.postcode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.postCode}</div>
										</div>
									</div>
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="address" class="control-label"><fmt:message
														key="label.sysuser.address" /></label>
											</div>
											<div class="col-xs-9 controls form-control-static">
												${sysUser.address}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseFour"><fmt:message
										key="label.home.info.others" /></a>
							</h4>
						</div>
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="pwdExpMonth" class="control-label"><fmt:message
														key="label.sysuser.lastTime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.lastTime}</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="passwordExpireDate" class="control-label"><fmt:message
														key="label.sysuser.lastIp" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
											        ${sysUser.lastIp }
<%-- 												<fmt:formatDate value="${sysUser.lastIp }" --%>
<%-- 													pattern="yyyy-MM-dd " /> --%>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="maxOverDueCount" class="control-label"><fmt:message
														key="label.sysuser.passwordSetDate" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.passwordSetDate}</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="maxOverDueFee" class="control-label"><fmt:message
														key="label.sysuser.passwordExpireDate" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.passwordExpireDate}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="validStatus" class="control-label"><fmt:message
														key="label.sysuser.regTime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.regTime}</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="pwdDepth" class="control-label"><fmt:message
														key="label.sysuser.operateTimeForHis" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysUser.operateTimeForHis}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
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
	<script src="${ctx}/${app_version}/sysUser/js/SysUserEdit.js"></script>
</body>
</html>