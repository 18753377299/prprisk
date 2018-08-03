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
				<li class="active"><i class="fa fa-table"></i>客户管理</li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">客户管理</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
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
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.clientId}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="clientSecret" class="control-label">密码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.clientSecret}</div>
										</div>
									</div>

								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="resourceIds" class="control-label">源编号</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.resourceIds}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="scope" class="control-label">域</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.scope}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseFour">用户配置</a>
							</h4>
						</div>
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6 form-control-static">
												<label for="authorizedGrantTypes" class="control-label">授权类型</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.authorizedGrantTypes}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="webServerRedirectUri" class="control-label">服务器重定向URI</label>
											</div>
											<div class="col-xs-6 controls form-control-static">
												${oauthClientDetails.webServerRedirectUri }</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="authorities" class="control-label">官方</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.authorities }</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="accessTokenValidity" class="control-label">AccessTokenValidity</label>
											</div>
											<div class="col-xs-4 form-control-static">
												${oauthClientDetails.accessTokenValidity }</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="refreshTokenValidity" class="control-label">RefreshTokenValidity</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.refreshTokenValidity }</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="additionalInformation" class="control-label">AdditionalInformation</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.additionalInformation }</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="archived" class="control-label">Archived</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.archived }</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="trusted" class="control-label">Trusted</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${oauthClientDetails.trusted }</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="createTime" class="control-label">CreateTime</label>
											</div>
											<div class="col-xs-6 form-control-static">

												${oauthClientDetails.createTime }</div>
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
	<script src="${ctx}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/oauth/js/OauthEdit.js"></script>
</body>
</html>