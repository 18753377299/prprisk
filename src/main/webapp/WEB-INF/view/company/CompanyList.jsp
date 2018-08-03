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
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys" /></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.companymanage" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/company/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.inof.conditon" /></a>
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
											<div class="col-xs-6">

												<input id="comCode" name="[form][comCode][value]"
													class="form-control input-group input-append date form_date"
													type="text" placeholder="Search comCode" /><input
													name="[form][comCode][dataType]" type="hidden"
													value="String" /> <input name="[form][comCode][queryType]"
													type="hidden" value="begin with" />

											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="comCName" class=" control-label ">机构名称</label>
											</div>
											<div class="col-xs-6">

												<input id="comCName" name="[form][comCName][form]"
													class="form-control input-group input-append date form_date"
													type="text" placeholder="Search comCName"><input
													name="[form][comCName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][comCName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="upperComCode" class="control-label">上级机构</label>
											</div>
											<div class="col-xs-6">
												<input id="upperComCode" name="[form][upperComCode][form]"
													class="form-control" type="text"
													placeholder="Search upperComCode" /><input
													name="[form][upperComCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][upperComCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-search" type="button">Search</button>
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
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<button type="button" class="btn btn-default btn-create">增加</button>
						<button type="button" class="btn btn-default btn-import">导入</button>
						<button type="button" class="btn btn-default btn-export">导出</button>
						<button type="button" class="btn btn-default btn-deleteAll">批量删除</button>
						<button type="button" class="btn btn-default btn-tree">树状展示</button>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover jqueryDataTable"
								id="resultDataTable">
								<thead>
									<tr>
										<th><input id="checkAll" name="checkAll" type="checkbox"></th>
										<th>序号</th>
										<th>机构代码</th>
										<th>机构名称</th>
										<th>电话号码</th>
										<th>地址</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${ctx}/${app_version}/company/js/CompanyList.js"></script>
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
	<script type="text/javascript" src='${ctx }/js/common/AjaxList.js'></script>

</body>
</html>