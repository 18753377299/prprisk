<%@page import="ins.framework.web.filter.WebAppFilter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	long pageStartTime = System.currentTimeMillis();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/view/common/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%-- 被装饰页面的Title --%>
<title><decorator:title default="业务系统开发框架" /></title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<%@ include file="/WEB-INF/layout/common/common-css.jspf"%>
<%-- Page-Level Plugin CSS - Tables --%>
<script
	src="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/jquery.dataTables.min.css"></script>
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/extensions/FixedColumns/css/dataTables.fixedColumns.min.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/layout/common/common-js.jspf"%>
<%@ include file="/WEB-INF/layout/common/custom-css.jspf"%>
<%-- 被装饰页面的head --%>
<decorator:head />
<style type="text/css">
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>
			<!-- Main content -->
			<section class="content">
			<div class="row">
					<div class="col-lg-12">
						<br />
						<ol class="breadcrumb">
						
						</ol>
					</div>
				</div>
				<%-- 被装饰页面的body --%>
				<decorator:body />
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<%
					Date requestStartTime = (Date) request.getAttribute(WebAppFilter.REQUEST_START_TIME);
					if (requestStartTime != null) {
						Date requestEndTime = new Date();
						out.println("整个请求耗时 " + (requestEndTime.getTime() - requestStartTime.getTime()) + " 毫秒");
						out.println("，其中业务逻辑耗时 " + (pageStartTime - requestStartTime.getTime()) + "毫秒");
						out.println("，页面渲染耗时 " + (requestEndTime.getTime() - pageStartTime) + "毫秒");
					}
				%>
			</div>
			<strong>Copyright &copy; 2014-2015 <a
				href="http://www.sinosoft.com.cn">www.sinosoft.com.cn</a>.
			</strong> All rights reserved.
		</footer>
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/fastclick/fastclick.min.js"
		type='text/javascript' charset="utf-8"></script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/dist/js/app.min.js"></script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/sparkline/jquery.sparkline.min.js" />
	' type='text/javascript' charset="utf-8">
	</script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />
	' type='text/javascript' charset="utf-8">
	</script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />
	' type='text/javascript' charset="utf-8">
	</script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/slimScroll/jquery.slimscroll.min.js" />
	' type='text/javascript' charset="utf-8">
	</script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/chartjs/Chart.min.js" />
	' type='text/javascript' charset="utf-8">
	</script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/dist/js/pages/dashboard2.js"
		type='text/javascript' charset="utf-8"></script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/dist/js/demo.js"
		type='text/javascript' charset="utf-8"></script>
	<%-- Page-Level Plugin Scripts - Tables --%>
	<script type="text/javascript"
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/js/jquery.dataTables.min.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/dataTables.bootstrap.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="${ctx}/static/datatables-extension/${datatables_extension_version}/FixedColumns/js/dataTables.fixedColumns.min.js"
		charset="utf-8"></script>
	<script src="${ctx}/${app_version}/common/js/AjaxList.js"></script>
</body>
</html>
