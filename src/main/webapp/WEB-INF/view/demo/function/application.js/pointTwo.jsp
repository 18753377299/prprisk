<%@ page contentType="text/html; charset=GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@ include file="/common/meta_css.jsp"%>
<%@ include file="/common/meta_js.jsp"%>

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
			<input name="number1" id="number1" value="123456789" /> <input
				type="button" class="button_ty" value="调用"
				onclick="invokeFunction('number1');" /> <input name="number2"
				id="number2" value="123456789.1254" /> <input type="button"
				class="button_ty" value="调用" onclick="invokeFunction('number2');" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function pointTwo(s)将传入值保留两位小数</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(id){
	var obj = $("#" + id);
	var number = obj.val();
	var formatNumber = pointTwo(number);
	obj.val(formatNumber);
}
</script>