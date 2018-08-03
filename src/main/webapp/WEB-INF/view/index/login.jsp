<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>业务系统开发框架</title>
<!-- Core CSS - Include with every page -->
<link rel="stylesheet"
	href="${ctx}/static/adminlte/${adminlte_version}/bootstrap/css/bootstrap.min.css">
<!--[if IE 7]> <link href="${ctx}/static/bsadmin/${bsadmin_version}/ie-patch/font-awesome-ie7.min.css"><![endif]-->
<!--[if !IE 7]><!-->
<link
	href="${ctx}/static/font-awesome/${font_awesome_version}/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
<!--<![endif]-->
<!-- Ionicons -->
<link
	href="${ctx}/static/ionicons/${ionicons_version}/css/ionicons.min.css"
	rel="stylesheet">
<!-- Theme CSS - Include with every page -->
<link
	href="${ctx}/static/adminlte/${adminlte_version}/dist/css/AdminLTE.min.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/iCheck/square/blue.css"
	rel="stylesheet">
<script language="javascript">
	if (self != top) {
		top.location = self.location;
	}
</script>
<shiro:authenticated>
	<script type="text/javascript">
		window.location.href = '${ctx}/';
	</script>
</shiro:authenticated>
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="#">业务系统开发框架 </a><br />
			PDFB4
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">
<!-- 			Sign in to start your session -->          
			</p>

			<form id="form" role="form" method="post"
				action="<c:url value='login'/>">
				<div class="form-group has-feedback">
					<input id="username" type="username" class="form-control"
						name="username" value="${username}" placeholder="用户名">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input id="password" type="password" class="form-control"
						name="password" placeholder="密码" value="pdfb4@2016">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<c:if test="${needCaptcha==true}">
					<div id="captchaDiv" class="form-group has-feedback"
						style="display: block;">
						<div class="row">
							<div class="col-xs-4">

										<input type="captcha" class="form-control" name="captcha"
									placeholder="">
							</div>
							<div class="col-xs-8">
						
									<img id="img_captcha" src="${ctx}/servlet/captchaCode"
									title="点击更换" />
							</div>
						</div>


					</div>
				</c:if>
				<shiro:notAuthenticated>
					<p id="loginBoxMsg" class="login-box-msg">
						<c:choose>
							<c:when
								test="${shiroLoginFailure eq 'ins.platform.shiro.exception.CaptchaException'}">

								<i class="fa fa-exclamation-triangle"></i>验证码错误，请重试.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'ins.platform.shiro.exception.UsernameEmptyException'}">
								<i class="fa fa-exclamation-triangle"></i>用户名不能为空.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'ins.platform.shiro.exception.PasswordEmptyException'}">
								<i class="fa fa-exclamation-triangle"></i>密码不能为空.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'org.apache.shiro.authc.UnknownAccountException'}">


								<i class="fa fa-exclamation-triangle"></i>用户${username}不存在.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'org.apache.shiro.authc.IncorrectCredentialsException'}">

								<i class="fa fa-exclamation-triangle"></i>用户或密码错误.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'org.apache.shiro.authc.DisabledAccountException'}">

								<i class="fa fa-exclamation-triangle"></i>用户状态为无效.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'org.apache.shiro.authc.ExpiredCredentialsException'}">

								<i class="fa fa-exclamation-triangle"></i>用户密码不在有效期内.
					</c:when>
							<c:when
								test="${shiroLoginFailure eq 'org.apache.shiro.authc.ExcessiveAttemptsException'}">
								<i class="fa fa-exclamation-triangle"></i>您输入的密码错误次数过多，已被冻结.
					</c:when>
							<c:when test="${shiroLoginFailure ne null}">
								<i class="fa fa-exclamation-triangle"></i>登录认证错误，请重试.
					</c:when>
							<c:otherwise>
								<!-- 
						<p class="login-box-msg">请输入用户名密码进行登录</p>
					 -->
							</c:otherwise>
						</c:choose>
					</p>
				</shiro:notAuthenticated>
				<shiro:authenticated>
					<script type="text/javascript">
					location.href = '${ctx}/';
				</script>
				</shiro:authenticated>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox" name="rememberMe">
<!-- 								Remember Me -->
                                                                                                                               记住我
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button id="submit" type="submit"
							class="btn btn-primary btn-block btn-flat">
<!-- 							Sign In -->
                                                                                                                      登录
							</button>
					</div>
				</div>
				<input type=hidden id="ssid" name="ssid"
					value="<%=request.getSession().getId()%>">
			</form>
	</div>
	<!-- /.login-box -->
	<!-- Core Scripts - Include with every page -->
	<script type='text/javascript'
		src="${ctx }/static/jquery/${jquery_version}/jquery.min.js"></script>
	<script type='text/javascript'
		src="${ctx}/static/adminlte/${adminlte_version}/bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script type='text/javascript'
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			if(${param.forceLogout == "1"}){
				$("#loginBoxMsg").html("<i class='fa fa-exclamation-triangle'></i>你已被管理员强制下线.");
			}
			
			if(${param.kickout == "1"}){
				$("#loginBoxMsg").html("<i class='fa fa-exclamation-triangle'></i>您的账号已在另一地点登录，您已被迫下线.");
			}
			
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
			$("#img_captcha").click(function refreshCaptcha() {
				$("#img_captcha").attr("src","${ctx}/servlet/captchaCode?"+Math.floor(Math.random()*100));
			});
			/* if(${loginFailedNum ne null} && ${loginFailedNum >= 1 }){
				$("#captchaDiv").attr("style","display:'';");
				$("#img_captcha").click(function refreshCaptcha() {
					$("#img_captcha").attr("src","${ctx}/servlet/captchaCode?t=" + Math.random());
				});
			}; */
			
			$("#submit").click(function(){
				var username = $("#username").val();
				var password = $("#password").val();
				if(username == null || username == ""){
					$("#loginBoxMsg").html("<i class='fa fa-exclamation-triangle'></i>用户名不能为空.");
					$("#username").focus();
					return false;
				}else if(password == null || password == ""){
					$("#loginBoxMsg").html("<i class='fa fa-exclamation-triangle'></i>密码不能为空.");
					$("#password").focus();
					return false;
				}else{
					$("form").submit();
				}
			});
			
		});
	</script>
</body>
</html>
