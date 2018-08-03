<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<link href='${ctx }/metro.css' rel="stylesheet" type="text/css" />
<style>
</style>
<script type="text/javascript">
var zNodes = ${zNodes};
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys" /></li>
				<li><i class="fa fa-table"></i>
				<fmt:message key="label.home.sys.authoritymanagement" /></li>
				<li class="active"><i class="fa fa-table"></i>
				<fmt:message key="label.home.sys.authoritymanagement.featuremanager" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">功能代码树状展示</h5>
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">功能代码</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-lg-12 col-md-6 col-xs-12">
												<ul>
													<li><a> 所有功能代码</a>
														<ul id="treeDemo" class="ztree">
														</ul></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="button" class="btn btn-default btn-return">
												<fmt:message key="label.button.return" />
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script
		src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.all.js"
		type="text/javascript"></script>
	<%-- 	<script src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.excheck.js"
		type="text/javascript"></script> --%>
	<script
		src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.exedit.js"
		type="text/javascript"></script>
	<script src="${ctx}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/saa/task/js/TaskCodeTree.js"></script>
</body>
</html>