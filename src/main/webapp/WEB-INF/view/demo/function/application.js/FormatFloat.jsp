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
			<input name="number" id="number" value="123456789" /> <input
				name="count" id="count" value="3" style="width: 20px" /> <input
				name="precision" id="precision" value="2" style="width: 20px" /> <input
				name="delimiterChar" id="delimiterChar" value=","
				style="width: 20px" /> <input type="button" class="button_ty"
				value="调用" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">formatFloat(value,count,precision,delimiterChar)将传入参数进行格式化。第一个参数为传入数值；第二个参数是几位进行分隔，默认为3；第三个参数表示保留几位小数，默认为2；第四个参数表示分隔符，默认为“,”。</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var number = $("#number").val();
	var count = $("#count").val();
	var precision = $("#precision").val();
	var delimiterChar = $("#delimiterChar").val();
	var formatNumber = formatFloat(number,count,precision,delimiterChar);
	$("#number").val(formatNumber);
}
</script>