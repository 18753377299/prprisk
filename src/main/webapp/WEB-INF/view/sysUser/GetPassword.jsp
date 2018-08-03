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

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span9">
				<form action="${ctx }/sysUser/preResetPassword"
					class="form-horizontal" role="form" method="post">
					<br>
					<legend class="text-success text-center">找回密码</legend>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label"><i
							style="color: red">*</i> 邮箱地址：</label>
						<div class="col-sm-4">
							<input type="email" class="form-control" id="inputEmail3"
								placeholder="请输入注册时所填邮箱" name="email">
						</div>
						<div class="col-sm-2" id="message1"></div>
					</div>
					<div class="form-group">
						<div class=" col-sm-offset-3 col-sm-4">
							<button type="button" class="btn btn-info" id="button1">发送邮箱验证码</button>
						</div>
					</div>

					<div class="form-group">
						<label for="safecode" class="col-sm-3 control-label"><i
							style="color: red">*</i> 邮箱验证码：</label>
						<div class="col-sm-4">
							<input placeholder="请输入验证码,注意区分大小写" type="text" id="safecode"
								class="form-control">
						</div>
						<div class="col-sm-2" id="message2"></div>
					</div>


				</form>
				<div class=" col-sm-offset-3 col-sm-4">
					<button type="button" class="btn btn-success " id="submit">下一步</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-default " id="return">返回</button>
				</div>
			</div>
		</div>
	</div>





	<script type='text/javascript'
		src="${ctx}/static/jquery/${jquery_version}/jquery.min.js"></script>
	<script type='text/javascript'
		src="${ctx}/static/adminlte/${adminlte_version}/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">

$(function(){
	$('#button1').click(function(){
		$.ajax({
			url:"${ctx}/sysUser/sendMail",
			type:"GET",
			data:{email:$("#inputEmail3").val()},
			dataType:"json",
			success:function(obj){
				if(obj.statusText =="true"){
					alert("邮件已发送，请登录邮箱查看验证码;");
				}else if(obj.statusText == "false"){
					$("#message1").html("<i style='color: red;'>该邮箱没有被注册,请重新输入</i>");
				}else{
					alert("邮件发送失败，请稍后重试！");
				}
				
			}
		});
	});
	$("#inputEmail3").focus(function(){
		$("#message1").empty();
	})
	$("#inputEmail3").blur(function(){
		$.ajax({
			url:"${ctx}/sysUser/authEmail",
			type:"POST",
			data:{email:$("#inputEmail3").val()},
			dataType:"json",
			success:function(obj){
				if(obj.statusText =="false"){
					$("#message1").html("<i style='color: red;'>该邮箱没有被注册,请重新输入</i> ");
				}
			}
		});
	});
	$("#safecode").focus(function(){
		$("#message2").empty();
	});
	//控件事件
	$("#return").click(function(){
		history.go(-1);
	});
	$("#submit").click(function(){
		$.ajax({
			url:"${ctx}/sysUser/safeCodeCaptcha",
			type:"POST",
			data:{
					safeCode:$("#safecode").val(),
					email:$("#inputEmail3").val()
				},
			dataType:"json",
			success:function(obj){
				if(obj.statusText =="true"){
					$("form").submit();
				}else{
					$("#message2").html("<i style='color: red;'>验证码不正确,请重新输入</i>");
				}
			}
		});
	});
});
</script>
</body>
</html>