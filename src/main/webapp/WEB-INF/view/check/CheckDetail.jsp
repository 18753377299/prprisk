<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
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
				<li class="active"><i class="fa fa-table"></i>
				<fmt:message key="label.home.sys.authoritymanagement.role" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action='${ctx }/checkDetail/checkDetail/${type}/<fmt:formatDate value="${imsCheckDetail.workDay }" pattern="yyyy-MM-dd"/>'>
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.inof.conditon" /></a>
							</h4>
						</div>
						<input type="hidden" id="type" value="${type }" /> <input
							type="hidden" id="workDay"
							value='<fmt:formatDate value="${imsCheckDetail.workDay }" pattern="yyyy-MM-dd"/>' />
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="btn-toolbar" style="text-align: center;">
										<span style="font-size: 25px;"> <fmt:formatDate
												value="${imsCheckDetail.workDay }" pattern="yyyy-MM-dd" />
										</span>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="id" class="control-label"><fmt:message
														key="label.home.imsCheckDetail.id" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${imsCheckDetail.id}</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for=userCode class="control-label"><fmt:message
														key="label.home.imsCheckDetail.userCode" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${imsCheckDetail.userCode}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="checkInTime" class="control-label "><fmt:message
														key="label.home.imsCheckDetail.checkInTime" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${imsCheckDetail.checkInTime }"
													pattern="HH:mm:ss" />
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="checkInAddress" class="control-label "><fmt:message
														key="label.home.imsCheckDetail.checkInAddress" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${imsCheckDetail.checkInAddress}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="checkOutTime" class="control-label "><fmt:message
														key="label.home.imsCheckDetail.checkOutTime" /></label>
											</div>
											<div class="col-xs-6">
												<fmt:formatDate value="${imsCheckDetail.checkOutTime }"
													pattern="HH:mm:ss" />
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="checkOutAddress" class="control-label "><fmt:message
														key="label.home.imsCheckDetail.checkOutAddress" /></label>
											</div>
											<div class="col-xs-6 form-control-static">
												${imsCheckDetail.checkOutAddress}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="checkInReason" class="control-label "><fmt:message
														key="label.home.imsCheckDetail.checkInReason" /></label>
											</div>
											<c:if test="${type == 'checkIn' }">
												<div class="col-xs-6">
													<textarea id="checkInReason" name="checkInReason"
														class="form-control" placeholder="Reason">${imsCheckDetail.checkInReason}</textarea>
												</div>
											</c:if>
											<c:if test="${type != 'checkIn' }">
												<div class="col-xs-6 form-control-static">
													${imsCheckDetail.checkInReason}</div>
											</c:if>
										</div>
									</div>
									<div class="col-lg-6 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="checkOutReason" class="control-label "><fmt:message
														key="label.home.imsCheckDetail.checkOutReason" /></label>
											</div>
											<c:if test="${type == 'checkOut' }">
												<div class="col-xs-6">
													<textarea id="checkOutReason" name="checkOutReason"
														class="form-control" placeholder="Reason">${imsCheckDetail.checkOutReason}</textarea>
												</div>
											</c:if>
											<c:if test="${type != 'checkOut' }">
												<div class="col-xs-6 form-control-static">
													${imsCheckDetail.checkOutReason}</div>
											</c:if>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<c:if test="${type == 'checkIn' }">
												<button type="button"
													class="btn btn-primary btn-outline btn-submit">
													<fmt:message key="label.home.imsCheckDetail.checkIn" />
												</button>
											</c:if>
											<c:if test="${type == 'checkOut' }">
												<button type="button"
													class="btn btn-primary btn-outline btn-submit">
													<fmt:message key="label.home.imsCheckDetail.checkOut" />
												</button>
											</c:if>
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
	<div id="ajax-CheckModal" class="modal fade" tabindex="-1"
		style="display: none;"></div>
	<script src="${ctx}/${app_version}/check/js/CheckDetail.js"></script>
</body>
</html>