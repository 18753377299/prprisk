<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<img id='arcodeimg' src='${ctx}/barcode.jpg' />


<c:choose>
	<c:when test="${actionType == 'gen2DWithEncrypt'}">
		<a
			href="${ctx}/barcode/decoder.do?actionType=readWithEncrypt&barcodeNumber=${barcodeNumber}"
			target="result2">识别有加密的条码</a>
	</c:when>
	<c:when test="${actionType == 'gen2D'}">
		<a href="${ctx}/barcode/decoder.do?actionType=read2D&barcodeNumber=0"
			target="result2">识别无加密的二维条码</a>
	</c:when>
	<c:when test="${actionType == 'gen1D'}">
		<a href="${ctx}/barcode/decoder.do?actionType=read1D&barcodeNumber=0"
			target="result2">识别一维条码</a>
	</c:when>
</c:choose>
