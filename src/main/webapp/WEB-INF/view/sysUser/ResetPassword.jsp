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
			<form action="${ctx}/sysUser/resetPassword" class="form-horizontal"
				role="form" method="post">

				<br>
				<legend class="text-success text-center">
					<fmt:message key="label.sysuser.resetPassword" />
				</legend>
				<input type="hidden" class="form-control" id="userCode"
					value="${sysUser.userCode}" name="userCode">
				<div class="form-group">
					<label for="password" class="col-sm-offset-2 col-sm-2"><i
						style="color: red">*</i> <fmt:message
							key="label.sysuser.inputnewpassword" />：</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="password"
							placeholder="密码不短于8位且不长于20" aria-required="true" name="password"
							onblur="check(this.value)"> <span id="span1"
							style="color: red; font-size: 4px;"><fmt:message
								key="label.sysuser.passwordformat" /></span><br />
					</div>
				</div>
				<br>
				<div class="form-group">
					<label for="confirm_password" class="col-sm-offset-2 col-sm-2"><i
						style="color: red">*</i> <fmt:message
							key="label.sysuser.confirmnewpassword" />：</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="confirm_password"
							placeholder="重复输入密码，确保和第一次输入的密码一致" name="confirm_password">
					</div>
				</div>
				<br>
				<div class=" col-sm-offset-3 col-sm-4">
					<button type="button" name="resetPassword" id="resetPassword"
						class="btn btn-success btn-lg btn-block"
						onclick="resetPassword2();">
						<fmt:message key="label.sysuser.confirmreset" />
					</button>
				</div>

			</form>

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
// 		$(function(){
// 			$("form").validate({
// 				rules:{
// 					password:{
// 						required:true,
// 						minlength:8,
						
// 					},
// 				confirm_password:{
// 					required: true,  
// 				    minlength: 8,  
// 				    equalTo: "#password",
// 				}
// 			},
// 			focusCleanup:true
// 			});
// 		})

// 密码校验起始
function check(pass){	
	if(isEmpty(pass)){
		 document.getElementById("span1").innerHTML="密码不可为空";
		 document.getElementById("span1").style.color="red";
	}else if(passWordLength(pass)){
		document.getElementById("span1").innerHTML="密码长度为8-20，可以为数字，字母，特殊符号，区分大小写"
		 document.getElementById("span1").style.color="red";
	}else if(isSameChar(pass)){
		document.getElementById("span1").innerHTML= "密码为同一个字符的重复序列，请重新设定";
		document.getElementById("span1").style.color="red";
	}else if(isOrderList(pass)){
		document.getElementById("span1").innerHTML="密码为递增数列";
		document.getElementById("span1").style.color="red";
	}else if(isDecreasing(pass)){
		document.getElementById("span1").innerHTML="密码为递减数列";
		document.getElementById("span1").style.color="red";
	}else if(!isKeyBoardList(pass)){
		document.getElementById("span1").innerHTML="包含指定的序列，如qwer，asdf,zxcv等";
		document.getElementById("span1").style.color="red";
	}
	else if(isFourInRow(pass)){
		document.getElementById("span1").innerHTML="密码为四位连续，如abcd，建议修改";
		document.getElementById("span1").style.color="red";
	}else if(!isPassType(pass)){
		document.getElementById("span1").innerHTML="密码必须包含两种或以上字符组成";
		document.getElementById("span1").style.color="red";
	}
	else{
	    document.getElementById("span1").innerHTML= "密码符合标准";
	    document.getElementById("span1").style.color="black";
	}
}
// 相同字符
function isSameChar(pass){
	    var pass=document.getElementById("password").value;
		  var flag = true ;
		  var str1 = pass.charAt(0);
		  for (var i = 0; i < pass.length; i++) {
		  if (str1 !=pass.charAt(i)) {
		  flag = false;  
		   break;
		  }else{
			  flag=true;
		  }
		 }
		 return flag;
}
// 空
function isEmpty(pass){
	var pass=document.getElementById("password").value;
	if (pass=="") {
		return true;
	}
	return false;
}
// 長度
function  passWordLength(pass){
	var pass=document.getElementById("password").value;
	var reg=/^.{8,20}$/;
	if(pass.match(reg)==null){
		 return true;
	}  
		 return false;	 
	}
//连续递增的数字列
function isOrderList(pass){
	   var pass=document.getElementById("password").value;
	   var flag1 = true;//如果全是连续数字返回true 
	   var isNumeric = true;//如果全是数字返回true
	   for (var i = 0; i < pass.length; i++) {
	   if (isNaN(pass.charAt(i))) {
	   isNumeric = false;
	   break;
	   }
	   }
	   if (isNumeric) {//如果全是数字则执行是否连续数字判断
	   for (var i = 0; i < pass.length; i++) {
	   if (i > 0) {//判断如123456
	   var num = pass.charCodeAt(i);
	   var num_= pass.charCodeAt(i-1)+1;
	   if (num != num_) {
	   flag1 = false;
	   break;
	   }
	   }
	   }
	   } else {
	   flag1 = false;
	   }

	return flag1;
}
//不能为连续的递减数列
//不能是连续的数字--递减（如：987654、876543）连续数字返回true
function isDecreasing(pass){
  var pass=document.getElementById("password").value;
  var flag2 = true;//如果全是连续数字返回true
  var isNumeric2 = true;//如果全是数字返回true
  for (var i = 0; i < pass.length; i++) {
  if (isNaN(pass.charAt(i))) {
      isNumeric2 = false;
  break;
  }
  }
  if (isNumeric2) {//如果全是数字则执行是否连续数字判断
  for (var i = 0; i < pass.length; i++) {
  if (i > 0) {//判断如654321
	  var num = pass.charCodeAt(i);
	   var num_= pass.charCodeAt(i-1)-1;
  if (num != num_) {
  flag2 = false;
  break;
  }
  }
  }
  } else {
  flag2 = false;
  }
  return flag2;
}

//是否为四个连续的字母
function isFourInRow(pass){
	var pass=document.getElementById("password").value;
	var flag11;
	var cout=0;
	for (var i=0; i < pass.length-1; i++) {
		  if(pass.charCodeAt(i)!=pass.charCodeAt(i+1)&& pass.charCodeAt(i+1)-pass.charCodeAt(i)==1)
		  {
			flag11=true;
			cout++;	  
		  }	else{	  
		    flag11=false;
		    cout=0;
		  }
		   if(cout>2){
			   break;
		   }
		   }
	if(cout>2){
		   flag11=true;

		   return true;
	   }else{
		   flag11=false;

		   return false;
	   }
 
 
   }
   //键盘序列
function isKeyBoardList(pass){
 if(isFirstList(pass)==1&&isSecondList(pass)==1&&isThirdList(pass)==1){
 	
 	return true;
 }else {
  	return false;
 }
}

//第一梯队校验
function  isFirstList(pass){
  var pass=document.getElementById("password").value;
  var strlist="qwertyuiop";
  var flag1;
  var flag;
  for(var i=0;i<strlist.length;i++){
  	var beginIndex = i;
  	if(beginIndex<=strlist.length-4){
	     var endIndex=i+4;
	     var str = strlist.substring(beginIndex, endIndex);
	     var patt1 = new RegExp(str);
	    flag1= patt1.test(pass);
	    if(flag1==true){
	    	flag=true;
	    }else{
	    	flag=false;
	    }
	   if(flag==true){

		   return "包含给定的字符串序列的连续子序列";
	   }
  }else{

  	break;
  }	   
}

	return "1";		
}
//第二梯队校验
function isSecondList(pass){
     var str1="asdfghjkl";
	 var pass=document.getElementById("password").value;
  var flag1;
  var flag;
  for(var i=0;i<str1.length;i++){
  	var beginIndex = i;
  	if(beginIndex<=str1.length-4){
	    var endIndex=i+4;
	    var str11 = str1.substring(beginIndex, endIndex);
	    var patt1 = new RegExp(str11);
	    flag1= patt1.test(pass);
	    if(flag1==true){
	    	flag=true;
	    }else{
	    	flag=false;
	    }
	   if(flag==true){

		   return "包含给定的字符串序列的连续子序列";
	   }
  }else{

  	break;
  }	   
}

	return "1";	
}
//第三梯队校验
function isThirdList(pass){
	var str2="zxcvbnm";
	var pass=document.getElementById("password").value;
    var flag1;
    var flag;
  for(var i=0;i<str2.length;i++){
  	var beginIndex = i;
  	if(beginIndex<=str2.length-4){
	     var endIndex=i+4;
	    var str22= str2.substring(beginIndex, endIndex);
	    var patt1 = new RegExp(str22);
	    flag1= patt1.test(pass);
	    if(flag1==true){
	    	flag=true;
	    }else{
	    	flag=false;
	    }
	   if(flag==true){

		   return "包含给定的字符串序列的连续子序列";
	   }
  }else{

  	break;
  }	   
}

	return "1";	
}

//密码包含 大小写字母小写字母，数字 ，特殊字符中的 两种或以上
 //特殊字符可以根据需要扩充   
function isPassType(pass){
	var pass=document.getElementById("password").value;
	var reg=/^(?![0-9]+$)(?![a-z]+$)(?![A-Z]+$)(?![\W]+$)[0-9a-zA-Z\W_]+$/;
	var pattern = new RegExp(reg);
	if(pattern.test(pass)==true){
		return true;
	}else{
		return false;
	}
}
// 密码校验结束

function resetPassword2(){
	//用户名校验
	var userCode = $("#userCode").val();
	var password = $("#password").val();
	$.ajax({
		url:"${ctx}/sysUser/resetPassword",
		type:"POST",
		
		data:{
			"userCode":userCode,
			"password":password},
		dataType:"json",
		success:function(data){
			if(data.data=="1"){
				alert("密码修改成功！");
				//$("#message1").html("<i style='color: red;'>该用户已注册,请重新输入</i>");
				
			}else{
				alert(data.data);
				//$("#message1").html("<i style='color: red;'>恭喜您，该用户名可以使用</i>");
			}
		}
		});
}

	</script>
</body>
</html>