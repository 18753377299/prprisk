<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<title><fmt:message key="label.warnjsp.websitemaintenance" /></title>
<style type="text/css">
body, html, div, p, span, h3, ol, ul, li {
	margin: 0;
	padding: 0;
}

ol, ul, li {
	list-style: none;
}

body, html {
	height: 100%;
}

.main {
	width: auto;
	height: auto;
	background: #e8e8e8;
	font-family: "微软雅黑", "宋体";
}

.con {
	width: 565px;
	*width: 568px;
	margin: 0 auto;
}

.result {
	background: #008ead;
	padding: 110px 0 80px;
}

.result h3 {
	width: 100%;
	border-bottom: 1px solid #fff;
	padding-bottom: 10px;
	margin-bottom: 10px;
	font-size: 33px;
	color: #fff;
	font-weight: bold;
}

.result div {
	color: #e8e8e8;
}

.result p {
	font-size: 25px;
}

.result ol {
	padding-left: 25px;
	*padding-left: 28px;
}

.result ol li {
	list-style: decimal;
	font-size: 20px;
}

.explain {
	background: #e2e2e2;
	color: #666;
	font-size: 12px;
	padding: 20px 0;
}

.explain .info2 {
	margin-top: 15px;
}

.explain .info2 p {
	font-weight: bold;
}

.explain .info2 ul {
	padding-left: 15px;
}

.explain .info2 li {
	list-style: disc;
}

.tel {
	padding: 20px 0;
	color: #666;
}

.tel p {
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="main">
		<div class="result">
			<div class="con" style="text-align: center;">
				<h3>
					<fmt:message key="label.warnjsp.disabletoenter" />
				</h3>
				<div style="text-align: center;">
					<p>
						系统将在&nbsp;&nbsp;<span id="countDown"
							style="color: red; font-size: 50px;"></span>&nbsp;&nbsp;秒后自动返回！
					</p>
					<a href="javascript:void(0)" onclick="history.go(-1);"
						style="font-size: 20px;"><fmt:message
							key="label.warnjsp.backtolastpage" /></a>
				</div>
			</div>
		</div>
		<div class="explain">
			<div class="con">
				<div class="info1">
					<p></p>
					<p></p>
				</div>
				<div class="info2">
					<p></p>
					<ul>
					</ul>
				</div>
			</div>
		</div>
		<div class="tel">
			<div class="con">
				<p></p>
			</div>
		</div>
	</div>
	<script
		src="${ctx}/${app_version}/static/jquery/${jquery_version}/jquery.min.js"
		type='text/javascript' charset="utf-8"></script>
	<script src="${ctx}/${app_version}/saa/common/js/CountdownTimer.js"></script>
</body>
</html>