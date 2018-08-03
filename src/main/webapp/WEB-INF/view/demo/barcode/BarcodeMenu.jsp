<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<a href="${ctx}/barcode/prepareForm.do?actionType=gen1D&bizType=gen"
	target="form">生成一维码</a>
|
<a href="${ctx}/barcode/prepareForm.do?actionType=gen2D&bizType=gen"
	target="form">生成二维条码（无加密）</a>
|
<a
	href="${ctx}/barcode/prepareForm.do?actionType=gen2DWithEncrypt&bizType=gen"
	target="form">生成二维条码（有加密）</a>
<br />
依赖包： picc-barcode-1.0-jdk15.jar zxing-core-2.1-jdk15.jar
zxing-javase-2.1-jdk15.jar
