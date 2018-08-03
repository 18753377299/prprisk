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
					type="hidden" id="roleCodes" name="roleCodes"></input>
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
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="userCode" class="control-label"><fmt:message
														key="label.saauserrole.usercode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="userCode" name="userCode" class="form-control"
													type="text" value="${user.userCode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="roleCode" class="control-label"><fmt:message
														key="label.sysuser.username" /></label>
											</div>
											<div class="col-xs-6">
												<input id="userCode" name="userName" class="form-control"
													type="text" value="${user.userName}" placeholder="" />
											</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="startDate" class="control-label"><fmt:message
														key="label.saauserrole.startdate" /></label>
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date">
													<input id="startDate" name="startDate"
														value='<fmt:formatDate 
                                                    	value="${saaUserRoles[0].startDate }" pattern="yyyy-MM-dd"/>'
														class="form-control" type="text" placeholder="yyyy-mm-dd" />
													<span class="input-group-addon add-on"> <i
														class="glyphicon glyphicon-th"> </i>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="endDate" class="control-label"><fmt:message
														key="label.saauserrole.enddate" /></label>
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date">
													<input id="endDate" name="endDate"
														value='<fmt:formatDate 
                                                    	value="${saaUserRoles[0].endDate }" pattern="yyyy-MM-dd"/>'
														class="form-control" type="text" placeholder="yyyy-mm-dd" />
													<span class="input-group-addon add-on"> <i
														class="glyphicon glyphicon-th"> </i>
													</span>
												</div>
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
										key="label.home.inof.roles" /></a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
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
											<c:forEach var="srt" items="${saaUserRoles}">
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
											<c:forEach var="st" items="${allSaaRole}">
												<tr>
													<td><input name="checkCode" type="checkBox"
														value="${st.roleCode }" /></td>
													<td>${st.roleCode }</td>
													<td>${st.comCode }</td>
													<td>${st.roleCName }</td>
													<td>${st.roleTName }</td>
													<td>${st.roleEName }</td>
													<td>${st.validInd}</td>
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
			</form>
		</div>
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/saa/user/js/UserRoleEdit.js"></script>

</body>
</html>