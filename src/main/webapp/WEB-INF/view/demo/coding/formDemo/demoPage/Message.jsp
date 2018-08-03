<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />

<HTML>
<HEAD>
<link rel="stylesheet"
	href="${ctx}/widgets/jBox/jBox/Skins/Blue/jbox.css" />
<script src="${ctx}/widgets/jquery/jquery-migrate-1.1.1.js"></script>
<script type="text/javascript"
	src="${ctx}/widgets/jBox/jBox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript"
	src="${ctx}/widgets/jBox/jBox/i18n/jquery.jBox-zh-CN.js"></script>

</HEAD>

<body>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<br /> <br /> <br />
		<div>
			<div style="width: 100%; float: left">
				<div id="myDiv">
					<table border="0" cellpadding="5" cellspacing="1">
						<br>
						<div id="button" align="left">
							<tr class="top">
								<td align="center"><strong>消息框展示（<a
										target="_blank" href="${ctx}//widgets/jBox/jbox-demo.html">其他例子参考</a>）
								</strong></td>
							</tr>
							<tr align="left">
								<td align="left"><input class="button_ty" type="button"
									value="alertMessage" onclick="jBoxAlertDemo()" /> <input
									class="button_ty" type="button" value="confirmMessage"
									onclick="jBoxConfirmDemo()" /> <input class="button_ty"
									type="button" value="message" onclick="jBoxDemo()" /></td>
							</tr>
						</div>
					</table>
				</div>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
	/* jbox */
	function jBoxDemo() {
		$.jBox.messager('我是 jBox message框', 'jBox', 0);
	}
	function jBoxAlertDemo() {
		$.jBox.alert('我是 jBox alert框', 'jBox');
	}
	function jBoxConfirmDemo() {
		var submit = function(v, h, f) {
			if (v == 'ok')
				jBox.tip(v, 'info');
			else if (v == 'cancel')
				jBox.tip(v, 'info');

			return true; //close
		};

		$.jBox.confirm("确定吗？", "我是jBox confirm", submit);
	}
</script>
</HTML>