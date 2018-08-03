<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>业务系统开发框架</title>
<%-- <link href="${ctx}/static/adminlte/${adminlte_version}/bootstrap/css/bootstrap.min.css" rel="stylesheet"> --%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<br />
				<ol class="nav nav-tabs">
					<li role="presentation"><a href="${ctx }/index.jsp"><fmt:message
								key="label.sysuser.Returntothehomepage" /></a></li>
					<li role="presentation" class="active"><a href="#"><fmt:message
								key="label.sysuser.personalinformation" /></a></li>
<%-- 					<li role="presentation"><a href="${ctx }/sysusers/preSecurity"><fmt:message --%>
<%-- 								key="label.sysuser.Accountsecurity" /></a></li> --%>
				</ol>
			</div>
			<div class="col-lg-12">
				<div class="alert alert-danger error" style="display: none;">
					<span></span>.<br clear="all" />
				</div>
				<br>
				<form id="edit-profile" class="form-horizontal" role="form"
					method="post">
					<input id="id" type="hidden" name="id" value="${sysUser.id }"
						class="form-control" />
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
													<label for="userCode" class="control-label"><fmt:message
															key="label.sysuser.usercode" /></label>
												</div>
												<div class="col-xs-6">
													<input id="userCode" name="userCode" class="form-control"
														type="text" value="${sysUser.userCode}"
														disabled="disabled" /> <input id="userCode"
														name="userCode" class="form-control" type="hidden"
														value="${sysUser.userCode}" />
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="age" class="control-label"><fmt:message
															key="label.sysuser.age" /></label>
												</div>
												<div class="col-xs-6">
													<input id="age" name="age" class="form-control" type="text"
														value="${sysUser.age}" />
												</div>
											</div>
										</div>

										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group control-group">
												<div class="col-xs-6">
													<label for="birthday" class="control-label"><fmt:message
															key="label.sysuser.birthday" /></label>
												</div>
												<div class="col-xs-6 controls">
													<div class="input-group input-append date form_date">
														<input id="birthday" name="birthday" class="form-control"
															type="text"
															value="<fmt:formatDate value="${sysUser.birthday }" pattern="yyyy-MM-dd"/>" />
														<span class="input-group-addon add-on"> <i
															class="glyphicon glyphicon-th"> </i>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- row 强制换行 -->
									<div class="row">
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="userName" class="control-label"><fmt:message
															key="label.sysuser.username" /></label>
												</div>
												<div class="col-xs-6">
													<input id="userName" name="userName" class="form-control"
														type="text" value="${sysUser.userName}" />
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="sex" class="control-label"><fmt:message
															key="label.sysuser.sex" /></label>
												</div>
												<div class="col-xs-6">
													<input id="sex" name="sex" type="radio" value="0"
														<c:if test="${sysUser.sex=='0'}"> checked="checked"</c:if> />
													<fmt:message key="label.sysuser.sex.male" />
													<input id="sex" name="sex" type="radio" value="1"
														<c:if test="${sysUser.sex=='1'}"> checked="checked"</c:if> />
													<fmt:message key="label.sysuser.sex.female" />

												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="qq" class="control-label"><fmt:message
															key="label.sysuser.qq" /></label>
												</div>
												<div class="col-xs-6">
													<input id="qq" name="qq" class="form-control " type="text"
														value="${sysUser.qq }" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="postCode" class="control-label"><fmt:message
															key="label.sysuser.postcode" /></label>
												</div>
												<div class="col-xs-6">
													<input id="postCode" name="postCode" class="form-control"
														type="text" value="${sysUser.postCode}" />
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="mobilePhone" class="control-label"><fmt:message
															key="label.sysuser.mobilePhone" /></label>
												</div>
												<div class="col-xs-6">
													<input id="mobilePhone" name="mobilePhone"
														class="form-control" type="text"
														value="${sysUser.mobilePhone}" />
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="homePhone" class="control-label"><fmt:message
															key="label.sysuser.homePhone" /></label>
												</div>
												<div class="col-xs-6">
													<input id="homePhone" name="homePhone" class="form-control"
														type="text" value="${sysUser.homePhone}" />
												</div>
											</div>
										</div>


									</div>
									<div class="row">

										<div class="col-lg-8 col-md-6 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-3">
													<label for="address" class="control-label"><fmt:message
															key="label.sysuser.address" /></label>
												</div>
												<div class="col-xs-9">
													<input id="address" name="address" class="form-control"
														type="text" value="${sysUser.address}" />
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-xs-12">
											<div class="row form-group control-group">
												<div class="col-xs-6">
													<label for="email" class="control-label"><fmt:message
															key="label.sysuser.email" /></label>
												</div>
												<div class="col-xs-6">
													<input id="email" name="email" class="form-control"
														type="text" value="${sysUser.email}" disabled="disabled" />
													<input id="email" name="email" class="form-control"
														type="hidden" value="${sysUser.email}" />
												</div>
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
												<button type="submit" class="btn btn-info btn-submit">
													<fmt:message key="label.button.submit" />
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
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/sysUser/js/SysUserEdit.js"></script>
</body>
</html>