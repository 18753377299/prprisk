<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/taglib.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/dist/js/demo.js"
		type='text/javascript' charset="utf-8">
		</script>	
</head>
<body class="hold-transition skin-blue sidebar-mini" onload="openwin()">
	<!-- Info boxes -->
	<div class="row">
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i
					class="ion ion-ios-gear-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">CPU Traffic</span> <span
						class="info-box-number">90<small>%</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-red"><i
					class="fa fa-google-plus"></i></span>
 
				<div class="info-box-content">
					<span class="info-box-text">Likes</span> <span
						class="info-box-number">41,410</span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->

		<!-- fix for small devices only -->
		<div class="clearfix visible-sm-block"></div>

		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-green"><i
					class="ion ion-ios-cart-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Sales</span> <span
						class="info-box-number">760</span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-yellow"><i
					class="ion ion-ios-people-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">New Members</span> <span
						class="info-box-number">2,000</span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

	<!-- Default box -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">Welcome
			</h3>

			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool"
					data-widget="collapse" data-toggle="tooltip" title="Collapse">
					<i class="fa fa-minus"></i>
				</button>
			</div>
		</div>
		<div class="box-body">欢迎使用业务系统开发框架！
		<br/>
		</div>

                 	 
		<div class="box-body">当前版本：<a href="${ctx}/history">V4.0.0</a></div>
		<!-- /.box-body -->
		<div class="box-footer"></div>
		<!-- /.box-footer-->
	</div>
	<!-- /.box -->



</body>
</html>
