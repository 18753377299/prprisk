<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>代码翻译</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
</HEAD>
<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>代码翻译</h1>
		<div class="row">
			<div class="col-lg-4 col-md-6 col-xs-12">
				<div class="row form-group">
					<div class="col-xs-4">
						<label for="comCName" class="control-label">机构</label>
					</div>
					<div class="col-xs-8">
						<input name="comCName" class='form-control'
							value="<ce:codetag codeType="ComCode" codeCode="00000000" />
					</div>
				</div>
			</div>

		</div>
	</form>
</BODY>
</HTML>