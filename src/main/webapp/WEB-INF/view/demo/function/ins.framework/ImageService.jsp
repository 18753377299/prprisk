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
				<th style="text-align: center;">������</th>
				<th style="text-align: center;">ʹ��˵��</th>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					createMicroImage(String fileName)</td>
				<td class="long">��������ͼ�ķ�����Ĭ������ͼ���ļ�����ԭͼ��ͬ�����·����ͬ<br> ����<br>
					ImageService imageService = new ImageService();//������Spring���й�<br>
					imageService.setSourceDir(&quot;E:\\&quot;);<br>
					imageService.setDestinationDir(&quot;F:\\&quot;);<br>
					imageService.setWidth(&quot;100&quot;);<br>
					imageService.setHeight(&quot;100&quot;);<br> // �Խ����ŵ���ʽ��������ͼ <br>
					imageService.setMode(&quot;ScaleOnly&quot;);<br> // ��ͼ�� <br>
					imageService.createMicroImage(&quot;001.bmp&quot;);<br> // ��ͼ��
					<br> imageService.createMicroImage(&quot;002.jpg&quot;);<br>
					// ���Ȳü������ŵ���ʽ��������ͼ <br>
					imageService.setDestinationDir(&quot;G:\\&quot;);<br>
					imageService.setMode(&quot;ClipAndScale&quot;);<br> // ��ͼ�� <br>
					imageService.createMicroImage(&quot;001.bmp&quot;);<br> // ��ͼ��
					imageService.createMicroImage(&quot;002.jpg&quot;);<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					BufferedImage createValidateImage(HttpSession session)</td>
				<td class="long">������֤��ķ���<br> ����<br> ImageService
					imageService = new ImageService();//������Srping�й�Service<br>
					imageService.setCharacterStorage(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;);<br>
					BufferedImage image = imageService.createValidateImage();<br>
					ImageIO.write(image, &quot;jpg&quot;, new
					File(&quot;F:\\validateImage.jpg&quot;));<br>
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>