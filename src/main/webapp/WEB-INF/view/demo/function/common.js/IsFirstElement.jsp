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
			<input name="date" id="date" onclick="invokeFunction(this)" /> <input
				name="date" id="date" onclick="invokeFunction(this)" /> <input
				name="date" id="date" onclick="invokeFunction(this)" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function isFirstElement(field)判断是否为相同名称第一个域</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(field){
	if(isFirstElement(field)){
		alert("我是第1个");
	}else{
		alert("我不是第1个");
	}
}
</script>