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
			<input name="str" id="str" value="123456789" /> <input name="maxlen"
				id="maxlen" value="10" /> <input type="button" class="button_ty"
				value="����" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">ʹ��˵����</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">String.prototype.Blength = function vs_str_BLength(maxlen)�ַ�������У�飬���������ַ���Ӣ���ַ�����</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var str = $("#str").val();
	var maxlen = $("#maxlen").val();
	alert(str.Blength(parseInt(maxlen)));
}
</script>