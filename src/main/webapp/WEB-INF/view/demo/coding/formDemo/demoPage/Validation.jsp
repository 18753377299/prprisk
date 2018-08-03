<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>必录项</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="/WEB-INF/widgets/jquery-validation-1.13.0/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="/WEB-INF/widgets/jquery-validation-1.13.0/localization/messages_zh.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#fm").validate({//校验
			rules : {
				"required_demo" : "required"
			},
			errorPlacement : function(error, element) {
				error.css("color", "red");
				error.appendTo(element.parent());
			}
		});
	});
</script>
</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>必录项</h1>
		<div class="content_wrap">
			<div class="right">
				<div>
					机构： <input type="text" name="required_demo" id="required_demo"
						class="form-control" placeholder="required required_demo" /> <span
						class="required">*</span>
				</div>
				<ul class="info">
					<li class="title"><h2>用法</h2> 参照jquery-validation用法</li>
				</ul>
			</div>
		</div>
	</form>
</BODY>
</HTML>