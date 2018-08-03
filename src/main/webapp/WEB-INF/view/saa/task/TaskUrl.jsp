<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<c:choose>
	<c:when test="${saaUrlTask.id == null}">
		<c:set var="url" value="${ctx}/saatask/addTaskUrl.do"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="url" value="${ctx}/saatask/updateTaskUrl.do"></c:set>
	</c:otherwise>
</c:choose>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
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
				<h5 class="panel-title">地址功能映射定义</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input> <input
					type="hidden" id="id" name="id" value="${saaUrlTask.id}" /> <input
					type="hidden" id="version" name="version"
					value="${saaUrlTask.version}" />
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message
										key="label.home.info.basic" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskCode" class="control-label">功能代码</label>
											</div>
											<div class="col-xs-6">
												<input id="taskCode" name="taskCode" class="form-control"
													type="text" value="${saaUrlTask.taskCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="param" class="control-label">参数</label>
											</div>
											<div class="col-xs-6">
												<input id="param" name="param" class="form-control"
													type="text" value="${saaUrlTask.param}" />
											</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="url" class="control-label">Url地址</label>
											</div>
											<div class="col-xs-6">
												<input id="url" name="url" class="form-control" type="text"
													value="${saaUrlTask.url}" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div id="#collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-submit">
												<fmt:message key="label.button.save" />
											</button>
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
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/saa/task/js/TaskUrlEdit.js"></script>
</body>
</html>