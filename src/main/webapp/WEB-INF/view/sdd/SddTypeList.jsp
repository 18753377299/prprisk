<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html lang="en">
<head>
<title><fmt:message key="label.990501.codedictmanage" /></title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form name="form" id="form" class="form-horizontal" role="form"
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
												<label for="type" class="control-label">代码类型</label>
											</div>
											<div class="col-xs-6">
												<input id="type" name="[form][type][value]"
													class="form-control" type="text"
													placeholder="Search codeType" /> <input
													name="[form][type][dataType]" type="hidden" value="String" />
												<input name="[form][type][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="typeDesc" class="control-label ">代码类型描述</label>
											</div>
											<div class="col-xs-6">
												<input id="typeDesc" name="[form][typeDesc][value]"
													class="form-control" type="textarea"
													placeholder="Search typeDesc"> <input
													name="[form][typeDesc][dataType]" type="hidden" value="String" />
												<input name="[form][typeDesc][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="validStatus" class=" control-label ">标志状态</label>
											</div>
											<div class="col-xs-8">
												<label class="radio-inline"> <input type="radio"
													name="[form][validStatus][value]" id="validStatus1"
													value="" checked>全部
												</label> <label class="radio-inline"> <input type="radio"
													name="[form][validStatus][value]" id="validStatus2"
													value="1">有效
												</label> <label class="radio-inline"> <input type="radio"
													name="[form][validStatus][value]" id="validStatus3"
													value="0">无效
												</label> <input name="[form][validStatus][dataType]" type="hidden"
													value="String" /> <input name="[form][validStatus][queryType]"
													type="hidden" value="begin with" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="insertTimeForHis" class="control-label ">插入时间</label>
												<input name="[form][insertTimeForHis][dataType]" type="hidden"
													value="Date" /> <input name="[form][insertTimeForHis][queryType]"
													type="hidden" value="between" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date">
													<input id="insertTimeForHis" name="[form][insertTimeForHis][value]"
														class="form-control" type="text" placeholder="insertTimeForHis" value=""/>
													<span class="input-group-addon add-on"> <i
														class="glyphicon glyphicon-th"> </i>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
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
						<button type="button" class="btn btn-primary btn-sm btn-create">增加</button>
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
										<th>代码类型</th>
										<th>代码类型描述</th>
										<th>有效状态</th>
										<th>插入时间</th>
										<th>操作时间</th>
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
	<div id="ajax-comModal" class="modal fade" role="dialog" tabindex="-1"
		style="display: none;"></div>
	<script src="${ctx}/${app_version}/sdd/js/SddTypeList.js"></script>
	<script src="${ctx}/${app_version}/common/js/Date.js"></script>
</body>
</html>

