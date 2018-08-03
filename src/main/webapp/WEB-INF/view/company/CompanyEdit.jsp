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
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys" /></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.companymanage" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
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
												<label for="comCode" class="control-label"><fmt:message
														key="label.home.prpDcompany.comCode" /></label>
											</div>
											<div class="col-xs-6">
												<input id="comCode" name="comCode" class="form-control"
													type="text" value="${prpDcompany.comCode}" />
											</div>
										</div>
									</div>

									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comCName" class="control-label"><fmt:message
														key="label.home.prpDcompany.comCName" /></label>
											</div>
											<div class="col-xs-6">
												<input id="comCName" name="comCName" class="form-control"
													type="text" value="${prpDcompany.comCName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="upperComCName" class="control-label"><fmt:message
														key="label.home.prpDcompany.upperComCName" /></label>
											</div>
											<div class="col-xs-6">
												<input id="upperComCode" name="upperComCode"
													class="form-control" type="hidden"
													value="${prpDcompany.upperComCode}" /> <input
													id="upperComCName" name="upperComCName"
													class="form-control" type="text" value="${upperComCName}" />
											</div>
										</div>
									</div>
								</div>

								<div class="row">

									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-3">
												<label for="comFullName" class="control-label"><fmt:message
														key="label.home.prpDcompany.comFullName" /></label>
											</div>
											<div class="col-xs-9">
												<input id="comFullName" name="comFullName"
													class="form-control" disabled="disabled" type="text"
													value="${comFullName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="phoneNumber" class="control-label"><fmt:message
														key="label.home.prpDcompany.phoneNumber" /></label>
											</div>
											<div class="col-xs-6">
												<input id="phoneNumber" name="phoneNumber"
													class="form-control" type="text"
													value="${prpDcompany.phoneNumber}" />
											</div>
										</div>
									</div>


								</div>
								<!-- row 强制换行 -->

								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-3">
												<label for="comType" class="control-label">机构类型<fmt:message
														key="" /></label>
											</div>
											<!--选择公司类型-->
											<div class="col-lg-9">
												<input id="comType" name="comType" type="radio" value="1"
													<c:if test="${prpDcompany.comType=='1'}"> checked="checked"</c:if> />
												管理单位 <input id="comType" name="comType" type="radio"
													value="2"
													<c:if test="${prpDcompany.comType=='2'}"> checked="checked"</c:if> />
												核算单位 <input id="comType" name="comType" type="radio"
													value="3"
													<c:if test="${prpDcompany.comType=='3'}"> checked="checked"</c:if> />
												基层单位 <input id="comType" name="comType" type="radio"
													value="4"
													<c:if test="${prpDcompany.comType=='4'}"> checked="checked"</c:if> />
												部门
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="faxNumber" class="control-label">传真号码<fmt:message
														key="" /></label>
											</div>
											<div class="col-xs-6">
												<input id="faxNumber" name="faxNumber" class="form-control"
													type="text" value="${prpDcompany.faxNumber}" />
											</div>
										</div>
									</div>

								</div>

								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<!--如果这里是col-lg-4的话，会不对齐-->
										<div class="row form-group">
											<div class="col-xs-3">
												<label for="comlevel" class="control-label"><fmt:message
														key="label.home.prpDcompany.comlevel" /></label>
											</div>
											<!--选择机构级别-->
											<div class="col-lg-9">
												<input id="comlevel" name="comlevel" type="radio" value="1"
													<c:if test="${prpDcompany.comlevel=='1'}"> checked="checked"</c:if> />省分公司
												<input id="comlevel" name="comlevel" type="radio" value="2"
													<c:if test="${prpDcompany.comlevel=='2'}"> checked="checked"</c:if> />市分公司
												<input id="comlevel" name="comlevel" type="radio" value="3"
													<c:if test="${prpDcompany.comlevel=='3'}"> checked="checked"</c:if> />区县分公司
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="sysareaCode" class="control-label"><fmt:message
														key="label.home.prpDcompany.sysareaCode" /></label>
											</div>
											<div class="col-xs-6">
												<!--这里邮编要求自动生成-->
												<input id="sysareaCode" name="sysareaCode"
													class="form-control" type="text"
													value="${prpDcompany.sysareaCode}" />
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-3">
												<label for="comAttribute" class="control-label"><fmt:message
														key="label.home.prpDcompany.comAttribute" /></label>
											</div>
											<!--选择机构属性-->
											<div class="col-lg-9">
												<input id="comAttribute" name="comAttribute" type="radio"
													value="1"
													<c:if test="${prpDcompany.comAttribute=='1'}"> checked="checked"</c:if> />出单机构
												<input id="comAttribute" name="comAttribute" type="radio"
													value="2"
													<c:if test="${prpDcompany.comAttribute=='2'}"> checked="checked"</c:if> />归属机构
												<input id="comAttribute" name="comAttribute" type="radio"
													value="3"
													<c:if test="${prpDcompany.comAttribute=='3'}"> checked="checked"</c:if> />有效
												<input id="comAttribute" name="comAttribute" type="radio"
													value="4"
													<c:if test="${prpDcompany.comAttribute=='4'}"> checked="checked"</c:if> />无效
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="postCode" class="control-label"><fmt:message
														key="label.home.prpDcompany.postCode" /></label>
											</div>
											<div class="col-xs-6">
												<!--这里邮编要求自动生成-->
												<input id="postCode" name="postCode" class="form-control"
													type="text" value="${prpDcompany.postCode}" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-2">
												<label for="addressCName" class="control-label"><fmt:message
														key="label.home.prpDcompany.addressCName" /></label>
											</div>


											<div class="col-xs-10">
												<input id="addressCName" name="addressCName"
													class="form-control" type="hidden"
													value="${prpDcompany.addressCName}" />
												<div class="input-group" id="addressName">
													<span class="input-group-addon  group-select"> <select
														name="provinceId" id="provinceId"></select>
													</span> <span class="input-group-addon  group-select"> <select
														name="cityId" id="cityId"></select>
													</span> <span class="input-group-addon  group-select"> <select
														name="countyId" id="countyId"></select>
													</span> <input id="lastName" name="lastName" type="text"
														class="form-control">
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--附加信息-->
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseTwo"><fmt:message
										key="label.home.info.Additionalinformation" /></a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">

								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="printComName" class="control-label"><fmt:message
														key="label.home.prpDcompany.printComName" /></label>
											</div>
											<div class="col-xs-9 controls">
												<input id="printComName" name="printComName"
													class="form-control" type="text"
													value="${prpDcompany.printComName}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="licence" class="control-label"><fmt:message
														key="label.home.prpDcompany.prpDcompanySub.licence" /></label>
											</div>
											<div class="col-xs-6 controls">
												<input id="licence" name="licence" class="form-control"
													type="text" value="${prpDcompany.prpDcompanySub.licence}" />
											</div>
										</div>
									</div>

								</div>



								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="printAddress" class="control-label"><fmt:message
														key="label.home.prpDcompany.printAddress" /></label>
											</div>
											<div class="col-xs-9">
												<input id="printAddress" name="printAddress"
													class="form-control" type="text"
													value="${prpDcompany.printAddress}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="beginDate" class="control-label"><fmt:message
														key="label.home.prpDcompany.prpDcompanySub.beginDate" /></label>
											</div>
											<div class="col-xs-6">
												<input id="beginDate" name="beginDate" class="form-control"
													type="text" value="${prpDcompany.prpDcompanySub.beginDate}" />
											</div>
										</div>
									</div>



								</div>

								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="pringpostcode" class="control-label"><fmt:message
														key="label.home.prpDcompany.pringpostcode" /></label>
											</div>
											<div class="col-xs-9">
												<input id="printPostcode" name="printPostcode"
													class="form-control" type="text"
													value="${prpDcompany.pringpostcode}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="endDate" class="control-label"><fmt:message
														key="label.home.prpDcompany.prpDcompanySub.endDate" /></label>
											</div>
											<div class="col-xs-6">
												<input id="endDate" name="endDate" class="form-control"
													type="text" value="${prpDcompany.prpDcompanySub.endDate}" />
											</div>
										</div>
									</div>


								</div>
								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="reportPhone" class="control-label"><fmt:message
														key="label.home.prpDcompany. reportPhone" /></label>
											</div>
											<div class="col-xs-9">
												<input id="reportPhone" name="reportPhone"
													class="form-control" type="text"
													value="${prpDcompany. reportPhone}" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="statComCode" class="control-label"><fmt:message
														key="label.home.prpDcompany.prpDcompanySub.statComCode" /></label>
											</div>

											<div class="col-xs-6 controls">
												<input id="statComCode" name="statComCode"
													class="form-control" type="text"
													value="${prpDcompany.prpDcompanySub.statComCode}" />
											</div>
										</div>
									</div>

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
				</div>
			</form>
		</div>
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/common/js/Address.js"></script>
	<script src="${ctx}/${app_version}/company/js/CompanyEdit.js"></script>
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
</body>
</html>