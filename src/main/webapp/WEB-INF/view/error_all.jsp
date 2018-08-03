<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isErrorPage="true"%>
<% 
if(exception!=null){
	
	exception.printStackTrace(response.getWriter());
}else{
	out.println("Unkonwn exception.");
}
%>