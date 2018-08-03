<%@ page contentType="text/html; charset=GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@ include file="/common/meta_css.jsp"%>
<%@ include file="/common/meta_js.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
</HEAD>

<body>
	<br />
	<br />
	<br />
	<div>
		<table class="fix_table">
			<tr>
				<th style="text-align: center;">方法名</th>
				<th style="text-align: center;">使用说明</th>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getBarcodeContent(String fileName)</td>
				<td class="long">条形码解码工具类。使用方法:<br>
					BarcodeParser.getBarcodeContent("c:\\2.jpeg")返回图片中的条形码<br>
					@param fileName<br> 包含条形码的图片的文件名（含路径）<br> @return
					图片中的条形码文字
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>