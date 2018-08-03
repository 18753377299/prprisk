<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>复选下拉框</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="/WEB-INF/widgets/jquery-chosen/css/chosen.css" />
<script type="text/javascript"
	src="/WEB-INF/widgets/jquery-chosen/js/chosen.jquery.js"></script>
<style>
.chzn-container-single .chzn-search {
	display: none;
}
</style>
<script>
		$(function() {
			$('.chosen_select').chosen({disable_search_threshold: 10});
		});
	</script>
</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>复选下拉框</h1>
		<div class="content_wrap">
			<div class="right">
				<div>
					机构： <select multiple data-placeholder="复选下拉" style="width: 180px;"
						class="w_p80  chosen_select">
						<option value="请选择"></option>
						<option value="1">北京分公司</option>
						<option value="2">天津分公司</option>
						<option value="3">河北分公司</option>
						<option value="4">上海分公司</option>
					</select>
				</div>
				<ul class="info">
					<li class="title"><h2>用法</h2>
						<p align="left">
							js中增加：<br>$(function() { <br>
							$('.chosen_select').chosen({disable_search_threshold: 10});<br>
							});
						</p></li>
				</ul>
			</div>
		</div>
	</form>
</BODY>
</HTML>