<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@ include file="/common/meta_css.jsp"%>
<%@ page contentType="text/html; charset=GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>编辑信息</title>
</head>

<body>
	<c:choose>
		<c:when test="${opreateType == 'edit'}">
			<c:set var="url" value="${ctx}/myexercise/update.do"></c:set>
		</c:when>
		<c:when test="${opreateType == 'add'}">
			<c:set var="url" value="${ctx}/myexercise/add.do"></c:set>
		</c:when>
	</c:choose>
	<form name="fm" action="${url}" namespace="/myexercise" method="post">

		<table class="fix_table">
			<tr>
				<td class="bgc_tt short" colspan="4" align="left">
					<h2 align="center">
						<c:choose>
							<c:when test="${opreateType == 'edit'}">
									修改MyExercise信息
								</c:when>
							<c:when test="${opreateType == 'add'}">
									增加MyExercise信息
								</c:when>
							<c:when test="${opreateType == 'view'}">
									查看MyExercise信息
								</c:when>
						</c:choose>
					</h2>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short">人员工号</td>
				<td class="long"><c:choose>
						<c:when test="${opreateType == 'edit'}">
								${myExercise.userCode}
								<input type="hidden" name="myExercise.userCode"
								value="${myExercise.userCode }" />
						</c:when>
						<c:when test="${opreateType == 'add'}">
							<input type="text" name="myExercise.userCode"
								value="${myExercise.userCode}" class='input_w w_30' />
						</c:when>
						<c:when test="${opreateType == 'view'}">
								${myExercise.userCode}
							</c:when>
					</c:choose></td>
				<td class="bgc_tt short">员工名称</td>
				<td class="long"><c:choose>
						<c:when test="${opreateType != 'view'}">
							<input type="text" name="myExercise.userName"
								value="${myExercise.userName }" class='input_w w_30' />
						</c:when>
						<c:otherwise>
								${myExercise.userName }
							</c:otherwise>
					</c:choose></td>
			</tr>
		</table>
		<br>
		<table>
			<tr>
				<td colspan=4 align="center"><c:if
						test="${opreateType != 'view'}">
						<input type="submit" class="button_ty" value="保存" />
					</c:if> <input type="button" class="button_ty" onclick="closeWin();"
					value="关闭" /></td>
			</tr>
		</table>
	</form>
</body>

<%@ include file="/common/meta_js.jsp"%>
<script language="javascript"
	src="${ctx}/widgets/yui/tabview/tabview-min.js"></script>
<script language="javascript" src="${ctx}/common/js/tabber.js"></script>
<script language="javascript" src="${ctx}/common/js/MulLine.js"></script>
<script language="javascript" src="${ctx}/widgets/dwr/engine.js"></script>
<script language="javascript" src="${ctx}/widgets/dwr/util.js"></script>
<script language="javascript"
	src="${ctx}/dwr/interface/dwrInvokeDataAction.js"></script>

<script type="text/javascript">
	function init() {
		//init_calendar("calContainer1", "imgBtn1", "myExercise.passwdSetDate");
		//init_calendar("calContainer2", "imgBtn2", "myExercise.passwdExpireDate");
		initAllSelectUi();
	}

	function closeWindow() {
		window.opener.executeQuery(1, 10);
		window.close();
	}

	function closeWin() {
		window.close();
	}

	YAHOO.util.Event.addListener(window, 'load', init);//初始化JS方法
</script>
</html>
