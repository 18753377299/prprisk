<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>双击框</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>双击框</h1>
		<div class="content_wrap">
			<div class="right">
				<div>
					机构： <input type="text" name="demo_codeselect" class="input_code"
						ondblclick="code_CodeSelect(this,'ComCode','0,1','Y','','hold')"
						onchange="code_CodeChange(this,'ComCode','0,1','Y','','hold')" />
					<input type="text" name="demo_codeselect_name" class="input_name"
						ondblclick="code_CodeSelect(this,'ComCode','-1,0','Y','','hold')"
						onchange="code_CodeChange(this,'ComCode','-1,0','Y','','hold')" />
				</div>
				<ul class="info">
				</ul>
			</div>
		</div>
	</form>
</BODY>
<script language="javascript" src="${ctx}/common/js/prpins/Validator.js"></script>
<script language="javascript" src="${ctx}/common/js/CodeSelect.js"></script>
</HTML>