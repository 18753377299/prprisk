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
				<li><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys" /></li>
				<li><i class="fa fa-table"></i>
				<fmt:message key="label.home.sys.authoritymanagement" /></li>
				<li class="active"><i class="fa fa-table"></i><i
					class="fa fa-table"></i>
				<fmt:message key="label.home.sys.authoritymanagement.featuremanager" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">
					<fmt:message key="label.home.info.display" />
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
												<label for="taskCode" class="control-label"><fmt:message
														key="label.saatask.taskcode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.taskCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for=groupName class="control-label"><fmt:message
														key="label.saatask.groupname" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.groupName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for=url class="control-label"><fmt:message
														key="label.saatask.url" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.url}</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskCName" class="control-label"><fmt:message
														key="label.saatask.taskcname" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.taskCName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskTName" class="control-label"><fmt:message
														key="label.saatask.tasktname" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.taskTName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskEName" class="control-label"><fmt:message
														key="label.saatask.taskename" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.taskEName}</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseTwo"><fmt:message
										key="label.home.info.others" /></a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="validInd" class="control-label"><fmt:message
														key="label.saatask.validind" /></label>
											</div>
											<div class="col-xs-6 form-control-static">${'1' eq saaTask.validInd ? '有效' : '无效'}
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="updaterCode" class="control-label"><fmt:message
														key="label.saatask.updatercode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.updaterCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="updateTime" class="control-label"><fmt:message
														key="label.saatask.updatetime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${saaTask.updateTime}"
													pattern="yyyy-MM-dd HH:mm:ss" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="creatorCode" class="control-label"><fmt:message
														key="label.saatask.creatorcode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaTask.creatorCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="createTime" class="control-label"><fmt:message
														key="label.saatask.createtime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${saaTask.createTime}"
													pattern="yyyy-MM-dd HH:mm:ss" />
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
								<a data-toggle="collapse" href="#collapseOne"><fmt:message
										key="label.home.inof.roles" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<table
										class="table table-striped table-bordered table-hover jqueryDataTable"
										id="resultDataTable">
										<thead>
											<tr>
												<th><fmt:message key="label.saarole.rolecode" /></th>
												<th><fmt:message key="label.saarole.comcode" /></th>
												<th><fmt:message key="label.saarole.rolecname" /></th>
												<th><fmt:message key="label.saarole.roletname" /></th>
												<th><fmt:message key="label.saarole.roleename" /></th>
												<th><fmt:message key="label.saarole.validind" /></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="srt" items="${saaTask.saaRoleTasks }">
												<tr>
													<td>${srt.saaRole.roleCode }</td>
													<td>${srt.saaRole.comCode }</td>
													<td>${srt.saaRole.roleCName }</td>
													<td>${srt.saaRole.roleTName }</td>
													<td>${srt.saaRole.roleEName }</td>
													<td>${srt.saaRole.validInd }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div id="#collapseTwo" class="panel-collapse collapse in">
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
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/saa/task/js/TaskEdit.js"></script>
</body>
</html>