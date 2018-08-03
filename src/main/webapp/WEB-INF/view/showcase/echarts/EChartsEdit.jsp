
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<script src="${ctx}/${app_version}/showcase/echarts/js/EChartsEdit.js"></script>
<script type="text/javascript"
		src="${ctx}/static/echarts/${echarts_version}/js/shine.js"
		charset="utf-8"></script>
<script type="text/javascript"
		src="${ctx}/static/echarts/${echarts_version}/js/dark.js"
		charset="utf-8"></script>
</head>
<body style="height:400%; margin: 0">
	<div id="container" style="height:400%"></div>
	<!-- /.row -->
</body>
</html>


