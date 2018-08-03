<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body>
	<div class="modal-body">
		<div class="row">
			<div class="col-lg-12">
				<div class="alert alert-danger error" style="display: none;">
					<span></span>.<br clear="all" />
				</div>
				<form id="editForm" class="form-horizontal" role="form"
					method="post">
					<input type="hidden" name="editMode" value="${editMode}"></input> <input
						id="id" name="id" type="hidden" value="${smcMenu.id}" /> <input
						id="systemCode" name="systemCode" type="hidden"
						value="${smcMenu.systemCode}" /> <input id="displayNo"
						name="displayNo" type="hidden" value="${smcMenu.displayNo}" /> <input
						id="menuLevel" name="menuLevel" type="hidden"
						value="${smcMenu.menuLevel}" /> <input id="version"
						name="version" type="hidden" value="${smcMenu.version}" /> <input
						id="insertTimeForHis" name="insertTimeForHis" type="hidden"
						value="" />
					<div class="panel-group" id="accordion">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapseBase"><fmt:message
											key="label.home.info.basic" /></a>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
								</h4>
							</div>
							<div id="collapseBase" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="upperId" class="control-label"></label>
												</div>
												<div class="col-xs-6">
													<input id="upperId" name="upperId" class="form-control"
														type="hidden" value="${smcMenu.upperId}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="menuCName" class="control-label"><fmt:message
															key="" />label.smcMenu.menuCName</label>
												</div>
												<div class="col-xs-6">
													<input id="menuCName" name="menuCName" class="form-control"
														type="text" value="${smcMenu.menuCName}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="menuEName" class="control-label">MenuEName<fmt:message
															key="label.smcMenu.menuEName" /></label>
												</div>
												<div class="col-xs-6">
													<input id="menuEName" name="menuEName" class="form-control"
														type="text" value="${smcMenu.menuEName}" />
												</div>
											</div>
										</div>
									</div>
									<!-- row 强制换行 -->
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="actionURL" class="control-label">ActionURL<fmt:message
															key="label.smcMenu.actionURL" /></label>
												</div>
												<div class="col-xs-6">
													<input id="actionURL" name="actionURL" class="form-control"
														type="text" value="${smcMenu.actionURL}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="target" class="control-label">Target<fmt:message
															key="label.smcMenu.target" /></label>
												</div>
												<div class="col-xs-6">
													<input id="target" name="target" class="form-control"
														type="text" value="${smcMenu.target}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="validInd" class="control-label">ValidInd<fmt:message
															key="label.smcMenu.validInd" /></label>
												</div>
												<%-- <div class="col-xs-6">
												<input id="validInd" name="validInd"
													class="form-control" type="text"
													value="${smcMenu.validInd}" /> 
											
											</div> --%>
												<div class="col-xs-6">
													<select id="validInd" name="validInd" class="form-control">
														<option value="1" selected="selected">effecive</option>
														<option value="2">unffective</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<br />
									<div class="row">
										<div class="col-lg-12">
											<div class="text-center">
												<button type="submit" class="btn btn-info btn-submit">
													<fmt:message key="label.button.submit" />
												</button>
												<button id="closeButton" type="button" data-dismiss="modal"
													class="btn btn-default">Close</button>
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
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/menu/js/MenuEdit.js"></script>
</body>
</html>