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
			<input name="number" id="number" value="12321      "
				style="text-align: right;" /> <input type="button"
				class="button_ty" value="����" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">ʹ��˵����</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function rightTrim(value)ȥ���ҿո�</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	$("#number").val(rightTrim($("#number").val()));
}
</script>