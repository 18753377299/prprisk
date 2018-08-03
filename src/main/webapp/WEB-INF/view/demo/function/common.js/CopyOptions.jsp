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
			<select id="select1">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select> <select id="select2">
			</select> <input type="button" class="button_ty" value="调用"
				onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function copyOptions(targetSelect,sourceSelect)复制下拉框中option</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript" src="${ctx}/widgets/jquery/jquery.js"></script>
<script language="javascript" src="${ctx}/common/js/Common.js"></script>
<script type="text/javascript">
function invokeFunction(){
	copyOptions($("#select2").get(0),$("#select1").get(0));
}
</script>