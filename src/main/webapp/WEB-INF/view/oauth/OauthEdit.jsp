<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
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
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页</a></li>
				<li class="active"><i class="fa fa-table"></i> 系统管理</li>
				<li class="active"><i class="fa fa-table"></i> 客户管理</li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input> <input
					id="comCode" name="prpDcompany.comCode" class="form-control"
					type="hidden" value="${prpDuser.prpDcompany.comCode}" /> <input
					id="createTime" name="createTime" class="form-control"
					type="hidden" value="${prpDuser.createTime}" /> <input
					id="updateTime" name="updateTime" class="form-control"
					type="hidden" value="${prpDuser.updateTime}" />
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne">基本信息</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="clientId" class="control-label">客户编号</label>
											</div>
											<div class="col-xs-6">
												<input id="clientId" name="clientId" class="form-control"
													type="text" value="${oauthClientDetails.clientId}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="clientSecret" class="control-label">密码</label>
											</div>
											<div class="col-xs-6">
												<input id="clientSecret" name="clientSecret"
													class="form-control" type="clientSecret"
													value="${oauthClientDetails.clientSecret}" />
											</div>
										</div>
									</div>
									<!-- row 强制换行 -->
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="resourceIds" class="control-label">源编号</label>
											</div>
											<div class="col-xs-6">
												<input id="resourceIds" name="resourceIds"
													class="form-control" type="text"
													value="${oauthClientDetails.resourceIds}" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-submit">提交</button>
											<button type="button" class="btn btn-default btn-return">返回</button>
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
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
	<script src="${ctx}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/user/js/UserEdit.js"></script>

</body>
</html>