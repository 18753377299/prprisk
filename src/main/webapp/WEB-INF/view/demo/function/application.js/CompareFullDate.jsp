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
			<input name="date1" id="date1" value="2014-12-04" /> <input
				name="date2" id="date2" value="2014-12-05" /> <input type="button"
				class="button_ty" value="调用" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function compareFullDate(date1,date2)比较传入两个日期大小</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var date1 = $("#date1").val();
	var date2 = $("#date2").val();
	var result = compareFullDate(date1,date2);
	if(result == 0){
		alert(date1 + "与" + date2 + "相等");
	}else if(result == 1){
		alert(date1 + "大于" + date2);
	}else{
		alert(date1 + "小于" + date2);
	}
}
</script>