<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>
<head>
<title>metro-zTree</title>
<link href='${ctx }/metro.css' rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.companymanage" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/user/list">
				<div class="panel-group" id="accordion"></div>
			</form>
		</div>
		<div class="col-lg-12">
			<div class="panel-group" id="accordionTwo">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionTwo"
								href="#collapseTwo"><fmt:message
									key="label.home.companymanage.Treedisplay" /></a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<ul id="treeDemo" class="ztree"></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="ajax-modal" class="modal fade col-lg-4 col-lg-offset-4"
		tabindex="-1" style="display: none;"></div>
	<script
		src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.all.js"
		type="text/javascript"></script>
	<script src="${ctx}/${app_version}/company/js/CompanyConfig.js"></script>
</body>
</html>