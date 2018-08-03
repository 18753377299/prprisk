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
					String newString(String value, int length)</td>
				<td class="long">����һ������ַ���. <br> <b>ʾ��: </b> <br>
					StringUtils.newString(&quot;Sinosoft&quot;,3) ����
					&quot;SinosoftSinosoftSinosoft&quot;<br>
					StringUtils.newString(&quot;Cmm&quot;,2) ���� &quot;CmmCmm&quot;<br>
					StringUtils.newString(&quot;a&quot;,2) ���� &quot;aa&quot;<br>
					@param value value<br> @param length length<br> @return
					����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String newString(char ch, int length)</td>
				<td class="long">����һ������ַ���. <br> <b>ʾ��: </b> <br>
					StringUtils.newString('C',3) ���� &quot;CCC&quot;<br>
					StringUtils.newString('a',2) ���� &quot;aa&quot;<br> @param ch
					����ַ�<br> @param length ����<br> @return ����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String copyString(String str, int copyTimes)</td>
				<td class="long">��ָ���ַ�������ָ���Ĵ���,�����ظ��ƺ���ַ���. <br> <b>ʾ��:
				</b> <br> StringUtils.copyString(&quot;Sinosoft&quot;,3) ����
					&quot;SinosoftSinosoftSinosoft&quot; <br>
					StringUtils.copyString(&quot;Cmm&quot;,2) ���� &quot;CmmCmm&quot; <br>
					@param str ָ�����ַ���,�ַ�����ֵ����Ϊnull <br> @param copyTimes
					�����ַ����Ĵ���,��Ч��Χ��>0����Ȼ�� <br> @return ���ƺ���ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getBytesLength(String str)</td>
				<td class="long">��Ĭ�ϱ��뷽ʽ���ָ���ַ���ת��ΪBytes�����,����ĳ���. <br> <b>ʾ��:
				</b> <br> StringUtils.getBytesLength(&quot;Cmm&quot;) ���� 3<br>
					StringUtils.getBytesLength(&quot;&quot;) ���� 0<br>
					StringUtils.getBytesLength(null) ���� -1<br> @param str
					ָ�����ַ���,�ַ�����ֵ����Ϊnull<br> @deprecated<br> @see
					StringUtils#getBytesLength(String, String)<br> @return
					ָ���ַ���ת��ΪBytes�����,����ĳ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getBytesLength(String str, String charsetName)</td>
				<td class="long">���ָ���ַ���ת��ΪBytes�����,����ĳ���. <br> <b>ʾ��:
				</b> <br> StringUtils.getBytesLength(&quot;�й���&quot;,"GBK") ���� 6<br>
					StringUtils.getBytesLength(&quot;Cmm&quot;,"GBK") ���� 3<br>
					StringUtils.getBytesLength(&quot;&quot;,"GBK") ���� 0<br>
					StringUtils.getBytesLength(null,"GBK") ���� -1<br> @param str
					ָ�����ַ���,�ַ�����ֵ����Ϊnull<br> @param charsetName �ַ������뷽ʽ<br>
					@return ָ���ַ���ת��ΪBytes�����,����ĳ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int indexOf(String str, String subStr, int startIndex, int
					occurrenceTimes)</td>
				<td class="long">��ȡ�����ַ�����ָ��λ�ÿ�ʼ,���ַ��������ַ����е�n�γ��ֵ�λ��. <br> <b>ʾ��
				</b> <br> StringUtils.indexOf(&quot;Sinosoft is a software
					corpration&quot;,&quot;soft&quot;,0,2) ���� 14 <br>StringUtils.indexOf(&quot;ab
					ab ab ab&quot;,&quot;a&quot;,4,2) ���� 9 <br>StringUtils.indexOf(&quot;ab
					ab ab ab&quot;,&quot;a&quot;,4,3) ���� -1<br> @param str
					���ַ���,�ַ�����ֵ����Ϊnull<br> @param subStr ���ַ���,�ַ�����ֵ����Ϊnull<br>
					@param startIndex ָ����λ��,��Ч��Χ��>=0������<br> @param occurrenceTimes
					�ڼ��γ���,��Ч��Χ��>0����Ȼ��<br> @return
					���ش����ַ�����ָ��λ�ÿ�ʼ,���ַ��������ַ����е�n�γ��ֵ�λ��,���ַ���û��������ʱ����-1
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int indexOf(String str, String subStr, int occurrenceTimes</td>
				<td class="long">��ȡ�����ַ�������ʼλ�ÿ�ʼ,���ַ��������ַ����е�n�γ��ֵ�λ��. <br> <b>ʾ��
				</b> <br> StringUtils.indexOf(&quot;Sinosoft is a software
					corpration&quot;,&quot;soft&quot;,2) ���� 14 <br>
					StringUtils.indexOf(&quot;ab ab ab ab&quot;,&quot;a&quot;,2) ���� 3 <br>
					StringUtils.indexOf(&quot;ab ab ab ab&quot;,&quot;a&quot;,5) ���� -1<br>
					@param str ���ַ���,�ַ�����ֵ����Ϊnull<br> @param subStr
					���ַ���,�ַ�����ֵ����Ϊnull<br> @param occurrenceTimes �ڼ��γ���,��Ч��Χ��>0����Ȼ��<br>
					@return ���ش����ַ�������ʼλ�ÿ�ʼ,���ַ��������ַ����е�n�γ��ֵ�λ��,���ַ���û��������ʱ����-1
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int indexOf(String str, String subStr, int fromIndex, boolean
					caseSensitive))</td>
				<td class="long">��ȡ�����ַ�����fromIndexλ�ÿ�ʼ,���ַ��������ַ����е�1�γ��ֵ�λ��. <br>
					<b>ʾ�� </b> <br> StringUtils.indexOf(&quot;Tom's name is
					Tom&quot;, &quot;tom&quot;, 0,true) ���� -1<br>
					StringUtils.indexOf(&quot;Tom's name is Tom&quot;, &quot;Tom&quot;,
					0,true) ���� 0 <br> StringUtils.indexOf(&quot;Tom's name is
					Tom&quot;, &quot;Tom&quot;, 2,true) ���� 14 <br> @param str
					���ַ���,�ַ�����ֵ����Ϊnull<br> @param subStr ���ַ���,�ַ�����ֵ����Ϊnull<br>
					@param fromIndex ��ʼλ��<br> @param caseSensitive
					�Ƿ��Сд���У�true-���У�false-������<br> @return
					���ش����ַ�����fromIndexλ�ÿ�ʼ,���ַ��������ַ����е�1�γ��ֵ�λ��,���ַ���û��������ʱ����-1
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(final String str, final String searchStr, final
					String replaceStr, final boolean caseSensitive)</td>
				<td class="long">���ַ���str�����е�searchStr���滻ΪreplaceStr. <br>
					<b>ʾ�� </b> <br> StringUtils.replace(&quot;Tom's name is
					Tom&quot;,&quot;Tom&quot;,&quot;Peter&quot;,true) ���� &quot;Peter's
					name is Peter&quot; <br> StringUtils.replace(&quot;Tom's name
					is Tom&quot;,&quot;tom&quot;,&quot;Peter&quot;,true) ���� &quot;Tom's
					name is Tom&quot; <br> StringUtils.replace(&quot;Tom's name is
					Tom&quot;,&quot;tom&quot;,&quot;Peter&quot;,false) ���� &quot;Peter's
					name is Peter&quot; <br> @param str ԭ�ַ���,�ַ�����ֵ����Ϊnull <br>
					@param searchStr ���滻���ַ���,�ַ�����ֵ����Ϊnull <br> @param replaceStr
					�����滻���ַ���,�ַ�����ֵ���Ϊnull�����Զ����մ����� <br> @param caseSensitive
					�Ƿ��Сд���У�true-���У�false-������ <br> @return �滻����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(String str, String searchStr, String replaceStr)</td>
				<td class="long">���ַ���str�����е�oldStr���滻ΪnewStr. <br> <b>ʾ��
				</b> <br> StringUtils.replace(null, *, *) = null <br>
					StringUtils.replace(&quot;&quot;, *, *) = &quot;&quot; <br>
					StringUtils.replace(&quot;aba&quot;, null, null) = &quot;aba&quot;
					<br> StringUtils.replace(&quot;aba&quot;, null, null) =
					&quot;aba&quot; <br> StringUtils.replace(&quot;aba&quot;,
					&quot;a&quot;, null) = &quot;aba&quot; <br>
					StringUtils.replace(&quot;aba&quot;, &quot;a&quot;, &quot;&quot;) =
					&quot;b&quot; <br> StringUtils.replace(&quot;aba&quot;,
					&quot;a&quot;, &quot;z&quot;) = &quot;zbz&quot; <br> @param
					str ԭ�ַ���,�ַ�����ֵ����Ϊnull<br> @param searchStr
					���滻���ַ���,�ַ�����ֵ����Ϊnull<br> @param replaceStr
					�����滻���ַ���,�ַ�����ֵ����Ϊnull<br> @return �滻����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(String str, char searchChar, String replaceStr)</td>
				<td class="long">���ַ���str�����е�searchChar���滻ΪnewStr. <br> <b>ʾ��
				</b> <br> StringUtils.replace(null, *, *) = null <br>
					StringUtils.replace(&quot;&quot;, *, *) = &quot;&quot; <br>
					StringUtils.replace(&quot;aba&quot;, null, null) = &quot;aba&quot;
					<br> StringUtils.replace(&quot;aba&quot;, null, null) =
					&quot;aba&quot; <br> StringUtils.replace(&quot;aba&quot;, 'a',
					null) = &quot;aba&quot; <br>
					StringUtils.replace(&quot;aba&quot;, 'a', &quot;&quot;) =
					&quot;b&quot; <br> StringUtils.replace(&quot;aba&quot;, 'a',
					&quot;z&quot;) = &quot;zbz&quot; <br> @param str
					ԭ�ַ���,�ַ�����ֵ����Ϊnull<br> @param searchChar ���滻���ַ�<br> @param
					replaceStr �����滻���ַ���,�ַ�����ֵ����Ϊnull<br> @return �滻����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(final String str, final int beginIndex, final String
					replaceStr)</td>
				<td class="long">�滻�ַ����д�ָ��λ�ÿ�ʼ�ġ��滻�ַ������ȵ���Ϣ. <br> <b>ʾ��
				</b> <br> StringUtils.replace(&quot;abcde f
					g&quot;,1,&quot;xx&quot;) ���� &quot;axxde f g&quot; @param str
					ԭ�ַ���,�ַ�����ֵ����Ϊnull<br> @param beginIndex ��ʼλ��<br> @param
					replaceStr �����滻���ַ���,�ַ�����ֵ����Ϊnull<br> @return �滻����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] split(final String originalString, final int
					splitByteLength)</td>
				<td class="long">ʹ��ϵͳĬ�ϵı��뷽ʽ��ָ�����ַ����������ĳ��Ƚ��зָ
					���طָ����ַ�������.������һ���ֽ������ĵİ���ַ��� ����ֽڽ����������һ���� <br> <b>ʾ�� </b> <br>
					StringUtils.split(&quot;a123bcd12345&quot;,5) ���� new
					String[]{&quot;a123b&quot;,&quot;cd123&quot;,&quot;45&quot;} <br>
					@param originalString ָ�����ַ���,�ַ�����ֵ����Ϊnull<br> @param
					splitByteLength �����ֽڵĳ���<br> @deprecated<br> @see
					StringUtils#split(String, int, String)<br> @return
					���ذ��ո������ȷָ����ַ�������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] split(final String originalString, final int
					splitByteLength, String charsetName)</td>
				<td class="long">
					��ָ�����ַ����������ĳ��Ƚ��зָ���طָ����ַ�������.������һ���ֽ������ĵİ���ַ�������ֽڽ����������һ���� <br>
					<b>ʾ�� </b> <br>
					<ol>
						<li>StringUtils.split(&quot;a123bcd12345&quot;,5,"GBK") ����
							new String[]{&quot;a123b&quot;,&quot;cd123&quot;,&quot;45&quot;}</li>
						<li>StringUtils.split(&quot;�й������չ�˾��ǧ���ر�����&quot;,8,"GBK") ����
							new String[]{&quot;�й�����
							&quot;,&quot;���չ�˾&quot;,&quot;��ǧ����&quot;,&quot;������&quot;}</li>
						<li>StringUtils.split(&quot;��������A�����&quot;,7,"GBK") ���� new
							String[]{&quot;������&quot;,&quot;��A���&quot;,&quot;��&quot;}</li>
					</ol> @param originalString ָ�����ַ���,�ַ�����ֵ����Ϊnull<br> @param
					splitByteLength �����ֽڵĳ���<br> @param charsetName �ַ�������<br>
					@return ���ذ��ո������ȷָ����ַ�������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] split(String originalString, String delimiterString)</td>
				<td class="long">��ָ�����ַ����������ķָ�����зָ���طָ����ַ�������. <br> <b>ʾ��
				</b> <br>
					StringUtils.split(&quot;a123.bc.d12.34.5&quot;,&quot;.&quot;) ����
					new String
					[]{&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot;34&quot;,&quot
					;5&quot;} <br>StringUtils.split(&quot;a123|bc|d12|34|5|&quot;,&quot;|&quot;)
					���� new
					String[]{&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot;34&quot
					;,&quot;5&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;&circ;a123&circ;bc&circ
					;d12&circ;34&circ;5&circ;&quot;,&quot;&circ;&quot;) ���� new
					String[]{&quot;
					&quot;,&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot
					;34&quot;,&quot;5&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;abcd&quot;,&quot;&circ;&quot;) ���� new
					String[]{&quot;abcd&quot;}<br>
					StringUtils.split(&quot;&circ;abcd&quot;,&quot;&circ;&quot;) ���� new
					String[]{&quot;&quot;,&quot;abcd&quot;}<br>
					StringUtils.split(&quot;abcd&circ;&quot;,&quot;&circ;&quot;) ���� new
					String[]{&quot;abcd&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;&circ;abcd&circ;&quot;,&quot;&circ;&quot;)
					���� new String[]{&quot;&quot;,&quot;abcd&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;a123._.bc._.d12._.34._.5&quot;,&quot;._.&quot;)
					���� new
					String[]{&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot;34&quot
					;,&quot;5&quot;}<br> @param originalString ָ�����ַ���<br>
					@param delimiterString �����ķָ��<br> @return
					���ذ��ո����ķָ�����зָ����ַ�������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String rightTrim(String str)</td>
				<td class="long">��ȡ�ַ����ұߵĿո�. <br> <b>ʾ�� </b> <br>
					StringUtils.rightTrim(&quot; ab cd e &quot;) ���� &quot; ab cd
					e&quot;<br> StringUtils.rightTrim(null) ���� &quot;&quot;<br>
					@param str ԭ�ַ���<br> @return ���ؽص��ұ߿ո����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String leftTrim(String str)</td>
				<td class="long">��ȡ�ַ�����ߵĿո�. <br> <b>ʾ�� </b> <br>
					StringUtils.leftTrim(&quot; ab cd e &quot;) ���� &quot;ab cd e &quot;<br>
					StringUtils.leftTrim(null) ���� &quot;&quot;<br> @param str ԭ�ַ���<br>
					@return ���ؽص���߿ո����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String absoluteTrim(String str)</td>
				<td class="long">�޳��ַ��������г��ֵĿո��ַ�. <br> <b>ʾ�� </b> <br>
					StringUtils.absoluteTrim(&quot; ab cd e &quot;) ����
					&quot;abcde&quot; <br> @param str ԭ�ַ��� <br> @return
					�����޳������г��ֵĿո��ַ�����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String lowerCase(String str, int beginIndex, int endIndex)</td>
				<td class="long">��ָ���ַ����Ĵ�beginIndex��endIndex���ַ���ΪСд. <br>
					<b>ʾ�� </b> <br>
					StringUtils.lowerCase(&quot;aBcDefgHIJ&quot;,0,4) ����
					&quot;abcdefgHIJ&quot;<br>
					StringUtils.lowerCase(&quot;Abc&quot;,0,0) ���� &quot;Abc&quot;<br>
					@param str ָ���ַ���<br> @param beginIndex ��ʼλ��<br> @param
					endIndex ��ֹλ��<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String upperCase(String str, int beginIndex, int endIndex)</td>
				<td class="long">��ָ���ַ����Ĵ�beginIndex��endIndex���ַ���Ϊ��д. <br>
					<b>ʾ�� </b> <br>
					StringUtils.upperCase(&quot;aBcDefgHIJ&quot;,0,4) ����
					&quot;ABCDefgHIJ&quot; <br>StringUtils.upperCase(&quot;policy&quot;,0,0)
					���� &quot;policy&quot;<br> @param str ָ���ַ���<br> @param
					beginIndex ��ʼλ��<br> @param endIndex ��ֹλ��<br> @return
					�����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String lowerCaseFirstChar(String iString)</td>
				<td class="long">���ַ����ĵ�һ���ַ�Сд. <br> <b>ʾ�� </b> <br>
					StringUtils.lowerCaseFirstChar(&quot;ABc&quot;) ���� &quot;aBc&quot;<br>
					@param iString �����ַ���<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String upperCaseFirstChar(String iString)</td>
				<td class="long">���ַ����ĵ�һ���ַ���д. <br> <b>ʾ�� </b> <br>
					StringUtils.upperCaseFirstChar(&quot;aBc&quot;) ���� &quot;ABc&quot;
					<br> @param iString �����ַ��� <br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int timesOf(final String str, final String subStr)</td>
				<td class="long">��ȡ���ַ��������ַ����г��ֵĴ���. <br> <b>ʾ�� </b> <br>
					StringUtils.timesOf(&quot;2004-10-10 00:00:00:2005-10-11
					00:00:00&quot;,&quot;:&quot;) ���� 5<br> @param str
					���ַ���,�ַ�����ֵ����Ϊnull<br> @param subStr ���ַ���,�ַ�����ֵ����Ϊnull<br>
					@return �������ַ��������ַ����г��ֵĴ���,���ַ���û��������ʱ����0
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int timesOf(String str, char ch)</td>
				<td class="long">��ȡ�ַ������ַ����г��ֵĴ���. <br> <b>ʾ�� </b> <br>
					StringUtils.timesOf(&quot;2004-10-10 00:00:00:2005-10-11
					00:00:00&quot;,':') ���� 5<br> @param str ���ַ���,�ַ�����ֵ����Ϊnull<br>
					@param ch �ַ�,ֵ����Ϊnull<br> @return �����ַ������ַ����г��ֵĴ���,�ַ�û��������ʱ����0
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Map<String , String> toMap(String str, String splitString)
					
				</td>
				<td class="long">��ΪMap,���һ����Ŀ�������ں�"="������ں�ǰΪKey����ΪValue<br>
					<b>ʾ�� </b> <br> Map map =
					StringUtils.toMap("00010000,00020000,00030000,00040000",",");<br>
					Map map = StringUtils.toMap("1=true,0=false",",");<br> @param
					str<br> @param splitString<br> @return Map
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String native2ascii(String str)</td>
				<td class="long">���ر���ת��ΪAscii���룬ͬnative2ascii.exe<br> ʾ��:
					native2ascii("����ʱ������Ϣ");����\u51fa\u9669\u65f6\u4fdd\u5355\u4fe1\u606f<br>
					@param str ����String.<br> @return
					ת�����Ascii���룬����\u51fa\u9669\u65f6\u4fdd\u5355\u4fe1\u606f
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String concat(Object... sources)</td>
				<td class="long">
					������������ת����һ���ַ���(ֱ���������ڲ�ʹ��StringBuilder����String��concat������Ч) <br>
					<b>ʾ�� </b> <br> StringUtils.concat() ���� "";<br>
					StringUtils.concat("abc") ���� "abc";<br>
					StringUtils.concat("ab","c","defg") ���� "abcdefg";<br> @param
					sources �������ȵ�����Դ<br> @return ���Ӷ��ɵ�һ���ַ���
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>