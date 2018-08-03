<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
</HEAD>

<body>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<br /> <br /> <br />
		<div>
			<div style="width: 100%; float: left">
				<table class="fix_table" border="0" id="insertUserRow_Data"
					style="display: none">
					<tbody>
						<tr class="sort">
							<td width="15%"><input type="text"
								name="prpDuserList_[0].comCode" class="input_code"
								ondblclick="comDblClick('code_CodeSelect',this,'userCode','userName');"
								onchange="comDblClick('code_CodeChange',this,'userCode','userName');"
								style="width: 80%; text-align: center" value="" /></td>
							<td width="30%"><input type="text"
								name="prpDuserList_[0].comName" class="input_name"
								style="width: 80%; text-align: center" value="" /></td>
							<td width="15%"><input type="text"
								name="prpDuserList_[0].userCode" class="input_code"
								ondblclick="userDblClick('code_CodeSelect',this,'comCode');"
								onchange="userDblClick('code_CodeChange',this,'comCode');"
								style="width: 80%; text-align: center" value="" /></td>
							<td width="30%"><input type="text"
								name="prpDuserList_[0].userName" class="input_name"
								style="width: 80%; text-align: center" value="" /></td>
							<td width="10%"><input type="hidden"
								name="prpDuserList_[0].newUserCode" value="001" /> <input
								type="hidden" name="prpDuserList_[0].validStatus" value="1" />
								<input type='button' name="demo_multiLine_delete"
								class='button_ty' value='删除'
								onclick="deleteRow(this,'insertUserRow');" /></td>
						</tr>
					</tbody>
				</table>
				<table class="fix_table" border="0" id="insertUserRow" width="200px">
					<thead>
						<tr class="sort">
							<th width="15%">归属机构代码</th>
							<th width="30%">归属机构名称</th>
							<th width="15%">员工代码</th>
							<th width="30%">员工名称</th>
							<th width="10%">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="index" value="0" />
						<c:forEach begin="1" end="2">
							<tr class="sort">
								<td width="15%"><input type="text"
									name="prpDuserList[${index}].comCode" class="input_code"
									ondblclick="comDblClick('code_CodeSelect',this,'userCode','userName');"
									onchange="comDblClick('code_CodeChange',this,'userCode','userName');"
									style="width: 80%; text-align: center" value="" /></td>
								<td width="30%"><input type="text"
									name="prpDuserList[${index}].comName" class="input_name"
									style="width: 80%; text-align: center" value="" /></td>
								<td width="15%"><input type="text"
									name="prpDuserList[${index}].userCode" class="input_code"
									ondblclick="userDblClick('code_CodeSelect',this,'comCode');"
									onchange="userDblClick('code_CodeChange',this,'comCode');"
									style="width: 80%; text-align: center" value="" /></td>
								<td width="30%"><input type="text"
									name="prpDuserList[${index}].userName" class="input_name"
									style="width: 80%; text-align: center" value="" /></td>
								<td width="10%"><input type="hidden"
									name="prpDuserList[${index}].newUserCode" value="" /> <input
									type="hidden" name="prpDuserList[${index}].validStatus"
									value="" /> <input type='button' name="demo_multiLine_delete"
									class='button_ty' value='删除'
									onclick="deleteRow(this,'insertUserRow');" /></td>
							</tr>
							<c:set var="index" value="${index+1}" />
						</c:forEach>
					</tbody>
					<tfoot>
						<tr class="sort">
							<td colspan="4"></td>
							<td><input type="hidden" name="demo_multiLine_index"
								value="${index}" /> <input type="button" class="button_ty"
								name="demo_multiLine_add" value="增加"
								onclick="insertRowForStruts2('insertUserRow',this,fm.demo_multiLine_index.value);" />
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</form>
</body>
<script language="javascript" src="${ctx}/common/js/prpins/Validator.js"></script>
<script language="javascript" src="${ctx}/common/js/CodeSelect.js"></script>
<script language="javascript"
	src="${ctx}/common/js/prpins/dblclick_common.js"></script>
</HTML>