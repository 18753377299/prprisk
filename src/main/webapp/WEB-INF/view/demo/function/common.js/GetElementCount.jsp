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
			<input name="number" id="number" value="number" /> <input
				name="number" id="number" value="number" /> <input name="number"
				id="number" value="number" /> <input name="number" id="number"
				value="number" /> <input name="number" id="number" value="number" />
			<input name="count" id="count" value="count" /> <input name="count"
				id="count" value="count" /> <input name="count" id="count"
				value="count" /> <input name="count" id="count" value="count" /> <input
				name="count" id="count" value="count" /> <input name="count"
				id="count" value="count" /> <input name="count" id="count"
				value="count" /> <input type="button" class="button_ty" value="����"
				onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">ʹ��˵����</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function getElementCount(fieldName)��ȡ��ͬ����Ԫ������</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var number = getElementCount("number");
	var count = getElementCount("count");
	alert("nameΪnumber������������Ϊ" + number + "����nameΪcount������������Ϊ" + count + "��");
}
</script>