<%@ page contentType="text/html; charset=GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@ include file="/common/meta_css.jsp"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
</HEAD>

<body>
	<br />
	<br />
	<br />
	<div>
		<div style="width: 50%; float: left">
			<input name="number" id="number" value="123456789.123456" /> <input
				name="precision" id="precision" value="2" /> <input type="button"
				class="button_ty" value="调用" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function formatNumber(value,precision)将数字格式化</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript" src="${ctx}/widgets/jquery/jquery.js"></script>
<script language="javascript" src="${ctx}/common/js/Common.js"></script>
<script type="text/javascript">
function invokeFunction(){
	var number = $("#number").val();
	var precision = $("#precision").val();
	var formatNum = formatNumber(number,parseInt(precision));
	$("#number").val(formatNum);
}
</script>