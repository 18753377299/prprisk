<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>日期</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>日期</h1>
		<div class="col-lg-6 col-md-6 col-xs-12">
			<div class="row form-group control-group">
				<div class="col-xs-4">
					<label for="prpDuser.passwdSetDate" class="control-label">密码过期日期</label>
				</div>
				<div class="col-xs-8 controls">
					<div class="input-group input-append date form_date">
						<input id="prpDuser.passwdSetDate" name="prpDuser.passwdSetDate"
							class="form-control" type="text"
							value="<fmt:formatDate value="${prpDuser.passwdSetDate }" pattern="yyyy-MM-dd"/>" />
						<span class="input-group-addon add-on"> <i
							class="glyphicon glyphicon-th"> </i>
						</span>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		$(function() {
			$(".form_date").datetimepicker({
				format : "yyyy-mm-dd",
				language : "zh-CN",
				autoclose : true,
				todayBtn : true,
				todayHighlight : true,
				showMeridian : false,
				minView : "month",
				pickerPosition : "bottom-left",
			});
		});
	</script>
</BODY>
</HTML>