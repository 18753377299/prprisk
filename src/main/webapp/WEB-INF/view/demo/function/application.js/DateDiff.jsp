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
			<input name="date1" id="date1" value="2014/12/04" /> <input
				name="date2" id="date2" value="2014/12/05" /> <input name="MD"
				id="MD" value="D" style="width: 20px" /> <input type="button"
				class="button_ty" value="调用" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function dateDiff(dateStart,dateEnd,MD)计算传入两个日期相差月数或天数。前两个参数为日期，第三个参数为”D“时计算相差天数，不为”D“时计算月数</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var date1 = $("#date1").val();
	var date2 = $("#date2").val();
	var MD = $("#MD").val();
	var diff = dateDiff(new Date(date1),new Date(date2),MD);
	if(MD !="D"){
		alert("相差" + diff + "月");
	}else{
		alert("相差" + diff + "天");
	}
}
</script>