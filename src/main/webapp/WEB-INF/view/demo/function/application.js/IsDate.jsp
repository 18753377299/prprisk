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
			<input name="date" id="date" value="2014-12-04" /> <input
				name="splitChar" id="splitChar" value="-" /> <input type="button"
				class="button_ty" value="调用" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">使用说明：</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function isDate(date,splitChar)判断当前传入日期是否符合规则，第一个参数为日期；第二个为分隔符，默认“-”。</textarea>
			</div>
		</div>
	</div>
</body>
</HTML>
<script type="text/javascript">
function invokeFunction(){
	var date = $("#date").val();
	var splitChar = $("#splitChar").val();
	if(isDate(date,splitChar)){
		alert("录入日期符合规则");
	}else{
		alert("录入日期不符合规则");
		
	}
	
}
</script>