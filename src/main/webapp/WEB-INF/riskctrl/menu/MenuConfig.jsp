<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>
<head>
<title>metro-zTree</title>
<!-- <link href='${ctx }/metro.css' rel="stylesheet" type="text/css" /> -->
<%-- <link href="${ctx}/static/zTree/${zTree_version}/css/demo.css" rel="stylesheet" type="text/css" />
 --%>
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.menu-left {
	width: 40%;
	float: left;
}

.menu-right {
	width: 60%;
	float: right;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/user/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.menucofig.selectthesystem" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="systemCode" class="control-label"><fmt:message
														key="label.home.menucofig.vo.systemcode" /></label>
											</div>
											<div class="col-xs-6">
												<select id="systemCode" name="systemCode"
													class="form-control">
													<c:if test="${vos !=null}">
														<c:forEach items="${vos}" var="vo">
															<option value="${vo.systemCode}">${vo.systemCode}</option>
														</c:forEach>
													</c:if>
												</select>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-12">
												<button type="button"
													class="btn btn-primary btn-sm btn-reset">
													<fmt:message key="label.home.menucofig.vo.displayNo" />
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-12">
			<div class="panel-group" id="accordionTwo">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionTwo"
								href="#collapseTwo"><fmt:message
									key="label.home.menucofig.result" /></a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="menu-left">
								<div class="row"></div>
								<div class="col-lg-12 col-md-6 col-xs-12">
									<ul id="treeDemo" class="ztree"></ul>
								</div>
								<div class="col-lg-10 col-md-6 col-xs-12"></div>
								<div class="row"></div>
								<div class="row">
									<div class="col-lg-12">
										<div class="col-lg-6">
											<button type="button" class="btn btn-info btn-refresh">
												<fmt:message key="label.home.menucofig.refresh" />
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="menu-right">
								<form id="editForm" class="form-horizontal" role="form"
									method="post">
									<input id="id" name="id" type="hidden" value="${smcMenu.id}" />
									<input id="systemCode2" name="systemCode" type="hidden"
										value="${smcMenu.systemCode}" /> <input id="displayNo"
										name="displayNo" type="hidden" value="${smcMenu.displayNo}" />
									<input id="menuLevel" name="menuLevel" type="hidden"
										value="${smcMenu.menuLevel}" /> <input id="version"
										name="version" type="hidden" value="${smcMenu.version}" /> <input
										id="upperId" name="upperId" type="hidden"
										value="${smcMenu.upperId}" /> <input id="insertTimeForHis"
										name="insertTimeForHis" type="hidden"
										value="<fmt:formatDate value="${smcMenu.insertTimeForHis}" pattern="yyyy-MM-dd hh:mm:ss"/>" />

									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-4">
													<label for="menuCName" class="control-label"><fmt:message
															key="label.smcMenu.menuCName" /></label>
												</div>
												<div class="col-xs-4">
													<input id="menuCName" name="menuCName" class="form-control"
														type="text" value="${smcMenu.menuCName}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-4">
													<label for="menuEName" class="control-label"><fmt:message
															key="label.smcMenu.menuEName" /></label>
												</div>
												<div class="col-xs-4">
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
												<div class="col-xs-4">
													<label for="actionURL" class="control-label"><fmt:message
															key="label.smcMenu.actionURL" /></label>
												</div>
												<div class="col-xs-4">
													<input id="actionURL" name="actionURL" class="form-control"
														type="text" value="${smcMenu.actionURL}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-4">
													<label for="target" class="control-label"><fmt:message
															key="label.smcMenu.target" /></label>
												</div>
												<div class="col-xs-4">
													<input id="target" name="target" class="form-control"
														type="text" value="${smcMenu.target}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-4">
													<label for="style" class="control-label"><fmt:message
															key="label.smcMenu.style" /></label>
												</div>
												<div class="col-xs-4">
													<input id="style" name="style" class="form-control"
														type="text" value="${smcMenu.style}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="row form-group">
												<div class="col-xs-4">
													<label for="validInd" class="control-label"><fmt:message
															key="label.smcMenu.validInd" /></label>
												</div>
												<div class="col-xs-4">
													<select id="validInd" name="validInd" class="form-control">
														<option value=""
															${'' eq smcMenu.validInd ? 'selected="selected"' : ''}></option>
														<option value="1"
															${'1' eq smcMenu.validInd ? 'selected="selected"' : ''}><fmt:message
																key="label.common.select.valid" /></option>
														<option value="0"
															${'0' eq smcMenu.validInd ? 'selected="selected"' : ''}><fmt:message
																key="label.common.select.invalid" /></option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12">
											<div class="text-center">
												<button type="submit" class="btn btn-info btn-submit">
													<fmt:message key="label.smcMenu.modify" />
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div id="ajax-modal" class="modal fade col-lg-4 col-lg-offset-4"
		tabindex="-1" style="display: none;"></div> -->
	<script
		src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.all.js"
		type="text/javascript"></script>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/menu/js/MenuConfig.js"></script>
</body>
</html>