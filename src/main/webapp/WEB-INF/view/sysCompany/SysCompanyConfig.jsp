<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>
<head>
<title>metro-zTree</title>
<!-- <link href='${ctx }/metro.css' rel="stylesheet" type="text/css" /> -->
<%-- <link href="${ctx}/static/zTree/${zTree_version}/css/demo.css" rel="stylesheet" type="text/css" />
 --%>    
 <link href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.menu-left {
	width: 40%;
	float: left;
}

.menu-right {
	width: 60%;
	float: right;
}
</style>
</head>
<body>
	<div class="row">
		</div>
		<div class="col-lg-12">
			<div class="panel-group" id="accordionTwo">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionTwo"
								href="#collapseTwo"><fmt:message key="label.home.menucofig.result" /></a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="menu-left">
								<div class="row"></div>
								<div class="col-lg-12 col-md-6 col-xs-12">
									<ul id="treeDemo" class="ztree"></ul>
								</div>
								<div class="col-lg-10 col-md-6 col-xs-12"></div>
								<div class="row"></div>
								<div class="row">
									<div class="col-lg-12">
										<div class="col-lg-6">
											<button type="button" class="btn btn-info btn-refresh"><fmt:message key="label.home.menucofig.refresh" /></button>
										</div>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="ajax-modal" class="modal fade" tabindex="-1"
		style="display: none;"></div>
	<script src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.all.js"
		type="text/javascript"></script>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/sysCompany/js/SysCompanyConfig.js"></script>
</body>
</html>