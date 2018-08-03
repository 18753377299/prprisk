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
			<input name="str" id="str" value="12321" /> <input name="strFind"
				id="strFind" value="1" style="width: 30px" /> <input
				name="strReplaceWith" id="strReplaceWith" value="5"
				style="width: 30px" /> <input type="button" class="button_ty"
				value="调用" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function replace(str, strFind, strReplaceWith)替换，第一个参数为传入字符串，第二个参数为被替换部分，第三个字符串为替换成部分</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var str = $("#str").val();
	var strFind = $("#strFind").val();
	var strReplaceWith = $("#strReplaceWith").val();
	$("#str").val(replace(str, strFind, strReplaceWith));
}
</script>