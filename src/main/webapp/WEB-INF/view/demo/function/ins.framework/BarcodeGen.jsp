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
				<td class="bgc_tt short" style="text-align: left">public static
					byte[] generateBarcode(String msg, Map&lt;String, String&gt; map)</td>
				<td class="long">����������ͼƬ�����ظ�ͼƬ��bype���顣ʹ�÷���:<br>
					FileOutputStream output = new FileOutputStream(new
					File(&quot;c:\\1.jpeg&quot;));<br>
					output.write(BarcodeGen.generateBarcode(&quot;abcdEFGH1234&quot;,
					null));<br> output.close(); <br> @param msg ������ <br>
					@param map ���ò���
					<table summary="Shows property keys and associated values">
						<tr>
							<th>Key</th>
							<th>Description of Associated Value</th>
							<th>Default Value</th>
						</tr>
						<tr>
							<td><code>picType</code></td>
							<td>����ͼƬ��ʽ</td>
							<td>MimeTypes.MIME_JPEG</td>
						</tr>
						<tr>
							<td><code>codeType</code></td>
							<td>��������������</td>
							<td>code128</td>
						</tr>
						<tr>
							<td><code>height</code></td>
							<td>ͼƬ�߶�</td>
							<td>15mm</td>
						</tr>
						<tr>
							<td><code>width</code></td>
							<td>ͼƬ���</td>
							<td>60mm</td>
						</tr>
						<tr>
							<td><code>font-size</code></td>
							<td>�����С</td>
							<td>1.7mm</td>
						</tr>
						<tr>
							<td><code>resolution</code></td>
							<td>ͼƬ�ֱ���</td>
							<td>300</td>
						</tr>
					</table> @return ͼƬ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void generateBarcodeFile(String msg, String filePath,
					Map&lt;String, String&gt; map)</td>
				<td class="long">����������ͼƬ������ɶ�Ӧ�ļ���ʹ�÷���:<br>
					BarcodeGen.generateBarcodeFile("ABCDefgh1234", "c:\\2.jpeg", null);<br>
					@param msg<br> ������<br> @param filePath<br> ͼƬ����·��<br>
					@param map<br> ���ò���<br> @see
					BarcodeGen#generateBarcode(String, Map)
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>