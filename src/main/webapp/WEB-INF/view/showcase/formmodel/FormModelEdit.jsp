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
		</div>
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">

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
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="user.userCode" class="control-label"><fmt:message key="label.user.usercode"  /></label>
											</div>
											<div class="col-xs-6">
												<input id="user.userCode" name="user.userCode"
													class="form-control" type="text" value="${user.userCode}" />
											</div>
										</div>
									</div>


									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="user.userName" class="control-label"><fmt:message key="label.user.username"  /></label>
											</div>
											<div class="col-xs-6">
												<input id="user.userName" name="user.userName"
													class="form-control" type="text" value="${user.userName}" />
											</div>
										</div>
									</div>

								</div>



							</div>
						</div>
					</div>


					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseFour"><fmt:message
										key="label.menu.Codeproperties" /></a>
							</h4>
						</div>
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">


								<div class="row">

									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="menu.menuCName" class="control-label"><fmt:message
														key="label.menu.codeType" /></label>
											</div>
											<div class="col-xs-6">
												<input id="menu.menuCName" name="menu.menuCName"
													class="form-control " type="text"
													value="${smcMenu.menuCName }" />
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="menu.menuEName" class="control-label"><fmt:message
														key="label.menu.codeTypeDesc" /></label>
											</div>
											<div class="col-xs-6">
												<input id="menu.menuEName" name="menu.menuEName"
													class="form-control " type="text"
													value="${smcMenu.menuEName }" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="well">如果是两个对象，则需要在input标签内的name属性里用实体对象绑定该字段</div>
					<div class="panel panel-info">
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-submit">
												<fmt:message key="label.button.submit" />
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
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script
		src="${ctx}/${app_version}/showcase/formmodel/js/FormModelEdit.js"></script>

</body>
</html>