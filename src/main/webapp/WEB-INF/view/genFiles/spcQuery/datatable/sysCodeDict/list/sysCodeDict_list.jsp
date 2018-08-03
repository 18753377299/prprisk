<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><jsp:directive.include
	file="/WEB-INF/view/common/taglib.jspf" /><!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.990501.codedictmanage" /></title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页333333333</a></li>
				<li class="active"><i class="fa fa-table"></i>
					字典管理3333333333333333</li>
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
								value="sysCodeDict_list">
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="codeName" class="control-label"><fmt:message
														key="label.sysCodeDict.list.codename" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="codeName" name="[form][codeName][value]"
													class="form-control" type="text"
													placeholder="Search codeName" title="" /> <input
													name="[form][codeName][dataType]" type="hidden"
													value="String" /> <input
													name="[form][codeName][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="codeCode" class="control-label"><fmt:message
														key="label.sysCodeDict.list.codecode" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="codeCode" name="[form][codeCode][value]"
													class="form-control" type="text"
													placeholder="Search codeCode" title="" /> <input
													name="[form][codeCode][dataType]" type="hidden"
													value="String" /> <input
													name="[form][codeCode][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="codeType" class="control-label"><fmt:message
														key="label.sysCodeDict.list.codetype" /> </label>
											</div>
											<div class="col-xs-6">
												<input id="codeType" name="[form][codeType][value]"
													class="form-control" type="text"
													placeholder="Search codeType" title="" /> <input
													name="[form][codeType][dataType]" type="hidden"
													value="String" /> <input
													name="[form][codeType][queryType]" type="hidden"
													value="begin with" />
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
							<fmt:message key="label.sysCodeDict.list.create" />
						</button>
						&nbsp;
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
							<fmt:message key="label.sysCodeDict.list.deleteAll" />
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
												key="label.sysCodeDict.list.codecode" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysCodeDict.list.codetype" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysCodeDict.list.codename" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysCodeDict.list.isvalid" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysCodeDict.list.remark" /></th>
										<th style="text-align: center;"><fmt:message
												key="label.sysCodeDict.list.control" /></th>
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
	<script>
		var columns = [ {
			"data" : null,
			"searchable" : false,
			"orderable" : false
		}, {
			"data" : "id.codeCode",
			"class" : "right",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "id.codeType",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "codeName",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : "isValid",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true,
			"render" : function(data, type, row) {
				if (data == "N") {
					return "无效";
				} else if (data == "Y") {
					return "有效";
				}
			}
		}, {
			"data" : "remark",
			"class" : "left",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		}, {
			"data" : null,
			"class" : "center",
			"searchable" : true,
			"orderable" : true,
			"showType" : true
		} ];
		function rowCallback(row, data, displayIndex, displayIndexFull) {
			$('td:eq(0)', row)
					.html(
							"&nbsp;&nbsp;<input name=\"checkCode\" type=\"checkbox\" value=\"" + data.id.codeCode+"&"+data.id.codeType
					+ "\">"
									+ (displayIndex + 1));

			$('td:eq(6)', row)
					.html(
							"<a class='glyphicon glyphicon-eye-open' href='"
					+ contextPath
					+ "/sysCodeDict/view/" + data.id.codeCode+"/"+data.id.codeType+ "'/>"
									+ "&nbsp;&nbsp;<a class='glyphicon glyphicon-edit' href='"
							+ contextPath
							+ "/sysCodeDict/edit/"
							+ data.id.codeCode+"/"+data.id.codeType
							+ "'/>"
									+ "&nbsp;&nbsp;<a class='glyphicon glyphicon-remove' href='#' onclick=\"deleteRow('"
									+ (displayIndex + 1)
									+ "','"
									+ data.id.codeCode
									+ "','"
									+ data.id.codeType + "');\"/>");
		}
		function deleteRow(displayIndex, codeCode, codeType) {
			bootbox.confirm("确定要删除吗?", function(result) {
				if (result) {
					$.ajax({
						type : "GET",
						url : contextPath + "/sysCodeDict/delete/" + codeCode
								+ "/" + codeType,
						data : "",
						async : false,
						success : function(obj) {
							if (obj.status == '200') {
								bootbox.alert("删除成功");
								$("#resultDataTable").find("tr").eq(
										displayIndex).remove();
							}
						},
						error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							flag = false;
							bootbox.alert(textStatus + errorThrown);
						}
					});
				}
			});
		}
		$(function() {
			$("button.btn-search").click(
					function() {
						var ajaxList = new AjaxList("#resultDataTable");
						ajaxList.targetUrl = contextPath
								+ '/sysCodeDict/search?'
								+ $("#form").serialize();
						ajaxList.columns = columns;
						ajaxList.rowCallback = rowCallback;
						ajaxList.query();
					});
			$("button.btn-create").click(
					function() {
						location.href = contextPath
								+ "/sysCodeDict/edit/new/new/?editMode=create";
					});
			$("button.btn-deleteAll").click(function() {
				var selectedIds = getSelectedIds();
				if (selectedIds == "") {
					bootbox.alert("请选择要删除的记录");
					return false;
				}
				var url = contextPath + "/sysCodeDict/deleteAll/" + selectedIds;
				batchDeleteRows("search", url);
			});
		});
	</script>
</body>
</html>