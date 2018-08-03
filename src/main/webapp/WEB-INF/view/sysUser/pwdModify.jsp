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
			<ol class="nav nav-tabs">
				<li role="presentation"><a href="${ctx }/index.jsp"><fmt:message
							key="label.sysuser.Returntothehomepage" /></a></li>
				<li role="presentation" class="active"><a href="#"><fmt:message
							key="label.sysuser.personalinformation" /></a></li>
				<li role="presentation"><a href="${ctx }/sysUser/preSecurity"><fmt:message
							key="label.sysuser.Accountsecurity" /></a></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" id="editMode" name="editMode" value="update"></input>
				<input type="hidden" name="checked" value="${sysUser.checked}"></input>
				<input type="hidden" name="salt" value="${sysUser.salt}"></input> <input
					type="hidden" name="validStatus" value="${sysUser.validStatus}"></input>
				<input id="id" name="id" class="form-control" type="hidden"
					value="${sysUser.id}" /> <input id="version" name="version"
					class="form-control" type="hidden" value="${sysUser.version}" />
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse1"><fmt:message
										key="label.home.info.basic" /></a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="userCode" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.usercode" /></label>
											<div class="col-xs-8">
												<input id="userCode" name="userCode" class="form-control"
													type="text" value="${sysUser.userCode}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="userName" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.username" /></label>
											<div class="col-xs-8">
												<input id="userName" name="userName" class="form-control"
													type="text" value="${sysUser.userName}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="sex" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.sex" /></label>
											<div class="col-xs-8">
												<label class="radio-inline" for="radios-0"> <input
													type="radio" name="sex" id="sex-0" value="0"
													<c:if test="${sysUser.sex=='0'}"> checked="checked"</c:if>>
													<fmt:message key="label.sysuser.sex.male" />
												</label> <label class="radio-inline" for="radios-1"> <input
													type="radio" name="sex" id="sex-1" value="1"
													<c:if test="${sysUser.sex=='1'}"> checked="checked"</c:if>>
													<fmt:message key="label.sysuser.sex.female" />
												</label>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="age" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.age" /></label>
											<div class="col-xs-8">
												<input id="age" name="age" class="form-control" type="text"
													value="${sysUser.age }" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="birthday" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.birthday" /></label>
											<div class="col-xs-8">
												<div class="input-group input-append date form_date">
													<input id="birthday" name="birthday"
														value='<fmt:formatDate 
                                                    	value="${sysUser.birthday }" pattern="yyyy-MM-dd"/>'
														class="form-control" type="text" placeholder="yyyy-mm-dd" />
													<span class="input-group-addon add-on"> <i
														class="glyphicon glyphicon-th"> </i>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="mobilePhone" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.mobilePhone" /></label>
											<div class="col-xs-8">
												<input id="mobilePhone" name="mobilePhone"
													class="form-control" type="text"
													value="${sysUser.mobilePhone}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="officePhone" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.officePhone" /></label>
											<div class="col-xs-8">
												<input id="officePhone" name="officePhone"
													class="form-control" type="text"
													value="${sysUser.officePhone}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="homePhone" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.homePhone" /></label>
											<div class="col-xs-8">
												<input id="homePhone" name="homePhone" class="form-control"
													type="text" value="${sysUser.homePhone}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="msn" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.msn" /></label>
											<div class="col-xs-8">
												<input id="msn" name="msn" class="form-control" type="text"
													value="${sysUser.msn}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="qq" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.qq" /></label>
											<div class="col-xs-8">
												<input id="qq" name="qq" class="form-control" type="text"
													value="${sysUser.qq}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="email" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.email" /></label>
											<div class="col-xs-8">
												<input id="email" name="email" class="form-control"
													type="text" value="${sysUser.email}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="postCode" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.postcode" /></label>
											<div class="col-xs-8">
												<input id="postCode" name="postCode" class="form-control"
													type="text" value="${sysUser.postCode}" />
											</div>
										</div>
									</div>
									<div class="col-md-12 col-xs-12">
										<div class="form-group">
											<label for="address" class="col-xs-4 col-md-2 control-label"><fmt:message
													key="label.sysuser.address" /></label>
											<div class="col-xs-8 col-md-10">
												<input id="address" name="address"
													class="form-control input-md" type="text"
													value="${sysUser.address}" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse2"><fmt:message
											key="label.sysuser.userconfig" /></a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="password" class="col-xs-4 control-label"><fmt:message
														key="label.sysuser.password" /></label>
												<div class="col-xs-8">
													<input id="password" name="password" class="form-control"
														type="password" value="${sysUser.password}"
														placeholder="不输入将保留默认密码0000" />
												</div>
											</div>
										</div>
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="password" class="col-xs-4 control-label"><fmt:message
														key="label.sysuser.repeatpassword" /></label>
												<div class="col-xs-8">
													<input id="repeatPassword" name="repeatPassword"
														class="form-control" type="password" placeholder="重复密码" />
												</div>
											</div>
										</div>
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="passwordSetDate" class="col-xs-4 control-label"><fmt:message
														key="label.sysuser.passwordSetDate" /></label>
												<div class="col-xs-8 controls">
													<div class="input-group input-append date form_date">
														<input id="passwordSetDate" name="passwordSetDate"
															class="form-control" type="text"
															value="<fmt:formatDate value="${sysUser.passwordSetDate }" pattern="yyyy-MM-dd"/>" />
														<span class="input-group-addon add-on"> <i
															class="glyphicon glyphicon-th"> </i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="passwordExpireDate"
													class="col-xs-4 control-label"><fmt:message
														key="label.sysuser.passwordExpireDate" /></label>
												<div class="col-xs-8 controls">
													<div class="input-group input-append date form_date">
														<input id="passwordExpireDate" name="passwordExpireDate"
															class="form-control" type="text"
															value="<fmt:formatDate value="${sysUser.passwordExpireDate }" pattern="yyyy-MM-dd"/>" />
														<span class="input-group-addon add-on"> <i
															class="glyphicon glyphicon-th"> </i>
														</span>
													</div>
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
				</div>
			</form>
		</div>
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/sysUser/js/pwdModify.js"></script>
</body>
</html>