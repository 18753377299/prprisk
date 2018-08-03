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
						key="label.home.companymanage" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">
					<fmt:message key="label.home.companymanage" />
				</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne">基本信息</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comCode" class="control-label">机构代码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.comCode}</div>
										</div>
									</div>

									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comCName" class="control-label">机构名称</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.comCName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="upperComCode" class="control-label">上级机构</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${upperComCName}</div>
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comType" class="control-label">机构类型</label>
											</div>
											<!--显示类型-->
											<div class="col-xs-6 form-control-static">
												<c:if test="${prpDcompany.comType=='1'}">管理单位</c:if>
												<c:if test="${prpDcompany.comType=='2'}">核算单位</c:if>
												<c:if test="${prpDcompany.comType=='3'}">基层单位</c:if>
												<c:if test="${prpDcompany.comType=='4'}">部门</c:if>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comlevel" class="control-label">机构级别</label>
											</div>
											<!--显示类型-->
											<div class="col-xs-6 form-control-static">
												<c:if test="${prpDcompany.comlevel=='1'}">省分公司</c:if>
												<c:if test="${prpDcompany.comlevel=='2'}">市分公司</c:if>
												<c:if test="${prpDcompany.comlevel=='3'}">区县分公司</c:if>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comAttribute" class="control-label">机构属性</label>
											</div>
											<div class="col-xs-6 form-control-static">
												<c:if test="${prpDcompany.comAttribute=='1'}">出单机构</c:if>
												<c:if test="${prpDcompany.comAttribute=='2'}">归属机构</c:if>
												<c:if test="${prpDcompany.comAttribute=='3'}">有效</c:if>
												<c:if test="${prpDcompany.comAttribute=='4'}">无效</c:if>
											</div>
										</div>
									</div>
								</div>
								<div class="row">

									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="faxNumber" class="control-label">传真号码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.faxNumber}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="postCode" class="control-label">邮政编码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.postCode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="postCode" class="control-label">区域代码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.sysareaCode}</div>
										</div>
									</div>
								</div>
								<div class="row">

									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-3">
												<label for="comCodeRef" class="control-label">机构全称</label>
											</div>
											<div class="col-xs-9 form-control-static">
												${comFullName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="phoneNumber" class="control-label">电话号码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.phoneNumber}</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->


								<div class="row">
									<div class="col-lg-12 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-2">
												<label for="addressCNameCName" class="control-label">机构地址</label>
											</div>
											<div class="col-xs-10 form-control-static">
												${prpDcompany.addressCName}</div>
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
								<a data-toggle="collapse" href="#collapseTwo">附加信息</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">

								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="printComName" class="control-label">打印名称</label>
											</div>
											<div class="col-xs-9 form-control-static">
												${prpDcompany.printComName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="licence" class="control-label">营业执照代码</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.prpDcompanySub.licence}</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="printAddress" class="control-label">打印地址</label>
											</div>
											<div class="col-xs-9 form-control-static">
												${prpDcompany.printAddress}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="beginDate" class="control-label">执照颁发日期</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.prpDcompanySub.beginDate}</div>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="pringpostcode" class="control-label">打印邮编</label>
											</div>
											<div class="col-xs-9 form-control-static">
												${prpDcompany.pringpostcode}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="endDate" class="control-label">执照有效日期</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${prpDcompany.prpDcompanySub.endDate}</div>
										</div>
									</div>
								</div>
								<div class="row">

									<div class="col-lg-8 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-3">
												<label for="reportPhone" class="control-label">报案电话</label>
											</div>
											<div class="col-xs-9 form-control-static">
												${prpDcompany. reportPhone}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="statComCode" class="control-label">统计机构代码</label>
											</div>

											<div class="col-xs-6 form-control-static">
												${prpDcompany.prpDcompanySub.statComCode}</div>
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
											<button type="button" class="btn btn-default btn-return">返回</button>
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
	<script src="${ctx}/${app_version}/company/js/CompanyEdit.js"></script>
</body>
</html>