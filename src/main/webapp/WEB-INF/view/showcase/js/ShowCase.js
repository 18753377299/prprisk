$(function() {
	
//	综合示例
	$("#exercise").click(function() {
		location.href = contextPath + "/exercise/list";
	});
	
//	日期与时间
	$("#datetimePicker").click(function() {
		location.href = contextPath + "/showcase/datetimePicker/list";
	});
	
//	机构选择树
	$("#comPickTree").click(function() {
		location.href = contextPath + "/showcase/comPickTree/list";
	});
	
//	对象绑定
	$("#objectBind").click(function() {
		location.href = contextPath + "/showcase/objectBind/list";
	});
	
//	特色功能展示
	$("#barcode").click(function() {
		location.href = contextPath + "/demo/barcode/prepare";
	});
	
	$("#chart").click(function() {
		location.href = contextPath + "/chart/preChart";
	});
	
	$("#coding").click(function() {
		location.href = contextPath + "/coding/preCodingView";
	});
	
	$("#httpClient").click(function() {
		location.href = contextPath + "/httpClient/httpClient";
	});
	
	$("#upload").click(function() {
		location.href = contextPath + "/upload/preUpload";
	});
	
//	表单展示
	$("#generalElements").click(function() {
		location.href = contextPath + "/showcase/forms/generalElements";
	});
	
	$("#advancedElements").click(function() {
		location.href = contextPath + "/showcase/forms/advancedElements";
	});
	
	$("#editors").click(function() {
		location.href = contextPath + "/showcase/forms/editors";
	});
	
//	接口调用
	$("#http").click(function() {
		location.href = contextPath + "/showcase/interf/findWeather";
	});
	
//	$("#webService").click(function() {
//		location.href = contextPath + "/interf/webService/findWeather";
//	});
	
//	requirejs示例
	$("#requirejs").click(function(){
		location.href = contextPath + "/showcase/requirejs/requireJs";
	})
	
});