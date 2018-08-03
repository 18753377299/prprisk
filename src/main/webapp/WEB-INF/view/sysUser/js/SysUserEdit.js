/**
 * 
 */
$(function() {
	$("[data-mask]").inputmask();
	//添加自定义邮编验证规则
	jQuery.validator.addMethod("isZipCode", function(value, element) {   
	    var tel = /^[0-9]{6}$/;
	    return this.optional(element) || (tel.test(value));
	}, "请正确填写您的邮政编码");
	jQuery.validator.addMethod("len", function(value, element,params) { 
	    var len=value.length;
	    if(value==""||len==params){
	    	return true;
	    }
	    return false;
	}, "长度只能为11");
	//1.控件初始化
	$(".form_date").datetimepicker({
		format : "yyyy-mm-dd",
		language : "zh-CN",
		autoclose : true,
		todayBtn : true,
		todayHighlight : true,
		showMeridian : false,
		minView : "month",
		pickerPosition : "bottom-left",
	});
	//2.控件事件
	$("button.btn-return").click(function() {
		history.go(-1);
	});
	
	$("#modifyPassword").click(function() {
		location.href = contextPath + "/sysusers/"+$("#id").val()+"/sysUserModifyPassword";
	});
	
		
	//3.页面校验
	//校验规则
	var rules = {
		userCode :"required",
		userName : "required",
		email : {
			email : true
		},
		birthday:{
			date:true	
		},
		mobilePhone:{
			digits:true,
			len:"11"
		},
		postCode:{
			isZipCode:true
		},
		password:{
			required:"required",
			minlength: 5
		},
		repeatPassword:{
			equalTo:"#password"
		}
	};
	//校验提示
	var messages = {
		email : { 
			email: "请输入有效的电子邮件地址"
		},
		password:{
			 required: "请输入密码",
		     minlength: "密码长度不能小于 5 个字母"
		},
		repeatPassword:{
			required: "请输入密码",
	        minlength: "密码长度不能小于 5 个字母",
	        equalTo: "两次密码输入不一致"
		}
	};
	//4.Ajax表单操作相关
	//var ajaxEdit = new AjaxEdit("#edit-profile");
	var ajaxEdit = new AjaxEdit("#form");
	var editMode=$("#editMode").val();
	if(editMode=='create'){
		ajaxEdit.targetUrl = contextPath + "/sysusers";
		$("#passwordZone").attr("readonly",false);
		$("#passwordZone").attr("hidden",false);
		$("#modifyPassword").css('display','none');
		ajaxEdit.rules = rules;
		ajaxEdit.messages = messages;
	}
	else if(editMode=='update'){
		rules.password={
				minlength: 0
		};
		rules.repeatPassword={
				minlength: 0
		};
		ajaxEdit.rules = rules;
		ajaxEdit.messages = messages;
		ajaxEdit.targetUrl = contextPath + "/sysusers/"+$("#id").val()+"/update";
		$("#passwordZone").attr("readonly",true);
		$("#passwordZone").attr("hidden",true);
		$("#modifyPassword").attr("hidden",false);
		$("#modifyPassword").css('display',' ');
		ajaxEdit.method="PUT";
		
	}
	ajaxEdit.afterSuccess=function(){
		history.go(-1); 
	}; 
	ajaxEdit.afterFailure=function(){
		bootbox.dialog("操作失败");
	};
	//绑定表单
	
	ajaxEdit.bindForm();

});