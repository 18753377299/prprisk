<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>机构管理</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message key="label.home.inof.conditon" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="form-group">
											<label for="comCode" class="col-xs-4 control-label">comCode</label>
											<%-- 隐藏的控制条件 --%>
											<input name="[form][comCode][dataType]" type="hidden"
												value="String" /> <input
												name="[form][comCode][queryType]" type="hidden"
												value="begin with" />
											<div class="col-xs-8">
												<input id="id" name="[form][comCode][value]"
													class="form-control" type="text"
													placeholder="Search ComCode" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="form-group">
											<label for="name" class="col-xs-4 control-label">name</label>
											<%-- 隐藏的控制条件 --%>
											<input name="[form][name][dataType]" type="hidden"
												value="String" /> <input
												name="[form][name][queryType]" type="hidden"
												value="begin with" />
											<div class="col-xs-8">
												<input id="id" name="[form][name][value]"
													class="form-control" type="text"
													placeholder="Search Name" />
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-search"
												id="search" type="button">查询</button>
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
						<button type="button" class="btn btn-primary btn-sm btn-create"><fmt:message key="label.button.add" /></button>
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll"><fmt:message key="label.button.batchdel" /></button>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table width="100%"
								class="table table-striped table-bordered table-hover stripe row-border order-column"
								id="resultDataTable">
								<thead>
									<tr>
										<th><input id="checkAll" name="checkAll" type="checkbox">&nbsp;&nbsp;<fmt:message key="label.common.serialnumber" /></th>
										<th>id</th>
										<th>comCode</th>
										<th>name</th>
										<th>comPath</th>
										<th>createdAt</th>
										<th>updatedAt</th>
										<th>description</th>
										<th>operation</th>
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
	<!-- /.row -->
	<script src="${ctx}/${app_version}/sysCompany/js/SysCompanyList.js"></script>
</body>
</html>