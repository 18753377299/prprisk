var page_formatLink = function(elCell, oRecord, oColumn, oData) {
	if (oColumn.key == "createTime" || oColumn.key == "updateTime") {
		var date = new Date(oData.time);
		elCell.innerHTML = date.toLocaleString();
	} else if (oColumn.key == "edit") {
		elCell.innerHTML = "<a href=\"#\" onclick=\"editRecord('./myexercise/prepareUpdate.do?userCode="
				+ oRecord.userCode + "\')\">修改</a>";
	} else if (oColumn.key == "delete") {
		elCell.innerHTML = "<a href=\"#\" onclick=\"deleteRecord('./myexercise/delete.do?userCode="
				+ oRecord.userCode + "')\">删除</a>";
	} else if (oColumn.key == "userCode") {
		elCell.innerHTML = "<a href=\"#\" onclick=\"showRecord('./myexercise/view.do?userCode="
				+ oRecord.userCode + "')\">" + oData + "</a>";
	} else {
		elCell.innerHTML = oData;
	}
};
var page_contentColumnHeaders = [ {
	key : "userCode",
	text : "人员工号",
	width : "40em",
	sortable : true,
	type : "link"
}, {
	key : "userName",
	text : "人员名称",
	width : "40em",
	sortable : true
}, {
	key : "edit",
	text : "修改",
	width : "30em",
	sortable : true,
	type : "link"
}, {
	key : "delete",
	text : "删除",
	width : "30em",
	sortable : true,
	type : "link"
} ];
var page_action = contextRootPath + "/myexercise/query.do";
var page_responseSchema = {
	resultsList : "data",
	fields : [ "userCode", "userName" ],
	totalRecords : "totalRecords"
};
