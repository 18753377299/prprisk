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
				<input type="hidden" name="editMode" value="${editMode}"></input> <input
					name="insertTimeForHis" type="hidden"
					value="<fmt:formatDate value="${exercise.insertTimeForHis }" pattern="yyyy-MM-dd HH:mm:ss"/>" />
				<input name="operateTimeForHis" type="hidden"
					value="<fmt:formatDate value="${exercise.operateTimeForHis }" pattern="yyyy-MM-dd HH:mm:ss"/>" />
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message	key="label.home.info.basic" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<label for="userCode" class="col-xs-4 control-label"><fmt:message
													key="label.exerciselist.code" /></label>
											<div class="col-xs-8">
												<input id="userCode" name="userCode" class="form-control"
													type="text" value="${exercise.userCode}" />
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<label for="userName" class="col-xs-4 control-label"><fmt:message
													key="label.exerciselist.name" /></label>
											<div class="col-xs-8 controls">
												<input id="userName" name="userName" class="form-control"
													type="text" value="${exercise.userName}" />
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- row 强制换行 -->
					<div class="panel panel-info">
						<div id="#collapseFour" class="panel-collapse collapse in">
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
	<script src="${ctx}/${app_version}/exercise/js/ExerciseEdit.js"></script>
</body>
</html>