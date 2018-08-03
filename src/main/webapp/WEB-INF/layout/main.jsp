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
<%@ include file="/WEB-INF/layout/common/common-js.jspf"%>
<%@ include file="/WEB-INF/layout/common/custom-css.jspf"%>
<%-- 被装饰页面的head --%>
<decorator:head />
<style type="text/css">
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<%@ include file="/WEB-INF/layout/common/main-header.jspf"%>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<%@ include file="/WEB-INF/layout/common/main-sidebar.jspf"%>
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>
			<!-- Main content -->
			<section class="content">
				<%-- 被装饰页面的body --%>
				<div class="row">
					<div class="col-lg-12">
						<br />
						<ol class="breadcrumb">
						
						</ol>
					</div>
				</div>
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
			<strong> &nbsp; &nbsp; &nbsp; &nbsp;
			</strong> &nbsp;
		</footer>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<%@ include file="/WEB-INF/layout/common/control-sidebar.jspf"%>
		</aside>
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

</body>
</html>
