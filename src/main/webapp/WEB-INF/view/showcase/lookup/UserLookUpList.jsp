<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<div class="modal-dialog modal-lg">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close glyphicon glyphicon-remove-circle"
				data-dismiss="modal" aria-hidden="true" id="userCloseDialog"></button>
			<h4 class="modal-title" id="myModalLabel">用户查找带回</h4>
		</div>
		<div class="modal-body">
			<div class="row recorded lookup">
				<div class="col-lg-12">
					<!-- style="position:absolute;" -->
					<form id="userForm" class="form-horizontal" role="form" action="">
						<input id="validStatus" name="[form][validStatus][value]"
							class="form-control" type="hidden" value="1" /> <input
							name="[form][validStatus][dataType]" type="hidden" value="String" />
						<input name="[form][validStatus][queryType]" type="hidden"
							value="equal" />
						<div class="panel-group" id="accordion1">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion1"
											href="#collapseOne1">用户查询</a>
									</h4>
								</div>
								<div id="collapseOne1" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-4">
														<label for="userCode" class="control-label"> <fmt:message
																key="label.sysuser.usercode" /></label>
													</div>
													<div class="col-xs-6">
														<input id="userCodeSearch" name="[form][userCode][value]"
															class="form-control" type="text" /> <input
															name="[form][userCode][dataType]" type="hidden"
															value="String" /> <input
															name="[form][userCode][queryType]" type="hidden"
															value="begin with" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-4">
														<label for="userName" class="control-label "><fmt:message
																key="label.sysuser.username" /></label>
													</div>
													<div class="col-xs-6">
														<input id="userNameSearch" name="[form][userName][value]"
															class="form-control" type="text"><input
															name="[form][userName][dataType]" type="hidden"
															value="String" /> <input
															name="[form][userName][queryType]" type="hidden"
															value="begin with" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="btn-toolbar" style="text-align: center;">
													<button class="btn btn-primary btn-outline btn-search"
														id="userSearch" type="button">查询</button>
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
							<h4 class="panel-title"></h4>
						</div>
						<div id="collapseTwo1" class="panel-collapse">
							<div class="panel-body">
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover jqueryDataTable"
										id="userResultDataTable">
										<thead>
											<tr>
												<th><fmt:message key="label.sysuser.usercode" /></th>
												<th><fmt:message key="label.sysuser.username" /></th>
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
		</div>
	</div>
</div>
<script src="${ctx}/${app_version}/common/js/AjaxList.js"></script>
<script>
	var columns = [ {
		"data" : "userCode",
		"orderSequence" : [ "asc" ]
	}, {
		"data" : "userName",
		"orderSequence" : [ "asc" ],
		"render" : function(data, type, row) {
			return '<span style="white-space: normal;">' + data + '</span>';
		}
	}, {
		"data" : null,
		"searchable" : false,
		"orderable" : false
	} ];
	function rowCallback(row, data, displayIndex, displayIndexFull) {
		$('td:eq(2)', row).html(
				"<a class='glyphicon glyphicon-ok-circle' href='#' onclick=\"selectCallback('"
						+ data.userCode + "','" + data.userName + "')\"></a>");

		$(row).on("dblclick", function() {
			selectCallback(data.userCode, data.userName);
		});

	}
	$(function() {

		// 鎺т欢浜嬩欢
		$("#userSearch").click(function() {
			initListTable();
		});
		var codeFieldIdCondition = "${codeFieldId}";
		codeFieldIdCondition = codeFieldIdCondition.replace("[", "\\[")
				.replace("]", "\\]").replace(".", "\\.");
		$("#userCodeSearch").val($("#" + codeFieldIdCondition).val());
		setTimeout("initListTable()",500);
	});
	function selectCallback(userCode, userName) {
	
		var codeFieldId = "${codeFieldId}";
		var nameFieldId = "${nameFieldId}";
		codeFieldId = codeFieldId.replace("[", "\\[").replace("]", "\\]")
				.replace(".", "\\.");
		nameFieldId = nameFieldId.replace("[", "\\[").replace("]", "\\]")
				.replace(".", "\\.");
		$("#" + codeFieldId).val(userCode);
		$("#" + nameFieldId).val(userName);
		$("#userCloseDialog").click();
	}
	function initListTable(){
		var ajaxList = new AjaxList("#userResultDataTable");
		ajaxList.targetUrl = contextPath + '/sysusers/index';
		ajaxList.columns = columns;
		ajaxList.formId = "userForm";
		ajaxList.rowCallback = rowCallback;
		ajaxList.method = "GET";
		ajaxList.query();
		
	}
</script>