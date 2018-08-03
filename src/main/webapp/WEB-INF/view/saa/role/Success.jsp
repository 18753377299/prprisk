<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@include file="/common/meta_css.jsp"%>
</head>
<script type="text/javascript">
	function closePages(){
		try{
			if(parent.window!=null && parent.window!=undefined){
			    if(parent.window._pageClose){
				   parent.window._pageClose();
			    }else{
				  parent.window.close();
			    }
		    }
		}catch(E){

		}	
	    if (parent.window.opener!=undefined && parent.window.opener.editRecordOverCustom!=undefined) {
	         parent.window.opener.editRecordOverCustom();
	    }
	}
</script>
<body>
	<table class=common align=center>
		<br>
		<tr>
			<td align="center"><img
				src='${pageContext.request.contextPath}/pages/image/success.gif' />
			</td>
			<td class="common"><fmt:message key="label.home.info.success" />!</td>
		</tr>
		<tr>
			<td align="center" colspan="2"><input type="button"
				class="button_ty" value="关   闭" onclick="closePages();"></td>
		</tr>
	</table>
</body>
</html>
<%@include file="/common/meta_js.jsp"%>
