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
					type="hidden" id="id" name="id" value="${saaTask.taskCode}"></input>
				<input type="hidden" id="roleCodes" name="roleCodes"></input>
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
											<div class="col-xs-6">
												<input id="taskCode" name="taskCode" class="form-control"
													type="text" value="${saaTask.taskCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="groupName" class="control-label"><fmt:message
														key="label.saatask.groupname" /></label>
											</div>
											<div class="col-xs-6">
												<input id="groupName" name="groupName" class="form-control"
													type="text" value="${saaTask.groupName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="url" class="control-label"><fmt:message
														key="label.saatask.url" /></label>
											</div>
											<div class="col-xs-6">
												<input id="url" name="url" class="form-control" type="text"
													value="${saaTask.url}" />
											</div>
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
											<div class="col-xs-6">
												<input id="taskCName" name="taskCName" class="form-control"
													type="text" value="${saaTask.taskCName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskTName" class="control-label"><fmt:message
														key="label.saatask.tasktname" /></label>
											</div>
											<div class="col-xs-6">
												<input id="taskTName" name="taskTName" class="form-control"
													type="text" value="${saaTask.taskTName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="taskEName" class="control-label"><fmt:message
														key="label.saatask.taskename" /></label>
											</div>
											<div class="col-xs-6">
												<input id="taskEName" name="taskEName" class="form-control"
													type="text" value="${saaTask.taskEName}" />
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
								<a data-toggle="collapse" href="#collapseTwo"><fmt:message
										key="label.home.info.basic" /></a>
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
											<div class="col-xs-6">
											<c:if test="${saaTask.validInd==null}">
											<app:codeSelect codeType="ValidStatus" type="select" name="validInd" value="1"/>
											</c:if>
											<c:if test="${saaTask.validInd!=null}">
											<app:codeSelect codeType="ValidStatus" type="select" name="validInd" value="${saaTask.validInd}"/>
											</c:if>
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
												<th width="8%"><input id="checkAll" name="checkAll"
													type="checkbox">&nbsp;&nbsp;<fmt:message
														key="label.common.serialnumber" /></th>
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
													<td><input checked name="checkCode" type="checkBox"
														value="${srt.saaRole.roleCode }" /></td>
													<td>${srt.saaRole.roleCode }</td>
													<td>${srt.saaRole.comCode }</td>
													<td>${srt.saaRole.roleCName }</td>
													<td>${srt.saaRole.roleTName }</td>
													<td>${srt.saaRole.roleEName }</td>
													<td>${srt.saaRole.validInd }</td>
												</tr>
											</c:forEach>
											<c:forEach var="st" items="${saaRole }">
												<tr>
													<td><input name="checkCode" type="checkBox"
														value="${st.roleCode }" /></td>
													<td>${st.roleCode }</td>
													<td>${st.comCode }</td>
													<td>${st.roleCName }</td>
													<td>${st.roleTName }</td>
													<td>${st.roleEName }</td>
													<td>${st.validInd }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
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
	<script src="${ctx}/${app_version}/saa/task/js/TaskEdit.js"></script>
</body>
</html>