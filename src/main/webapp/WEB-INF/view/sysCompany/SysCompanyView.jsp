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
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message key="label.home.info.basic" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
										<div class="col-xs-6">
											<label for="comCode" class="control-label">机构代码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysCompany.comCode}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="name" class="control-label">机构名称</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysCompany.name}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
										<div class="col-xs-6">
											<label for="comPth" class="control-label">机构路径</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysCompany.comPth}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="description" class="control-label">机构描述</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysCompany.description}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
										<div class="col-xs-6">
											<label for="createdAt" class="control-label">创建日期</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysCompany.createdAt}</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="udpatedAt" class="control-label">更新日期</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${sysCompany.udpatedAt}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- row 强制换行 -->

					<!-- row 强制换行 -->

					<div class="panel panel-info">
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="button" class="btn btn-default btn-return"><fmt:message key="label.button.return" /></button>
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
	<script src="${ctx}/${app_version}/sysAreaDict/js/SysAreaDictEdit.js"></script>
</body>
</html>