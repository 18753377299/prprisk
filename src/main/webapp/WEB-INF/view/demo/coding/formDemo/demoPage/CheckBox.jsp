<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>复选框</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />

</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>复选框</h1>
		<div class="row">
			<div class="col-lg-4 col-md-6 col-xs-12">
				<div class="row form-group">
					<div class="col-xs-4">
						<label for="validStatus" class=" control-label ">标志状态</label>
					</div>
					<div class="col-xs-8">
						<label class="checkbox-inline"> <input type="checkbox">1
						</label> <label class="checkbox-inline"> <input type="checkbox">2
						</label> <label class="checkbox-inline"> <input type="checkbox">3
						</label>
					</div>
				</div>
			</div>
		</div>
	</form>
</BODY>
</HTML>