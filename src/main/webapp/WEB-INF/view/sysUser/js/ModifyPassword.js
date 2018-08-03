$(function(){
	
	var rules = {
			userCode : "required",
			userName : "required",
			password:{
				required:"required",
			     minlength: 8,
			     maxlength: 20
			},
			newPassword:{
				required:"required",
				minlength: 8 ,
				maxlength: 20
			},
			passwordConfirm:{
				required:"required",
				minlength: 8 ,
				maxlength: 20 ,
				equalTo:"#newPassword"
			}
			
		};
	var messages = "";
	
	if(!$("#password").val()){
		$("#forPassword").html("<span style='color:red;'>密码不能为空</span>");
	}
	$("#password").focus(function(){
		$("#forPassword").html("");	
		}).blur(function(){
//			添加原始密码判断
			$.ajax({
			 type :	"POST" ,
			 url :  contextPath + "/sysusers/passwordCheck",
			 data : {
				 userCode : $("#userCode").val() ,
				 password : $("#password").val() ,	 
			 } ,
			 async : false,
			 success : function(obj){
					if (obj.status == '200') {
						$("#forPassword").html("<span style='color:green'>密码正确</span>");
					
						}else{
							$("#forPassword").html("<span style='color:red'>密码错误,请从新输入</span>");
						}
					}		
			});
		});
			
	$("#passwordConfirm").blur(function(){
		check($(this).val());
		if($("#newPassword").val()!=$("#passwordConfirm").val()){
			$("#forPasswordConfirm").html("<span style='color:red'>请输入相同的密码</span>");
		}
	});
	$("#passwordConfirm").focus(function(){
		$("#forPasswordConfirm").html("");
	});
	
	if($("#newPassword").val()!=$("#passwordConfirm").val()){
		$("#forPasswordConfirm").html("<span style='color:red'>请输入相同的密码</span>");
		return;
	}

	$("#newPassword").blur(function(){
		check($(this).val());	
		});
		$("#newPassword").focus(function(){
			$("#forNewPassword").html("");
		});
	$("button.btn-return").click(function() {
		history.go(-1);
	});
	
	$("#closeDialog2").click(function(){
		window.close(); 
//		history.go(-1);
	});
	
	$("button.btn-return").click(function(){
		$("#closeDialog2").click();
	});
	$("button.btn-submit").click(function(){
		var newPassword=$("#newPassword").val();
		var flag=check(newPassword);
		if(flag==false){
			return false;
		}
		
		//4.Ajax表单操作相关

		var ajaxEdit = new AjaxEdit("#form");
		ajaxEdit.rules = rules;
		ajaxEdit.messages = messages;
		var editMode=$("#editMode").val();
		if(editMode=='create'){
			ajaxEdit.targetUrl = contextPath + "/sysusers";
		}
		else if(editMode=='update'){
			ajaxEdit.targetUrl = contextPath + "/sysusers/"+$("#id").val()+"/updatePassword";
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
});



//添加密码校验规则 check(pass)函数
//密码校验入口  
//公共入口
function check(pass){	
if(isEmpty(pass)){
	 document.getElementById("span1").innerHTML="密码不可为空";
	 document.getElementById("span1").style.color="red";
	 return false;
}else if(passWordLength(pass)){
	document.getElementById("span1").innerHTML="密码长度为8-20，应至少使用数字，大写字母，小写字母，特殊符号中的两种";
	 document.getElementById("span1").style.color="red";
	return false;
}else if(isSameChar(pass)){
	document.getElementById("span1").innerHTML= "密码不可为同一个字符的重复序列，请重新设定";
	document.getElementById("span1").style.color="red";
	return false;
}else if(isOrderList(pass)){
	document.getElementById("span1").innerHTML="密码不可为递增数列";
	document.getElementById("span1").style.color="red";
	return false;
}else if(isDecreasing(pass)){
	document.getElementById("span1").innerHTML="密码不可为递减数列";
	document.getElementById("span1").style.color="red";
	return false;
}else if(!isKeyBoardList(pass)){
	document.getElementById("span1").innerHTML="密码中不可以包含指定的序列，如qwer，asdf,zxcv等";
	document.getElementById("span1").style.color="red";
	return false;
}else if(isFourInRow(pass)){
	document.getElementById("span1").innerHTML="密码不可为四位连续，如abcd，建议修改";
	document.getElementById("span1").style.color="red";
	return false;
}else if(!isPassType(pass)){
	document.getElementById("span1").innerHTML="密码必须包含两种或以上字符组成";
	document.getElementById("span1").style.color="red";
	return false;
}
else{
  document.getElementById("span1").innerHTML= "密码符合标准";
  document.getElementById("span1").style.color="black";
  return true;
}
}
//相同字符
function isSameChar(pass){
  var pass=document.getElementById("newPassword").value;
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
//空
function isEmpty(pass){
var pass=document.getElementById("newPassword").value;
if (pass=="") {
	return true;
}
return false;
}
//長度
function  passWordLength(pass){
var pass=document.getElementById("newPassword").value;
var reg=/^.{8,20}$/;
if(pass.match(reg)==null){
	 return true;
}  
	 return false;	 
}
//连续递增的数字列
function isOrderList(pass){
 var pass=document.getElementById("newPassword").value;
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
var pass=document.getElementById("newPassword").value;
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
var pass=document.getElementById("newPassword").value;
//var flag11;
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
//var strList={"q","w","e","r","t","y","u","i","o","p","[","]"}; 
var pass=document.getElementById("newPassword").value;
var strlist="qwertyuiop";
var flag1;
var flag;
//StringBuffer sb=new StringBuffer();
//for(int i=0;i<strList.length;i++){
//	sb.append(strList[i]);
//}
//String str_1=sb.toString();
//System.out.println(str_1);
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
//	String[] str1={"a","s","d","f","g","h","j","k","l",";",",","\\"};
var str1="asdfghjkl";
var pass=document.getElementById("newPassword").value;
var flag1;
var flag;
//StringBuffer sb=new StringBuffer();
//for(int i=0;i<str1.length;i++){
//	sb.append(str1[i]);
//}
//String str_1=sb.toString();

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
//	String[] str2={"z","x","c","v","b","n","m",",",".","/"};
var str2="zxcvbnm";
var pass=document.getElementById("newPassword").value;
var flag1;
var flag;
//StringBuffer sb=new StringBuffer();
//for(int i=0;i<str2.length;i++){
//	sb.append(str2[i]);
//}
//String str_1=sb.toString();

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
var pass=document.getElementById("newPassword").value;
var reg=/^(?![0-9]+$)(?![a-z]+$)(?![A-Z]+$)(?![\W]+$)[0-9a-zA-Z\W_]+$/;
var pattern = new RegExp(reg);
if(pattern.test(pass)==true){
	return true;
}else{
	return false;
}
}


