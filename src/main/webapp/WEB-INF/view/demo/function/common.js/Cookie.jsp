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
			<input name="name" id="name" value="1" /> <input name="value"
				id="value" value="test" /> <input type="button" class="button_ty"
				value="写入" onclick="invokeFunction1();" /> <input type="button"
				class="button_ty" value="读取" onclick="invokeFunction2();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function writeCookie(name, value, hours)写入cookie  function readCookie(name)读取cookie</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction1(){
	var name = $("#name").val();
	var value = $("#value").val();
	writeCookie(name,value);
	alert("成功写入");
}
function invokeFunction2(){
	var str = $("#name").val();
	alert(readCookie(str));
}
</script>