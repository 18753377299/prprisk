<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Page-Level Plugin CSS - Tables -->
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/dataTables.bootstrap.css"
	rel="stylesheet">
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<fmt:message key="label.home.sys.mail.inbox" />
						<!--<button type="button" class="btn btn-primary btn-sm btn-search">收取信件</button>
						<button type="button" class="btn btn-primary btn-sm btn-sent">发件箱</button>
						<button type="button" class="btn btn-primary btn-sm btn-create">撰写信件</button>-->
					</h4>
				</div>

				<!--<input type="text" id="t" name="getIt" value=""/>-->

				<!-- 邮箱内容  -->
				<div class="panel-body">
					<button type="button" class="btn btn-primary btn-sm btn-deleteAll">
						<fmt:message key="label.button.batchdel" />
					</button>
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
										<th><fmt:message key="label.common.serialnumber" /></th>
										<th><fmt:message key="label.staletter.receivelist.sender" /></th>
										<th><fmt:message key="label.staletter.sendlist.theme" /></th>
										<th><fmt:message key="label.staletter.sendlist.date" /></th>
										<th><fmt:message key="label.common.operation" /></th>
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
		<div id="showMsg"
			style="background: #ADD8E6; width: 25%; height: 60px; z-index: 100; position: absolute; top: 50px; right: 5px; display: none;">
			<fmt:message key="label.staletter.sendlist.message" />
			！
		</div>
		<!-- /.row -->
		<!-- Page-Level Plugin Scripts - Tables -->
		<!-- <script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/dataTables/jquery.dataTables.js"></script>
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/dataTables/dataTables.bootstrap.js"></script>
	<script src="${ctx}/common/js/AjaxList.js"></script> -->

		<script
			src="${ctx}/${app_version}/staLetter/js/StaLetterReceiveList.js"></script>
</body>
</html>