requirejs.config({
	baseUrl: "../static",
    paths: {
        "jquery" : "jquery/1.11.3/jquery",
       "bootstrap" : "adminlte/2.3.2/bootstrap/js/bootstrap.min"
    },
	shim:{
	    'bootstrap':{
	    	"deps":['jquery']
	     }
	}
});

requirejs(["jquery","bootstrap"],function($){
	$(function(){
		$('#button1').click(function(){
			$.ajax({
				url:"sendMail",
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
				url:"authEmail",
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
				url:"safeCodeCaptcha",
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
})