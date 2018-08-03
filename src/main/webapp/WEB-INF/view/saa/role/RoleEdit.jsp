<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />

<!DOCTYPE html>
<html>
<head>
<link href='${ctx }/metro.css' rel="stylesheet" type="text/css" />
<style>
</style>
<script type="text/javascript">
//   var zNodes = ${zNodes};
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input> <input
					type="hidden" id="id" name="id" value="${saaRole.roleCode}"></input>
				<input type="hidden" name="version" value="${saaRole.version}"></input>
				<!-- 选中复选框对应的值 -->
				<input type="hidden" name="nodes1" value="" id="nodes1"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message
										key="label.button.edit" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="roleCode" class="control-label"><fmt:message
														key="label.saarole.rolecode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleCode" name="roleCode" class="form-control"
													type="text" value="${saaRole.roleCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="comCode" class="control-label"><fmt:message
														key="label.saarole.comcode" /></label>
											</div>
											<div class="col-xs-8">
												<input id="comCode" name="comCode" class="form-control"
													type="text" value="${saaRole.comCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="validInd" class="control-label"><fmt:message
														key="label.saarole.validind" /></label>
											</div>
											<div class="col-xs-8">
												<c:if test="${saaRole.validInd==null}">
												<app:codeSelect codeType="ValidStatus" type="select" name="validInd" value="1"/>
												</c:if>
												<c:if test="${saaRole.validInd!=null}">
												<app:codeSelect codeType="ValidStatus" type="select" name="validInd" value="${saaRole.validInd}"/>
												</c:if>
												<%-- <input id="validInd" name="validInd"
													class="form-control" type="text" value="${saaRole.validInd}" /> --%>
											</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="roleCName" class="control-label"><fmt:message
														key="label.saarole.rolecname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleCName" name="roleCName" class="form-control"
													type="text" value="${saaRole.roleCName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="roleTName" class="control-label"><fmt:message
														key="label.saarole.roletname" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleTName" name="roleTName" class="form-control"
													type="text" value="${saaRole.roleTName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="saaRoleEName" class="control-label"><fmt:message
														key="label.saarole.roleename" /></label>
											</div>
											<div class="col-xs-8">
												<input id="roleEName" name="roleEName" class="form-control"
													type="text" value="${saaRole.roleEName}" />
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
												<th width="8%"><input id="checkAll" name="checkAll"
													type="checkbox">&nbsp;&nbsp;<fmt:message
														key="label.common.serialnumber" /></th>
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
													<td><input checked name="checkCode" type="checkBox"
														value="${srt.saaTask.taskCode }" /></td>
													<td>${srt.saaTask.taskCode }</td>
													<td>${srt.saaTask.groupName }</td>
													<td>${srt.saaTask.taskCName }</td>
													<td>${srt.saaTask.taskTName }</td>
													<td>${srt.saaTask.taskEName }</td>
													<td>${srt.saaTask.validInd }</td>
													<td>${srt.saaTask.url }</td>
												</tr>
											</c:forEach>
											<c:forEach var="st" items="${saaTask }">
												<tr>
													<td><input name="checkCode" type="checkBox"
														value="${st.taskCode }" /></td>
													<td>${st.taskCode }</td>
													<td>${st.groupName }</td>
													<td>${st.taskCName }</td>
													<td>${st.taskTName }</td>
													<td>${st.taskEName }</td>
													<td>${st.validInd }</td>
													<td>${st.url }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
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
	<script src="${ctx}/${app_version}/saa/role/js/RoleEdit.js"></script>
</body>
</html>