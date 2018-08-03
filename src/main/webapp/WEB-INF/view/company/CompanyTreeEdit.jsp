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
						id="id" name="id" type="hidden" value="${prpDcompany.comCode}" />
					<input id="upperComCode" name="upperComCode" type="hidden"
						value="${prpDcompany.upperComCode}" />
					<%--  <input id="insertTimeForHis" name="insertTimeForHis" type="hidden" value="<fmt:formatDate value="${prpDcompany.insertTimeForHis}" pattern="yyyy-MM-dd hh:mm:ss"/>" />   --%>
					<div class="panel-group" id="accordion">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapseBase">基本信息</a>
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
													<label for="comCode" class="control-label">ComCode</label>
												</div>
												<div class="col-xs-6">
													<input id="comCode" name="comCode" class="form-control"
														type="text" value="${prpDcompany.comCode}" />
												</div>
											</div>
										</div>
									</div>
									<!--  <div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="upperComCode" class="control-label">UpperComCode</label>
											</div>
											<div class="col-xs-6">
												
											</div>
										</div>
									</div>
								</div>   -->
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="comCName" class="control-label">ComCName</label>
												</div>
												<div class="col-xs-6">
													<input id="comCName" name="comCName" class="form-control"
														type="text" value="${prpDcompany.comCName}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="comEName" class="control-label">ComEName</label>
												</div>
												<div class="col-xs-6">
													<input id="comEName" name="comEName" class="form-control"
														type="text" value="${prpDcompany.comEName}" />
												</div>
											</div>
										</div>
									</div>
									<!-- row 强制换行 -->
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="faxNumber" class="control-label">FaxNumber</label>
												</div>
												<div class="col-xs-6">
													<input id="faxNumber" name="faxNumber" class="form-control"
														type="text" value="${prpDcompany.faxNumber}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="phoneNumber" class="control-label">PhoneNumber</label>
												</div>
												<div class="col-xs-6">
													<input id="phoneNumber" name="phoneNumber"
														class="form-control" type="text"
														value="${prpDcompany.phoneNumber}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="addressCName" class="control-label">AddressCName</label>
												</div>
												<div class="col-xs-6">
													<textarea id="addressCName" class="form-control"> ${prpDcompany.addressCName}</textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="addressEName" class="control-label">AddressEName</label>
												</div>
												<div class="col-xs-6">
													<textarea id="addressEName" class="form-control"> ${prpDcompany.addressEName}</textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="validStatus" class="control-label">ValidStatus</label>
												</div>
												<div class="col-xs-6">
													<select id="validStatus" name="validStatus"
														class="form-control">
														<option value="0"
															<c:if test="${prpDcompany.validStatus == '0'}">selected</c:if>>0</option>
														<option value="1"
															<c:if test="${prpDcompany.validStatus == '1'}">selected</c:if>>1</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="newComCode" class="control-label">NewComCode</label>
												</div>
												<div class="col-xs-6">
													<input id="newComCode" name="newComCode"
														class="form-control" type="text"
														value="${prpDcompany.newComCode}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="accountant" class="control-label">Accountant</label>
												</div>
												<div class="col-xs-6">
													<input id="accountant" name="accountant"
														class="form-control" type="text"
														value="${prpDcompany.accountant}" />
												</div>
											</div>
										</div>
									</div>
									<%--  <div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="version" class="control-label">Version</label>
											</div>
											<div class="col-xs-6">
												<input id="version" name="version"
													class="form-control" type="text"
													value="${prpDcompany.version}" />
											</div>
										</div>
									</div>
								</div>   --%>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-6">
													<label for="flag" class="control-label">Flag</label>
												</div>
												<div class="col-xs-6">
													<input id="flag" name="flag" class="form-control"
														type="text" value="${prpDcompany.flag}" />
												</div>
											</div>
										</div>
									</div>
									<br />
									<div class="row">
										<div class="col-lg-12">
											<div class="text-center">
												<button type="submit" class="btn btn-info btn-submit">提
													交</button>
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
	<script src="${ctx}/${app_version}/company/js/CompanyTreeEdit.js"></script>
</body>
</html>