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
			<input name="number" id="number" value="123456.7890000" /> <input
				type="radio" name="number" id="number" /> <input type="checkbox"
				name="number" id="number" /> <select id="select1">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select> <input type="button" class="button_ty" value="调用"
				onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function readonlyAllInput()将输入域变成只读，同时将CSS的属性变成只读</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	readonlyAllInput();
}
</script>