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
				class="button_ty" value="����" onclick="invokeFunction();" />
		</div>
		<div style="width: 50%">
			<div align="left">ʹ��˵����</div>
			<div>
				<textarea rows="10" cols="80" readonly="readonly">function isDate(date,splitChar)�жϵ�ǰ���������Ƿ���Ϲ��򣬵�һ������Ϊ���ڣ��ڶ���Ϊ�ָ�����Ĭ�ϡ�-����</textarea>
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
		alert("¼�����ڷ��Ϲ���");
	}else{
		alert("¼�����ڲ����Ϲ���");
		
	}
	
}
</script>