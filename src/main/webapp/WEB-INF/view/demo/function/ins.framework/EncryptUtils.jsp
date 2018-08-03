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
					String md5(String str)</td>
				<td class="long">返回经过MD5加密之后的字符串. <br> <b>示例: </b><br>
					EncryptUtils.md5 (&quot;&quot;) 返回
					&quot;d41d8cd98f00b204e9800998ecf8427e&quot; <br>
					EncryptUtils.md5 (&quot;a&quot;) 返回
					&quot;0cc175b9c0f1b6a831c399e269772661&quot; <br>
					EncryptUtils.md5 (&quot;abc&quot;) 返回
					&quot;900150983cd24fb0d6963f7d28e17f72&quot; <br>
					EncryptUtils.md5 (&quot;message digest&quot;) 返回
					&quot;f96b697d7cb7938d525a2f31aaf161d0&quot; <br>
					EncryptUtils.md5 (&quot;abcdefghijklmnopqrstuvwxyz&quot;) 返回
					&quot;c3fcd3d76192e4007dfb496cca67e13b&quot; <br> @param str
					明文 <br> @return 暗文
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String sinosoftEncrypt(String str)</td>
				<td class="long">返回经过中科软业务系统的加密算法加密之后的字符串. <br> <b>示例:
				</b><br> EncryptUtils.sinosoftEncrypt (&quot;&quot;) 返回
					&quot;kkkkkkkk&quot;<br> EncryptUtils.sinosoftEncrypt
					(&quot;a&quot;) 返回 &quot;kkakkkkk&quot;<br>
					EncryptUtils.sinosoftEncrypt (&quot;abc&quot;) 返回
					&quot;kkakkckb&quot;<br> EncryptUtils.sinosoftEncrypt
					(&quot;message digest&quot;) 返回 &quot;acmbgckb&quot;<br>
					@param str 明文<br> @return 暗文
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String sinosoftDecrypt(String str)</td>
				<td class="long">返回经过中科软业务系统的加密算法解密之后的字符串. <br> <b>示例:
				</b><br> EncryptUtils.sinosoftDecrypt (kkkkkkkk) 返回 &quot;&quot; <br>
					EncryptUtils.sinosoftDecrypt (kkakkkkk) 返回 &quot;a&quot;<br>
					EncryptUtils.sinosoftDecrypt (kkakkckb) 返回 &quot;abc&quot;<br>
					EncryptUtils.sinosoftDecrypt (acmbgckb) 返回 &quot;message
					digest&quot; <br> @param str 暗文 <br> @return 明文
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>