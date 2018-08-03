<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>cas!</title>
</head>
<body>
	<H2>cas错误!</H2>
	<hr />
	<P>错误描述：</P>
	该页无法显示!
	<br /> 请与系统管理员联系!
	<P>错误信息：</P>
	<% Exception e = (Exception)request.getAttribute("ex"); 
if(e!=null){
	out.println(e.getClass().getSimpleName());
}else{
	out.println("Unkonwn exception.");
}
%>
</body>
</html>