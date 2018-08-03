<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/dataTables.bootstrap.css"
	rel="stylesheet">
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
				<li><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys.authoritymanagement" /></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys.authoritymanagement.featuremanager" /></li>
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
												<label for="roleCode" class="control-label"><fmt:message
														key="label.saarole.rolecode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.roleCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for=comCode class="control-label"><fmt:message
														key="label.saarole.comcode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.comCode}</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="roleCName" class="control-label"><fmt:message
														key="label.saarole.rolecname" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.roleCName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="roleTName" class="control-label"><fmt:message
														key="label.saarole.roletname" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.roleTName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="roleEName" class="control-label"><fmt:message
														key="label.saarole.roleename" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.roleEName}</div>
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
														key="label.saarole.validind" /></label>
											</div>
											<div class="col-xs-6 form-control-static">${'1' eq saaRole.validInd ? '有效' : '无效'}
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="updaterCode" class="control-label">
														<fmt:message key="label.saarole.updatercode" /></label>														
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.updaterCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="updateTime" class="control-label"><fmt:message
														key="label.saarole.updatetime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${saaRole.updateTime}"
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
														key="label.saarole.creatorcode"/></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${saaRole.creatorCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="createTime" class="control-label"><fmt:message
														key="label.saarole.createtime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${saaRole.createTime}"
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
										key="label.home.allfeature" /></a>
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
												<th><fmt:message key="label.saatask.taskcode" /></th>
												<th><fmt:message key="label.saatask.groupname" /></th>
												<th><fmt:message key="label.saatask.taskcname" /></th>
												<th><fmt:message key="label.saatask.tasktname" /></th>
												<th><fmt:message key="label.saatask.taskename" /></th>
												<th><fmt:message key="label.saatask.validind" /></th>
												<th><fmt:message key="label.saatask.url" /></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="srt" items="${saaRole.saaRoleTasks }">
												<tr>
													<td>${srt.saaTask.taskCode }</td>
													<td>${srt.saaTask.groupName }</td>
													<td>${srt.saaTask.taskCName }</td>
													<td>${srt.saaTask.taskTName }</td>
													<td>${srt.saaTask.taskEName }</td>
													<td>${srt.saaTask.validInd }</td>
													<td>${srt.saaTask.url }</td>
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
											<button type="button" class="btn btn-default btn-return"
												onclick="history.go(-1);">
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
</body>
</html>