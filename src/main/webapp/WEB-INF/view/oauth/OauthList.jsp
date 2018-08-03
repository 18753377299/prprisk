<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页</a></li>
				<li class="active"><i class="fa fa-table"></i> 系统管理</li>
				<li class="active"><i class="fa fa-table"></i> 客户端详细管理</li>
			</ol>
		</div>
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/user/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">请输入查询条件</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="clientId" class="control-label">客户编号</label>
											</div>
											<div class="col-xs-6">
												<input id="clientId" name="[form][clientId][value]"
													class="form-control" type="text"
													placeholder="Search clientId" /> <input
													name="[form][clientId][dataType]" type="hidden"
													value="String" /> <input
													name="[form][clientId][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>



									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-search"
												id="search" type="button">Search</button>
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
						<button type="button" class="btn btn-primary btn-sm btn-create">增加</button>
						<button type="button" class="btn btn-primary btn-sm btn-import">导入</button>
						<button type="button" class="btn btn-primary btn-sm btn-export">导出</button>
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">批量删除</button>
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
										<th>客户编号</th>
										<th>密码</th>

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
	<script src="${ctx}/oauth/js/OauthList.js"></script>
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
</body>
</html>