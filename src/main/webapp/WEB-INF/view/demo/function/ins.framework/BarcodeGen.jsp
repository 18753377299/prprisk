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
					byte[] generateBarcode(String msg, Map&lt;String, String&gt; map)</td>
				<td class="long">生成条形码图片，返回该图片的bype数组。使用方法:<br>
					FileOutputStream output = new FileOutputStream(new
					File(&quot;c:\\1.jpeg&quot;));<br>
					output.write(BarcodeGen.generateBarcode(&quot;abcdEFGH1234&quot;,
					null));<br> output.close(); <br> @param msg 条形码 <br>
					@param map 配置参数
					<table summary="Shows property keys and associated values">
						<tr>
							<th>Key</th>
							<th>Description of Associated Value</th>
							<th>Default Value</th>
						</tr>
						<tr>
							<td><code>picType</code></td>
							<td>生成图片格式</td>
							<td>MimeTypes.MIME_JPEG</td>
						</tr>
						<tr>
							<td><code>codeType</code></td>
							<td>生成条形码类型</td>
							<td>code128</td>
						</tr>
						<tr>
							<td><code>height</code></td>
							<td>图片高度</td>
							<td>15mm</td>
						</tr>
						<tr>
							<td><code>width</code></td>
							<td>图片宽度</td>
							<td>60mm</td>
						</tr>
						<tr>
							<td><code>font-size</code></td>
							<td>字体大小</td>
							<td>1.7mm</td>
						</tr>
						<tr>
							<td><code>resolution</code></td>
							<td>图片分辨率</td>
							<td>300</td>
						</tr>
					</table> @return 图片流
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void generateBarcodeFile(String msg, String filePath,
					Map&lt;String, String&gt; map)</td>
				<td class="long">生成条形码图片并保存成对应文件。使用方法:<br>
					BarcodeGen.generateBarcodeFile("ABCDefgh1234", "c:\\2.jpeg", null);<br>
					@param msg<br> 条形码<br> @param filePath<br> 图片保存路径<br>
					@param map<br> 配置参数<br> @see
					BarcodeGen#generateBarcode(String, Map)
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>