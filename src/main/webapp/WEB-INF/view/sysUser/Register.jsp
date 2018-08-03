<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>业务系统开发框架</title>
<link
	href="${ctx}/static/adminlte/${adminlte_version}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${ctx}/static/font-awesome/${font_awesome_version}/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="container ">
		<div class="row">
			<div class="col-lg-12">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title text-center">
							<fmt:message key="label.sysuser.register" />
						</h3>
					</div>
					<div class="panel-body">
						<form action="${ctx}/sysUser/register" class="form-horizontal"
							role="form" method="post">
							<div class="row">
								<div class="form-group">
									<div class="col-xs-2 col-xs-offset-2">
										<label for="inputUsername"><i style="color: red">*</i>
											<fmt:message key="label.sysuser.username" />：</label>
									</div>
									<div class="col-xs-4">
										<input type="text" class="form-control" id="inputUsername"
											placeholder="请填写用户名" name="userCode"
											value="${sysUser.userCode }">
									</div>
									<div class="col-xs-2" id="message1"></div>
								</div>
								<div class="form-group">
									<div class="col-xs-2 col-xs-offset-2">
										<label for="inputRealname"><i style="color: red">*</i>
											<fmt:message key="label.sysuser.Realname" />：</label>
									</div>
									<div class="col-xs-4">
										<input type="text" class="form-control" id="inputRealname"
											placeholder="请填写真实姓名" name="userName"
											value="${sysUser.userName }">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-2 col-xs-offset-2">
										<label for="inputEmail3"><i style="color: red">*</i> <fmt:message
												key="label.sysuser.email" />：</label>
									</div>
									<div class="col-xs-4">
										<input type="email" class="form-control" id="inputEmail3"
											placeholder="请填写邮箱" name="email" value="${sysUser.email }">
									</div>
									<div class="col-xs-2" id="message2"></div>
								</div>

								<div class="form-group">
									<div class="col-xs-2 col-xs-offset-2">
										<label for="inputPassword"><i style="color: red">*</i>
											<fmt:message key="label.sysuser.password" />：</label>
									</div>
									<div class="col-xs-4">
										<input type="password" class="form-control" id="password"
											placeholder="密码不短于6位" aria-required="true" name="password">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-2 col-xs-offset-2">
										<label for="inputConfirm"><i style="color: red">*</i>
											<fmt:message key="label.sysuser.passwordConfirm" />：</label>
									</div>
									<div class="col-xs-4">
										<input type="password" class="form-control" id="inputConfirm"
											placeholder="重复输入密码" name="confirm_password">
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-2 col-xs-offset-2">
										<label for="safecode"><i style="color: red">*</i> <fmt:message
												key="label.sysuser.safecode" />：</label>
									</div>
									<div class="col-xs-4 ">
										<input placeholder="输入验证码" type="text" id="safecode"
											class="form-control" name="safecode"><i
											style="color: red" id="message">${message }</i>
										<div>
											<img src="${ctx}/verification/imageCode" id="checkImage"
												style="width: 50px; height: 20px" align="absmiddle" /> <a
												href="#" id="changeImage" onclick="refresh()"><fmt:message
													key="label.sysuser.changeImage" /></a>

										</div>
									</div>
									<div class="form-group">
										<div class="col-xs-offset-3 col-xs-4">
											<input type="checkbox" value="1" class="isChecked"
												checked="checked">&nbsp;&nbsp;<a
												class="form-agreement" href="/help/service" target="_blank"><fmt:message
													key="label.sysuser.agreement" /></a>
										</div>
									</div>
									<div class="form-group">
										<div class=" col-xs-offset-3 col-xs-4">
											<button type="submit"
												class="btn btn-success btn-lg btn-block">
												<fmt:message key="label.sysuser.registerConfirm" />
											</button>
										</div>
									</div>
								</div>
						</form>

						<hr>
						<!-- <div class="col-sm-9">
				使用第三方账号直接登录：<a
					href="http://www.jikexueyuan.com/sso/connect/t/qq.html"><img
					src="http://s1.jikexueyuan.com/current/static/images/common/qq-login.png"
					alt="qq"></a>
			</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src="${ctx}/static/jquery/${jquery_version}/jquery.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/static/jquery-validation/${jquery_validation_version}/jquery.validate.min.js"></script>
	<script src="${ctx}/common/js/common.js"></script>
	<script type='text/javascript'
		src="${ctx}/static/adminlte/${adminlte_version}/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(function(){
		
	
		$("form").validate({
			debug:false,
			rules:{
				userCode:{
					required:true,
				},
				email:{
					required:true,
					email:true
				},
				userName:{
					required:true
				},
				password:{
					required:true,
					minlength:6
				},
				confirm_password:{
					required:true,
					minlength:6,
					equalTo:"#password"
				},
				safecode:{
					required:true,
					
				}
			},
			focusCleanup: true, 
		});
		//用户名校验
		$("#inputUsername").blur(function(){
			$.ajax({
				url:"${ctx}/sysUser/checkedSysUser",
				type:"GET",
				data:{userCode:$("#inputUsername").val()},
				dataType:"json",
				success:function(data){
					if(data){
						$("#message1").html("<i style='color: red;'>该用户已注册,请重新输入</i>");
						
					}else{
						$("#message1").html("<i style='color: red;'>恭喜您，该用户名可以使用</i>");
						
					}
					
				}
			});
		});
		$("#inputUsername").focus(function(){
			$("#message1").empty();
		});
		$("#inputEmail3").focus(function(){
			$("#message2").empty();
		});
		$("#safecode").focus(function(){
			$("#message").empty();
		});
		//邮箱校验
		$("#inputEmail3").blur(function(){
			$.ajax({
				url:"${ctx}/sysUser/checkedEmail",
				type:"GET",
				data:{email:$("#inputEmail3").val()},
				dataType:"json",
				success:function(data){
					if(data){
						$("#message2").html("<i style='color: red;'>该邮箱已存在,请重新输入</i>");
						
					}else{
							$("#message2").html("<i style='color: red;'>恭喜您，该邮箱可以使用</i>");
						
					}
					
				}
			});
		});
		
	});
	function refresh()  
	{  
	document.getElementById("checkImage").src="${ctx}/verification/imageCode?now="+new Date();//使用时间作为参数避免浏览器从缓存取图片  
	}  

</script>
</body>
</html>
