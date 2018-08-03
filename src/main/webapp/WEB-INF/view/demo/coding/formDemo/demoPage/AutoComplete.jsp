<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>自动完成</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>自动完成</h1>
		<div class="content_wrap">
			<div class="right">
				<div>
					机构： <input name="prpDuser.prpDcompany.comCName"
						id="prpDuser.prpDcompany.comCName"
						class='input_w w_15 autoComplete'
						value="<ce:codetag codeType="ComCode" codeCode="${prpDuser.prpDcompany.comCode}" />"
						codeType="ComCode" riskCode="" language="" extraCond=""
						next="comCode"> <input type="hidden"
						name="prpDuser.prpDcompany.comCode" id="comCode" />
				</div>
				<ul class="info">
					<li class="title"><h2>用法</h2>
						<p align="left">
							js中添加：<br> $(function() {<br> initAllAutoComplete(); <br>

							});<br>
						</p></li>
				</ul>
			</div>
		</div>
	</form>
</BODY>
<script type="text/javascript">
	$(function() {
		initAllAutoComplete();//初始化自动完成

	});
</script>
</HTML>