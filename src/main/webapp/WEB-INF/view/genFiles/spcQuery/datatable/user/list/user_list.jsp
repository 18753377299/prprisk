<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.user.list.usermanage" /></title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页</a></li>
				<li class="active"><i class="fa fa-table"></i> 用户管理</li>
			</ol>
		</div>
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/user/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"> <fmt:message
										key="label.dict.pleaseinputcondition" />
								</a>
							</h4>
						</div>
						<div class="panel-heading">
							<input name="pageCode" class="form-control" type="hidden"
								value="user_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label"><fmt:message
														key="label.user.list.usercode" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="userCode" name="[form][userCode][value]"
													class="form-control" type="text" placeholder="userCode"
													title="" /> <input name="[form][userCode][dataType]"
													type="hidden" value="String" /> <input
													name="[form][userCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userName" class="control-label"><fmt:message
														key="label.user.list.username" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="userName" name="[form][userName][value]"
													class="form-control" type="text" placeholder="userName"
													title="" /> <input name="[form][userName][dataType]"
													type="hidden" value="String" /> <input
													name="[form][userName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="validStatus" class="control-label"><fmt:message
														key="label.user.list.validstatus" /> </label>
											</div>
											<div class="col-xs-6">
												<label class="radio-inline"><input type="radio"
													name="[form][validStatus][value]" id="validStatus" value="">全部</label><label
													class="radio-inline"><input type="radio"
													name="[form][validStatus][value]" id="validStatus"
													value="1">有效</label><label class="radio-inline"><input
													type="radio" name="[form][validStatus][value]"
													id="validStatus" value="0">无效</label> <input
													name="[form][validStatus][dataType]" type="hidden"
													value="String" /> <input
													name="[form][validStatus][queryType]" type="hidden"
													value="equal" />
											</div>
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
			</form>
		</div>
		<div class="col-lg-12" id="accordionTwo">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<button type="button" class="btn btn-primary btn-sm btn-create">
							<fmt:message key="label.user.list.create" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.user.list.deleteAll" />
						</button>
						&nbsp;
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
										<th><input id="checkAll" name="checkAll" type="checkbox">&nbsp;&nbsp;<fmt:message
												key="label.dict.serialnumber" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.user.list.usercode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.user.list.username" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.user.list.passwordsetdate" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.user.list.passwordexpiredate" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.user.list.control" /></th>
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
	</div><%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
	<script>var columns = [{"data":null,"searchable":false,"orderable" : false},{ "data": "userCode","class":"right","searchable":true,"orderable":true,"showType":true},{ "data": "userName","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": "passwordSetDate","class":"right","searchable":true,"orderable":true,"showType":true},{ "data": "passwordExpireDate","class":"left","searchable":true,"orderable":true,"showType":true},{ "data": null,"class":"center","searchable":true,"orderable":true,"showType":true}];function rowCallback(row, data, displayIndex, displayIndexFull) {var url = contextPath + "/user/delete/" + data.userCode;
$('td:eq(0)', row).html('&nbsp;&nbsp;<input name="checkCode" type="checkbox" value="'
			+ data.userCode+ '"/>'+(displayIndex + 1));	
$('td:eq(5)', row)
			.html(
					"<a class='glyphicon glyphicon-eye-open' href='"
					+ contextPath
					+ "/user/view/"
					+ data.userCode
					+ "'/>"+"&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
							+ "/user/edit/"
							+ data.userCode
							+ "'/>"
							+ "&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRows('resultDataTable','"
							 + url + "','" + (displayIndex + 1) 
							+ "');\"/>");}
$(function() {$("button.btn-search").click(
			function() {
				var ajaxList = new AjaxList("#resultDataTable");
				ajaxList.targetUrl = contextPath + '/datatable/search?'
						+ $("#form").serialize();
				ajaxList.columns = columns;
				ajaxList.rowCallback = rowCallback;
				ajaxList.query();
			});
			
			$("button.btn-create").click(function() {
				location.href = contextPath + "/sysUser/edit/?editMode=create";});
			$("button.btn-deleteAll").click(function() {var selectedIds = getSelectedIds();
		if (selectedIds == "") {
			bootbox.alert("请选择要删除的记录");
			return false;
		}
		var url = contextPath + "/user/deleteAll/" + selectedIds;
		batchDeleteRows("search",url);});});	</script>
</body>
</html>