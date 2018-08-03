<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>业务系统开发框架</title>
</head>
<body>
	<div class="container">
		<ul class="nav nav-tabs">
			<li role="presentation"><a href="${ctx }/index.jsp"><fmt:message
						key="label.sysuser.Returntothehomepage" /></a></li>
			<li role="presentation"><a href="${ctx }/sysusers/preProfile"><fmt:message
						key="label.sysuser.personalinformation" /></a></li>
			<li role="presentation" class="active"><a href="#"><fmt:message
						key="label.sysuser.Securityofaccount" /></a></li>
		</ul>
		<div class="row">
			<div class="span9 text-center">
				<br>
				<legend class="text-success">
					<fmt:message key="label.sysuser.Securitycenter" />
				</legend>

			</div>

		</div>
		<div class="row">
			<div class="span9">
				<div class="col-sm-4 text-right">
					<span><fmt:message key="label.sysuser.Securitylevel" /></span>
				</div>
				<div class="col-sm-5">
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="80"
							aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
							<span><fmt:message key="label.sysuser.Securitylevel.high" /></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span9">
				<div class="col-sm-4 text-right">
					<span><fmt:message key="label.sysuser.password" /></span>
				</div>
				<div class="col-sm-5">
					<a href="#updatePasswordModal" data-toggle="modal"
						data-backdrop="static"><fmt:message
							key="label.sysuser.modifypassword" /></a>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="span9">
				<div class="col-sm-4 text-right">
					<span><fmt:message key="label.sysuser.emailbind" /></span>
				</div>
				<div class="col-sm-5">
					<span style="color: green"><fmt:message
							key="label.sysuser.emailbindison" /></span>&nbsp;&nbsp;<a
						href="#updateEmailModal" data-toggle="modal"
						data-backdrop="static"><fmt:message key="label.sysuser.modify" /></a>

				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="span9">
				<div class="col-sm-4 text-right">
					<span><fmt:message key="label.sysuser.phonebind" /></span>
				</div>
				<div class="col-sm-5">
					<fmt:message key="label.sysuser.open" />
					<a href="#phoneModal" data-toggle="modal" data-backdrop="static"><fmt:message
							key="label.sysuser.bindphonenumber" /></a>
				</div>
			</div>
		</div>
		<!-- 修改密码modal -->
		<div class="modal fade" id="updatePasswordModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<strong style="color: green; font-size: 24px"><fmt:message
								key="label.sysuser.modifypassword" /></strong>
					</div>
					<div class="modal-body">
						<form action="${ctx }/sysUser/changePassword"
							class="form-horizontal" role="form" method="post"
							id="changePassword">
							<input type="hidden" class="form-control" id="userCode"
								value="${userCode}" name="userCode">
							<div class="form-group">
								<div class="col-lg-3 ">
									<label class="control-label"><i style="color: red">*</i>
										<fmt:message key="label.sysuser.oldpassword" />:</label>
								</div>
								<div class="col-lg-5">
									<input type="password" class="form-control" id="inputPassword"
										placeholder="请输入原始密码" name="oldPassword">
								</div>
								<div class="col-sm-4" id="message1"></div>
							</div>
							<div class="form-group">
								<div class="col-lg-3 ">
									<label class="control-label"><i style="color: red">*</i>
										<fmt:message key="label.sysuser.inputnewpassword" />:</label>
								</div>
								<div class="col-lg-5">
									<input placeholder="不少于6位的字母数字组合" type="password"
										id="newPassword" name="password" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-3 ">
									<label class="control-label"><i style="color: red">*</i>
										<fmt:message key="label.sysuser.confirmnewpassword" />:</label>
								</div>
								<div class="col-lg-5">
									<input placeholder="不少于6位的字母数字组合" type="password"
										id="newPassword1" class="form-control" name="confirm_password">
								</div>
							</div>
							<div class="form-group">
								<div class=" col-lg-offset-4 col-lg-4">
									<button type="submit" class="btn btn-success">
										<fmt:message key="label.button.submit" />
									</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<fmt:message key="label.button.return" />
									</button>
								</div>
							</div>

						</form>
					</div>
					<!--/.modal-body-->
				</div>
				<!--/.modal-content-->
			</div>
			<!--/.modal-dialog-->
		</div>
		<!-- 更改邮箱modal -->
		<div class="modal fade" id="updateEmailModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<strong style="color: green; font-size: 24px"><fmt:message
								key="label.sysuser.changeEmail" /></strong>
					</div>
					<div class="modal-body">
						<form action="${ctx }/sysUser/changeEmail" class="form-horizontal"
							role="form" method="post" id="email">
							<input type="hidden" class="form-control" id="userCode"
								value="${userCode}" name="userCode">
							<div class="form-group">
								<div class="col-lg-3 ">
									<label for="inputEmail3" class="control-label"><i
										style="color: red">*</i> <fmt:message
											key="label.sysuser.newemailaddr" />:</label>
								</div>
								<div class="col-lg-5">
									<input type="email" class="form-control" id="inputEmail3"
										placeholder="请输入正确的email" name="email">
								</div>
								<div class="col-lg-4" id="message3"></div>
							</div>
							<div class="form-group">
								<div class=" col-lg-offset-3 col-lg-6">
									<button type="button" class="btn btn-info" id="button0">
										<fmt:message key="label.sysuser.sendemailcode" />
									</button>
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-3 ">
									<label for="emailcode" class="control-label"><i
										style="color: red">*</i> <fmt:message
											key="label.sysuser.emailcode" />:</label>
								</div>
								<div class="col-lg-5">
									<input placeholder="请输入验证码,注意区分大小写" type="text" id="emailcode"
										class="form-control" name="emailcode"> <input
										type="hidden" id="code" name="code">
								</div>
								<div class="col-lg-4" id="message2"></div>
							</div>
						</form>
						<div class="text-center">
							<button type="button" class="btn btn-success" id="submit">
								<fmt:message key="label.button.submit" />
							</button>
							&nbsp;&nbsp;
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								<fmt:message key="label.button.return" />
							</button>
						</div>
					</div>
					<!--/.modal-body-->
				</div>
				<!--/.modal-content-->
			</div>
			<!--/.modal-dialog-->
		</div>
		<!-- 开启手机绑定modal -->
		<div class="modal fade" id="phoneModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<strong style="color: green; font-size: 24px"><fmt:message
								key="label.sysuser.phoneModal" /></strong>
					</div>
					<div class="modal-body">
						<form action="${ctx }/sysUser/mobilePhone" class="form-horizontal"
							role="form" method="post" id="mobilePhone">
							<input type="hidden" class="form-control" id="userCode"
								value="${userCode}" name="userCode">
							<div class="form-group">
								<div class="col-lg-3 ">
									<label for="inputPhone" class="control-label"><i
										style="color: red">*</i> <fmt:message
											key="label.sysuser.mobilePhone" />:</label>
								</div>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="inputPhone"
										placeholder="请输入正确的手机号" name="mobilePhone">
								</div>
							</div>
							<div class="form-group">
								<div class=" col-lg-offset-3 col-lg-6">
									<button type="button" class="btn btn-info" id="button1">
										<fmt:message key="label.sysuser.sendmessagecode" />
									</button>
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-3 ">
									<label for="messagecode" class="control-label"><i
										style="color: red">*</i> <fmt:message
											key="label.sysuser.messagecode" />:</label>
								</div>
								<div class="col-lg-5">
									<input placeholder="请输入四位验证码" type="text" id="messagecode"
										class="form-control">
								</div>
							</div>
							<div class="form-group">
								<div class=" col-lg-offset-3 col-lg-4">
									<button type="submit" class="btn btn-success">
										<fmt:message key="label.button.submit" />
									</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<fmt:message key="label.button.return" />
									</button>
								</div>
							</div>

						</form>
					</div>
					<!--/.modal-body-->
				</div>
				<!--/.modal-content-->
			</div>
			<!--/.modal-dialog-->
		</div>
	</div>
	<script src="${ctx }/js/sysUser/Security.js"></script>
</body>
</html>