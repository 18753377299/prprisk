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
					String md5(String str)</td>
				<td class="long">���ؾ���MD5����֮����ַ���. <br> <b>ʾ��: </b><br>
					EncryptUtils.md5 (&quot;&quot;) ����
					&quot;d41d8cd98f00b204e9800998ecf8427e&quot; <br>
					EncryptUtils.md5 (&quot;a&quot;) ����
					&quot;0cc175b9c0f1b6a831c399e269772661&quot; <br>
					EncryptUtils.md5 (&quot;abc&quot;) ����
					&quot;900150983cd24fb0d6963f7d28e17f72&quot; <br>
					EncryptUtils.md5 (&quot;message digest&quot;) ����
					&quot;f96b697d7cb7938d525a2f31aaf161d0&quot; <br>
					EncryptUtils.md5 (&quot;abcdefghijklmnopqrstuvwxyz&quot;) ����
					&quot;c3fcd3d76192e4007dfb496cca67e13b&quot; <br> @param str
					���� <br> @return ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String sinosoftEncrypt(String str)</td>
				<td class="long">���ؾ����п���ҵ��ϵͳ�ļ����㷨����֮����ַ���. <br> <b>ʾ��:
				</b><br> EncryptUtils.sinosoftEncrypt (&quot;&quot;) ����
					&quot;kkkkkkkk&quot;<br> EncryptUtils.sinosoftEncrypt
					(&quot;a&quot;) ���� &quot;kkakkkkk&quot;<br>
					EncryptUtils.sinosoftEncrypt (&quot;abc&quot;) ����
					&quot;kkakkckb&quot;<br> EncryptUtils.sinosoftEncrypt
					(&quot;message digest&quot;) ���� &quot;acmbgckb&quot;<br>
					@param str ����<br> @return ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String sinosoftDecrypt(String str)</td>
				<td class="long">���ؾ����п���ҵ��ϵͳ�ļ����㷨����֮����ַ���. <br> <b>ʾ��:
				</b><br> EncryptUtils.sinosoftDecrypt (kkkkkkkk) ���� &quot;&quot; <br>
					EncryptUtils.sinosoftDecrypt (kkakkkkk) ���� &quot;a&quot;<br>
					EncryptUtils.sinosoftDecrypt (kkakkckb) ���� &quot;abc&quot;<br>
					EncryptUtils.sinosoftDecrypt (acmbgckb) ���� &quot;message
					digest&quot; <br> @param str ���� <br> @return ����
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>