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
				<input type="hidden" name="factors" value="" id="factors"></input>
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
												<label for="userCode" class="control-label"><fmt:message
														key="label.saauserpower.usercode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="userCode" name="userCode" class="form-control"
													type="text" value="${userCode}" readonly="readonly" />
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
												<th>权限因子代码</th>
												<th>权限操作符</th>
												<th>权限过滤值</th>
											</tr>
										</thead>
										<tbody>
											<c:set var="userPowerIndex" value="0" />
											<c:forEach var="srt" items="${saaUserPowerList}">
												<tr>
													<td><input checked name="checkCode" type="checkBox"
														value="${srt.saaFactor.factorCode}" /></td>
													<td><input type="input" class='form-control'
														readonly="readonly"
														name="saaUserPowerList[${userPowerIndex}].saaFactor.factorCode"
														value="${srt.saaFactor.factorCode}" /></td>
													<td><input type="input" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].dataOper"
														value="${srt.dataOper}" /></td>
													<td><input type="input" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].dataValue"
														value="${srt.dataValue}" /> <input type="hidden"
														class='form-control'
														name="saaUserPowerList[${userPowerIndex}].insertTimeForHis"
														value="${srt.insertTimeForHis}" /> <input
														type="hidden" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].operateTimeForHis"
														value="${srt.operateTimeForHis}" /> <input
														type="hidden" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].version"
														value="${srt.version}" /></td>
														 <input
														type="hidden" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].systemCode"
														value="${srt.systemCode}" /></td>
												</tr>
												<c:set var="userPowerIndex" value="${userPowerIndex+1}" />
											</c:forEach>
											<c:forEach var="st" items="${allSaaFactorList}">
												<tr>
													<td><input name="checkCode" type="checkBox"
														value="${st.factorCode}" /></td>
													<td><input type="input" class='form-control'
														readonly="readonly"
														name="saaUserPowerList[${userPowerIndex}].saaFactor.factorCode"
														value="${st.factorCode}" /></td>
													<td><input type="input" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].dataOper"
														value="" /></td>
													<td><input type="input" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].dataValue"
														value="" /> <input type="hidden"
														class='form-control'
														name="saaUserPowerList[${userPowerIndex}].insertTimeForHis"
														value="" /> <input
														type="hidden" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].operateTimeForHis"
														value="" /> <input
														type="hidden" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].version"
														value="0" /></td>
														 <input
														type="hidden" class='form-control'
														name="saaUserPowerList[${userPowerIndex}].systemCode"
														value="platform" /></td>
												</tr>
												<c:set var="userPowerIndex" value="${userPowerIndex+1}" />
											</c:forEach>
										</tbody>
										<input type="text" id="UserPowerIndex" name="UserPowerIndex"
								value="${userPowerIndex}" style="display: none" />
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
	<script src="${ctx}/${app_version}/common/js/AjaxList.js"></script>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/saa/userpower/js/UserPowerEdit.js"></script>
</body>
</html>