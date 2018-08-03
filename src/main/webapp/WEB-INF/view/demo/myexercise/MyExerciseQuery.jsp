<%@ include file="/common/taglibs.jsp"%>
<%@ page contentType="text/html; charset=GBK"%>
<html>
<head>
<%@ include file="/common/meta_css.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
</head>
<body>
	<form name="fm">
		<div id="wrapper">
			<div id="container">
				<div id="crash_menu">
					<h2 align="center">
						<fmt:message key="label.home.inof.conditon" />
					</h2>
				</div>
				<table class="fix_table">
					<tr>
						<td class="bgc_tt short">员工号</td>
						<td class="long"><input name="myExercise.userCode"
							id="myExercise.userCode" class='input_w w_15'></td>
						<td class="bgc_tt short">员工名称</td>
						<td class="long"><input name="myExercise.userName"
							id="myExercise.userName" class='input_w w_15'></td>

					</tr>
					<tr>
						<td colspan="6" align="center"><input type="button"
							class="button_ty" value="查 询" onclick="executeQuery(1, 10);">
							<input type="button" id="addButton"
							onclick="editRecord('${ctx}/myexercise/prepareAdd.do')"
							class="button_ty" value="增 加"></td>
					</tr>

				</table>
			</div>
			<div id="content_navigation" name="content_navigation" class="query"
				align="center"></div>
			<div id="content" class="sort"></div>
			<div id="content_navigation" name="content_navigation" class="query"
				align="center"></div>
		</div>
	</form>
	<br>
</body>

<%@ include file="/common/meta.jsp"%>
<script language="javascript"
	src="${ctx }/pages/demo/myexercise/js/MyExerciseQuery.js"></script>
<script type="text/javascript">
	var totalRecords = -1;
	var isFirstLoad = true;
	var contentDataTable;
	var contentColumnHeaders;
	YAHOO.namespace("query.container");

	//Page Init
	function init() {
		YAHOO.widget.Column.formatLink = page_formatLink;
		contentColumnHeaders = page_contentColumnHeaders;
	}

	//Query Data
	function executeQuery(pageNo, pageSize) {
		if (isNaN(parseInt(pageNo))) {
			pageNo = 1;
		}
		if (isNaN(parseInt(pageSize))) {
			pageSize = 10;
		}
		var myColumnSet = new YAHOO.widget.ColumnSet(contentColumnHeaders);
		var myDataSource = new YAHOO.util.DataSource(page_action);
		myDataSource.responseType = YAHOO.util.DataSource.TYPE_JSON;
		myDataSource.responseSchema = page_responseSchema;
		myDataSource.subscribe("responseParseEvent", SINOSOFT.util.navigation);
		myDataSource.connMgr.setForm(fm);
		var initialRequest = "pageSize=" + pageSize + "&pageNo=" + pageNo;
		var myConfiges = {
			initialRequest : initialRequest,
			paginator : false
		};
		if (isFirstLoad == true) {
			contentDataTable = new YAHOO.widget.DataTable("content",
					myColumnSet, myDataSource, myConfiges);

			isFirstLoad = false;
		} else {
			contentDataTable._oRecordSet = new YAHOO.widget.RecordSet();
			contentDataTable.initialRequest = initialRequest;
			contentDataTable.dataSource = myDataSource;
			contentDataTable.dataSource.sendRequest(
					contentDataTable.initialRequest,
					contentDataTable.onDataReturnPopulateTable,
					contentDataTable);
		}
	}

	//init on load
	YAHOO.util.Event.addListener(window, 'load', init);
</script>
</html>