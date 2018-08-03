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
				<td class="bgc_tt short" style="text-align: left">public void
					createMicroImage(String fileName)</td>
				<td class="long">生成缩略图的方法，默认缩略图的文件名和原图相同，存放路径不同<br> 例：<br>
					ImageService imageService = new ImageService();//建议用Spring来托管<br>
					imageService.setSourceDir(&quot;E:\\&quot;);<br>
					imageService.setDestinationDir(&quot;F:\\&quot;);<br>
					imageService.setWidth(&quot;100&quot;);<br>
					imageService.setHeight(&quot;100&quot;);<br> // 以仅缩放的形式生成缩略图 <br>
					imageService.setMode(&quot;ScaleOnly&quot;);<br> // 横图像 <br>
					imageService.createMicroImage(&quot;001.bmp&quot;);<br> // 竖图像
					<br> imageService.createMicroImage(&quot;002.jpg&quot;);<br>
					// 以先裁减后缩放的形式生成缩略图 <br>
					imageService.setDestinationDir(&quot;G:\\&quot;);<br>
					imageService.setMode(&quot;ClipAndScale&quot;);<br> // 横图像 <br>
					imageService.createMicroImage(&quot;001.bmp&quot;);<br> // 竖图像
					imageService.createMicroImage(&quot;002.jpg&quot;);<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					BufferedImage createValidateImage(HttpSession session)</td>
				<td class="long">生成验证码的方法<br> 例：<br> ImageService
					imageService = new ImageService();//建议用Srping托管Service<br>
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