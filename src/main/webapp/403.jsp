<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>403</title>
<!-- Core CSS - Include with every page -->
<link
	href="${ctx}/static/adminlte/${adminlte_version}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--[if IE 7]> <link href="${ctx}/static/bsadmin/${bsadmin_version}/ie-patch/font-awesome-ie7.min.css"><![endif]-->
<!--[if !IE 7]><!-->
<link
	href="${ctx}/static/font-awesome/${font_awesome_version}/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
<!--<![endif]-->
<!-- Theme CSS - Include with every page -->
<link href="${ctx}/static/bsadmin/${bsadmin_version}/css/bsadmin.css"
	rel="stylesheet">
<!--[if lt IE 9]>				
	<link href="${ctx}/static/bsadmin/${bsadmin_version}/ie-patch/bootstrap-ie78.css" rel="stylesheet" type="text/css" />
	<script src="${ctx}/static/respond/${respond_version}/dest/respond.min.js" type="text/javascript"></script>	
	<script src="${ctx}/static/html5shiv/${html5shiv_version}/html5shiv.min.js" type="text/javascript"></script>
	<![endif]-->
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-warning">
					<div class="panel-heading">
						<h3 class="panel-title">
							403-
<%-- 							<spring:message code="errors.403" /> --%>
							禁止访问
						</h3>
					</div>
					<div class="panel-body">
						<div class="alert alert-error">
<%-- 							<spring:message code="label.common.error.403" /> --%>
							你请求的页面禁止访问.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
