<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<div class="modal-dialog modal-md">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close glyphicon glyphicon-remove-circle"
				data-dismiss="modal" aria-hidden="true" id="compnayCloseDialog"></button>
			<h4 class="modal-title" id="myModalLabel">机构管理</h4>
		</div>
		<div class="modal-body">
			<div class="row recorded lookup">
				<div class="col-lg-12">
					<div class="alert alert-danger error" style="display: none;">
						<span></span>.<br clear="all" />
					</div>
					<form id="form" class="form-horizontal" role="form" method="post">
						<input type="hidden" name="editMode" value="${editMode}"></input>
						<input type="hidden" name="id" value="${sysCompany.id}"></input> <input
							type="hidden" name="flag" id="flag" value="${sysCompany.flag }">
						<%-- 				<input id="insertTimeForHis" name="insertTimeForHis" type="hidden" value="<fmt:formatDate value="${sysCompany.insertTimeForHis}" pattern="yyyy-MM-dd hh:mm:ss"/>" /> --%>
						<div class="panel-group" id="accordion">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapseBase">机构管理-基本信息</a>
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
														<label for="comCode" class="control-label">机构代码</label>
													</div>
													<div class="col-xs-6">
														<input id="comCode" name="comCode" type="text"
															class="form-control" value="${sysCompany.comCode}" />
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="upperId" class="control-label">机构路径</label>
													</div>
													<div class="col-xs-6">
														<input id="comPath" name="comPath" type="text"
															class="form-control" value="${sysCompany.comPath}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="newComCode" class="control-label">新机构代码</label>
													</div>
													<div class="col-xs-6">
														<input id="newComCode" name="newComCode" type="text"
															class="form-control" value="${sysCompany.newComCode}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="comCName" class="control-label">中文名称</label>
													</div>
													<div class="col-xs-6">
														<input id="comCName" name="comCName" class="form-control"
															type="text" value="${sysCompany.comCName}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="comEName" class="control-label">英文名称</label>
													</div>
													<div class="col-xs-6">
														<input id="comEName" name="comEName" class="form-control"
															type="text" value="${sysCompany.comEName}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="validStatus" class="control-label">有效标志</label>
													</div>
													<div class="col-xs-6">
														<app:codeSelect codeType="ValidStatus" type="select"
															id="validStatus" name="validStatus"
															value="${sysCompany.validStatus}"></app:codeSelect>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="addressCName" class="control-label">中文地址</label>
													</div>
													<div class="col-xs-6">
														<input id="addressCName" name="addressCName"
															class="form-control" type="text"
															value="${sysCompany.addressCName}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="addressEName" class="control-label">英文地址</label>
													</div>
													<div class="col-xs-6">
														<input id="addressEName" name="addressEName"
															class="form-control" type="text"
															value="${sysCompany.addressEName}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="postCode" class="control-label">邮政编码</label>
													</div>
													<div class="col-xs-6">
														<input id="postCode" name="postCode" class="form-control"
															type="text" value="${sysCompany.postCode}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="taskCode" class="control-label">手机号码</label>
													</div>
													<div class="col-xs-6">
														<input id="phoneNumber" name="phoneNumber"
															class="form-control" type="text"
															value="${sysCompany.phoneNumber}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="taskCode" class="control-label">传真号码</label>
													</div>
													<div class="col-xs-6">
														<input id="faxNumber" name="faxNumber"
															class="form-control" type="text"
															value="${sysCompany.faxNumber}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="comType" class="control-label">机构类型</label>
													</div>
													<div class="col-xs-6">
														<input id="comType" name="comType" class="form-control"
															type="text" value="${sysCompany.comType}" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="remark" class="control-label">备注</label>
													</div>
													<div class="col-xs-6">
														<input id="remark" name="remark" class="form-control"
															type="text" value="${sysCompany.remark}" />
													</div>
												</div>
											</div>
										</div>
										<br />
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<button type="submit" class="btn btn-info btn-submit">提交</button>
													<button id="closeButton" type="button" data-dismiss="modal"
														class="btn btn-default">关闭</button>
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
	</div>
</div>
<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
<script src="${ctx}/${app_version}/sysCompany/js/SysCompanyEdit.js"></script>