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
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys.basicdata.usermanagement" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">
					<fmt:message key="label.home.sys.basicdata.usermanagement" />
				</h5>
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
												<label for="userCode" class="control-label">ID</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${userRole.id}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="seal" class="control-label"><fmt:message
														key="label.saauserrole.usercode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${userRole.userCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="seal" class="control-label"><fmt:message
														key="label.saarole.rolecode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${userRole.saaRole.roleCode}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label"><fmt:message
														key="label.saauserrole.startdate" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${userRole.startDate}</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="seal" class="control-label"><fmt:message
														key="label.saauserrole.enddate" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${userRole.endDate}</div>
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
											<button type="button" id="returnButton"
												class="btn btn-default btn-return">
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
	<script type="text/javascript">
   $(function(){
	   $("#returnButton").click(function(){
		  history.go(-1); 
	   })   
   })	
	
	</script>
</body>
</html>