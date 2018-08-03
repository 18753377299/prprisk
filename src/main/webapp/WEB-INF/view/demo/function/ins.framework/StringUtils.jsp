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
					String newString(String value, int length)</td>
				<td class="long">生成一个填充字符串. <br> <b>示例: </b> <br>
					StringUtils.newString(&quot;Sinosoft&quot;,3) 返回
					&quot;SinosoftSinosoftSinosoft&quot;<br>
					StringUtils.newString(&quot;Cmm&quot;,2) 返回 &quot;CmmCmm&quot;<br>
					StringUtils.newString(&quot;a&quot;,2) 返回 &quot;aa&quot;<br>
					@param value value<br> @param length length<br> @return
					填充字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String newString(char ch, int length)</td>
				<td class="long">生成一个填充字符串. <br> <b>示例: </b> <br>
					StringUtils.newString('C',3) 返回 &quot;CCC&quot;<br>
					StringUtils.newString('a',2) 返回 &quot;aa&quot;<br> @param ch
					填充字符<br> @param length 长度<br> @return 填充字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String copyString(String str, int copyTimes)</td>
				<td class="long">将指定字符串复制指定的次数,并返回复制后的字符串. <br> <b>示例:
				</b> <br> StringUtils.copyString(&quot;Sinosoft&quot;,3) 返回
					&quot;SinosoftSinosoftSinosoft&quot; <br>
					StringUtils.copyString(&quot;Cmm&quot;,2) 返回 &quot;CmmCmm&quot; <br>
					@param str 指定的字符串,字符串的值不能为null <br> @param copyTimes
					复制字符串的次数,有效范围是>0的自然数 <br> @return 复制后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getBytesLength(String str)</td>
				<td class="long">用默认编码方式获得指定字符串转化为Bytes数组后,数组的长度. <br> <b>示例:
				</b> <br> StringUtils.getBytesLength(&quot;Cmm&quot;) 返回 3<br>
					StringUtils.getBytesLength(&quot;&quot;) 返回 0<br>
					StringUtils.getBytesLength(null) 返回 -1<br> @param str
					指定的字符串,字符串的值不能为null<br> @deprecated<br> @see
					StringUtils#getBytesLength(String, String)<br> @return
					指定字符串转化为Bytes数组后,数组的长度
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getBytesLength(String str, String charsetName)</td>
				<td class="long">获得指定字符串转化为Bytes数组后,数组的长度. <br> <b>示例:
				</b> <br> StringUtils.getBytesLength(&quot;中国人&quot;,"GBK") 返回 6<br>
					StringUtils.getBytesLength(&quot;Cmm&quot;,"GBK") 返回 3<br>
					StringUtils.getBytesLength(&quot;&quot;,"GBK") 返回 0<br>
					StringUtils.getBytesLength(null,"GBK") 返回 -1<br> @param str
					指定的字符串,字符串的值不能为null<br> @param charsetName 字符串编码方式<br>
					@return 指定字符串转化为Bytes数组后,数组的长度
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int indexOf(String str, String subStr, int startIndex, int
					occurrenceTimes)</td>
				<td class="long">获取从主字符串的指定位置开始,子字符串在主字符串中第n次出现的位置. <br> <b>示例
				</b> <br> StringUtils.indexOf(&quot;Sinosoft is a software
					corpration&quot;,&quot;soft&quot;,0,2) 返回 14 <br>StringUtils.indexOf(&quot;ab
					ab ab ab&quot;,&quot;a&quot;,4,2) 返回 9 <br>StringUtils.indexOf(&quot;ab
					ab ab ab&quot;,&quot;a&quot;,4,3) 返回 -1<br> @param str
					主字符串,字符串的值不能为null<br> @param subStr 子字符串,字符串的值不能为null<br>
					@param startIndex 指定的位置,有效范围是>=0的整数<br> @param occurrenceTimes
					第几次出现,有效范围是>0的自然数<br> @return
					返回从主字符串的指定位置开始,子字符串在主字符串中第n次出现的位置,子字符串没有搜索到时返回-1
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int indexOf(String str, String subStr, int occurrenceTimes</td>
				<td class="long">获取从主字符串的起始位置开始,子字符串在主字符串中第n次出现的位置. <br> <b>示例
				</b> <br> StringUtils.indexOf(&quot;Sinosoft is a software
					corpration&quot;,&quot;soft&quot;,2) 返回 14 <br>
					StringUtils.indexOf(&quot;ab ab ab ab&quot;,&quot;a&quot;,2) 返回 3 <br>
					StringUtils.indexOf(&quot;ab ab ab ab&quot;,&quot;a&quot;,5) 返回 -1<br>
					@param str 主字符串,字符串的值不能为null<br> @param subStr
					子字符串,字符串的值不能为null<br> @param occurrenceTimes 第几次出现,有效范围是>0的自然数<br>
					@return 返回从主字符串的起始位置开始,子字符串在主字符串中第n次出现的位置,子字符串没有搜索到时返回-1
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int indexOf(String str, String subStr, int fromIndex, boolean
					caseSensitive))</td>
				<td class="long">获取从主字符串的fromIndex位置开始,子字符串在主字符串中第1次出现的位置. <br>
					<b>示例 </b> <br> StringUtils.indexOf(&quot;Tom's name is
					Tom&quot;, &quot;tom&quot;, 0,true) 返回 -1<br>
					StringUtils.indexOf(&quot;Tom's name is Tom&quot;, &quot;Tom&quot;,
					0,true) 返回 0 <br> StringUtils.indexOf(&quot;Tom's name is
					Tom&quot;, &quot;Tom&quot;, 2,true) 返回 14 <br> @param str
					主字符串,字符串的值不能为null<br> @param subStr 子字符串,字符串的值不能为null<br>
					@param fromIndex 起始位置<br> @param caseSensitive
					是否大小写敏感，true-敏感，false-不敏感<br> @return
					返回从主字符串的fromIndex位置开始,子字符串在主字符串中第1次出现的位置,子字符串没有搜索到时返回-1
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(final String str, final String searchStr, final
					String replaceStr, final boolean caseSensitive)</td>
				<td class="long">将字符串str中所有的searchStr都替换为replaceStr. <br>
					<b>示例 </b> <br> StringUtils.replace(&quot;Tom's name is
					Tom&quot;,&quot;Tom&quot;,&quot;Peter&quot;,true) 返回 &quot;Peter's
					name is Peter&quot; <br> StringUtils.replace(&quot;Tom's name
					is Tom&quot;,&quot;tom&quot;,&quot;Peter&quot;,true) 返回 &quot;Tom's
					name is Tom&quot; <br> StringUtils.replace(&quot;Tom's name is
					Tom&quot;,&quot;tom&quot;,&quot;Peter&quot;,false) 返回 &quot;Peter's
					name is Peter&quot; <br> @param str 原字符串,字符串的值不能为null <br>
					@param searchStr 被替换的字符串,字符串的值不能为null <br> @param replaceStr
					用作替换的字符串,字符串的值如果为null，则自动按空串处理 <br> @param caseSensitive
					是否大小写敏感，true-敏感，false-不敏感 <br> @return 替换后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(String str, String searchStr, String replaceStr)</td>
				<td class="long">将字符串str中所有的oldStr都替换为newStr. <br> <b>示例
				</b> <br> StringUtils.replace(null, *, *) = null <br>
					StringUtils.replace(&quot;&quot;, *, *) = &quot;&quot; <br>
					StringUtils.replace(&quot;aba&quot;, null, null) = &quot;aba&quot;
					<br> StringUtils.replace(&quot;aba&quot;, null, null) =
					&quot;aba&quot; <br> StringUtils.replace(&quot;aba&quot;,
					&quot;a&quot;, null) = &quot;aba&quot; <br>
					StringUtils.replace(&quot;aba&quot;, &quot;a&quot;, &quot;&quot;) =
					&quot;b&quot; <br> StringUtils.replace(&quot;aba&quot;,
					&quot;a&quot;, &quot;z&quot;) = &quot;zbz&quot; <br> @param
					str 原字符串,字符串的值不能为null<br> @param searchStr
					被替换的字符串,字符串的值不能为null<br> @param replaceStr
					用作替换的字符串,字符串的值不能为null<br> @return 替换后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(String str, char searchChar, String replaceStr)</td>
				<td class="long">将字符串str中所有的searchChar都替换为newStr. <br> <b>示例
				</b> <br> StringUtils.replace(null, *, *) = null <br>
					StringUtils.replace(&quot;&quot;, *, *) = &quot;&quot; <br>
					StringUtils.replace(&quot;aba&quot;, null, null) = &quot;aba&quot;
					<br> StringUtils.replace(&quot;aba&quot;, null, null) =
					&quot;aba&quot; <br> StringUtils.replace(&quot;aba&quot;, 'a',
					null) = &quot;aba&quot; <br>
					StringUtils.replace(&quot;aba&quot;, 'a', &quot;&quot;) =
					&quot;b&quot; <br> StringUtils.replace(&quot;aba&quot;, 'a',
					&quot;z&quot;) = &quot;zbz&quot; <br> @param str
					原字符串,字符串的值不能为null<br> @param searchChar 被替换的字符<br> @param
					replaceStr 用作替换的字符串,字符串的值不能为null<br> @return 替换后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String replace(final String str, final int beginIndex, final String
					replaceStr)</td>
				<td class="long">替换字符串中从指定位置开始的、替换字符串长度的信息. <br> <b>示例
				</b> <br> StringUtils.replace(&quot;abcde f
					g&quot;,1,&quot;xx&quot;) 返回 &quot;axxde f g&quot; @param str
					原字符串,字符串的值不能为null<br> @param beginIndex 起始位置<br> @param
					replaceStr 用作替换的字符串,字符串的值不能为null<br> @return 替换后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] split(final String originalString, final int
					splitByteLength)</td>
				<td class="long">使用系统默认的编码方式将指定的字符串按给定的长度进行分割，
					返回分割后的字符串数组.如果最后一个字节是中文的半个字符， 则该字节进入数组的下一条。 <br> <b>示例 </b> <br>
					StringUtils.split(&quot;a123bcd12345&quot;,5) 返回 new
					String[]{&quot;a123b&quot;,&quot;cd123&quot;,&quot;45&quot;} <br>
					@param originalString 指定的字符串,字符串的值不能为null<br> @param
					splitByteLength 给定字节的长度<br> @deprecated<br> @see
					StringUtils#split(String, int, String)<br> @return
					返回按照给定长度分割后的字符串数组
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] split(final String originalString, final int
					splitByteLength, String charsetName)</td>
				<td class="long">
					将指定的字符串按给定的长度进行分割，返回分割后的字符串数组.如果最后一个字节是中文的半个字符，则该字节进入数组的下一条。 <br>
					<b>示例 </b> <br>
					<ol>
						<li>StringUtils.split(&quot;a123bcd12345&quot;,5,"GBK") 返回
							new String[]{&quot;a123b&quot;,&quot;cd123&quot;,&quot;45&quot;}</li>
						<li>StringUtils.split(&quot;中国人民保险公司两千年特别条款&quot;,8,"GBK") 返回
							new String[]{&quot;中国人民
							&quot;,&quot;保险公司&quot;,&quot;两千年特&quot;,&quot;别条款&quot;}</li>
						<li>StringUtils.split(&quot;机动车险A类费率&quot;,7,"GBK") 返回 new
							String[]{&quot;机动车&quot;,&quot;险A类费&quot;,&quot;率&quot;}</li>
					</ol> @param originalString 指定的字符串,字符串的值不能为null<br> @param
					splitByteLength 给定字节的长度<br> @param charsetName 字符串编码<br>
					@return 返回按照给定长度分割后的字符串数组
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String[] split(String originalString, String delimiterString)</td>
				<td class="long">将指定的字符串按给定的分割符进行分割，返回分割后的字符串数组. <br> <b>示例
				</b> <br>
					StringUtils.split(&quot;a123.bc.d12.34.5&quot;,&quot;.&quot;) 返回
					new String
					[]{&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot;34&quot;,&quot
					;5&quot;} <br>StringUtils.split(&quot;a123|bc|d12|34|5|&quot;,&quot;|&quot;)
					返回 new
					String[]{&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot;34&quot
					;,&quot;5&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;&circ;a123&circ;bc&circ
					;d12&circ;34&circ;5&circ;&quot;,&quot;&circ;&quot;) 返回 new
					String[]{&quot;
					&quot;,&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot
					;34&quot;,&quot;5&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;abcd&quot;,&quot;&circ;&quot;) 返回 new
					String[]{&quot;abcd&quot;}<br>
					StringUtils.split(&quot;&circ;abcd&quot;,&quot;&circ;&quot;) 返回 new
					String[]{&quot;&quot;,&quot;abcd&quot;}<br>
					StringUtils.split(&quot;abcd&circ;&quot;,&quot;&circ;&quot;) 返回 new
					String[]{&quot;abcd&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;&circ;abcd&circ;&quot;,&quot;&circ;&quot;)
					返回 new String[]{&quot;&quot;,&quot;abcd&quot;,&quot;&quot;}<br>
					StringUtils.split(&quot;a123._.bc._.d12._.34._.5&quot;,&quot;._.&quot;)
					返回 new
					String[]{&quot;a123&quot;,&quot;bc&quot;,&quot;d12&quot;,&quot;34&quot
					;,&quot;5&quot;}<br> @param originalString 指定的字符串<br>
					@param delimiterString 给定的分割符<br> @return
					返回按照给定的分割符进行分割后的字符串数组
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String rightTrim(String str)</td>
				<td class="long">截取字符串右边的空格. <br> <b>示例 </b> <br>
					StringUtils.rightTrim(&quot; ab cd e &quot;) 返回 &quot; ab cd
					e&quot;<br> StringUtils.rightTrim(null) 返回 &quot;&quot;<br>
					@param str 原字符串<br> @return 返回截掉右边空格后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String leftTrim(String str)</td>
				<td class="long">截取字符串左边的空格. <br> <b>示例 </b> <br>
					StringUtils.leftTrim(&quot; ab cd e &quot;) 返回 &quot;ab cd e &quot;<br>
					StringUtils.leftTrim(null) 返回 &quot;&quot;<br> @param str 原字符串<br>
					@return 返回截掉左边空格后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String absoluteTrim(String str)</td>
				<td class="long">剔除字符串中所有出现的空格字符. <br> <b>示例 </b> <br>
					StringUtils.absoluteTrim(&quot; ab cd e &quot;) 返回
					&quot;abcde&quot; <br> @param str 原字符串 <br> @return
					返回剔除掉所有出现的空格字符后的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String lowerCase(String str, int beginIndex, int endIndex)</td>
				<td class="long">将指定字符串的从beginIndex到endIndex的字符变为小写. <br>
					<b>示例 </b> <br>
					StringUtils.lowerCase(&quot;aBcDefgHIJ&quot;,0,4) 返回
					&quot;abcdefgHIJ&quot;<br>
					StringUtils.lowerCase(&quot;Abc&quot;,0,0) 返回 &quot;Abc&quot;<br>
					@param str 指定字符串<br> @param beginIndex 起始位置<br> @param
					endIndex 终止位置<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String upperCase(String str, int beginIndex, int endIndex)</td>
				<td class="long">将指定字符串的从beginIndex到endIndex的字符变为大写. <br>
					<b>示例 </b> <br>
					StringUtils.upperCase(&quot;aBcDefgHIJ&quot;,0,4) 返回
					&quot;ABCDefgHIJ&quot; <br>StringUtils.upperCase(&quot;policy&quot;,0,0)
					返回 &quot;policy&quot;<br> @param str 指定字符串<br> @param
					beginIndex 起始位置<br> @param endIndex 终止位置<br> @return
					返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String lowerCaseFirstChar(String iString)</td>
				<td class="long">将字符串的第一个字符小写. <br> <b>示例 </b> <br>
					StringUtils.lowerCaseFirstChar(&quot;ABc&quot;) 返回 &quot;aBc&quot;<br>
					@param iString 传入字符串<br> @return 传出字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String upperCaseFirstChar(String iString)</td>
				<td class="long">将字符串的第一个字符大写. <br> <b>示例 </b> <br>
					StringUtils.upperCaseFirstChar(&quot;aBc&quot;) 返回 &quot;ABc&quot;
					<br> @param iString 传入字符串 <br> @return 传出字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int timesOf(final String str, final String subStr)</td>
				<td class="long">获取子字符串在主字符串中出现的次数. <br> <b>示例 </b> <br>
					StringUtils.timesOf(&quot;2004-10-10 00:00:00:2005-10-11
					00:00:00&quot;,&quot;:&quot;) 返回 5<br> @param str
					主字符串,字符串的值不能为null<br> @param subStr 子字符串,字符串的值不能为null<br>
					@return 返回子字符串在主字符串中出现的次数,子字符串没有搜索到时返回0
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int timesOf(String str, char ch)</td>
				<td class="long">获取字符在主字符串中出现的次数. <br> <b>示例 </b> <br>
					StringUtils.timesOf(&quot;2004-10-10 00:00:00:2005-10-11
					00:00:00&quot;,':') 返回 5<br> @param str 主字符串,字符串的值不能为null<br>
					@param ch 字符,值不能为null<br> @return 返回字符在主字符串中出现的次数,字符没有搜索到时返回0
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Map<String , String> toMap(String str, String splitString)
					
				</td>
				<td class="long">变为Map,如果一个条目包含等于号"="，则等于号前为Key，后为Value<br>
					<b>示例 </b> <br> Map map =
					StringUtils.toMap("00010000,00020000,00030000,00040000",",");<br>
					Map map = StringUtils.toMap("1=true,0=false",",");<br> @param
					str<br> @param splitString<br> @return Map
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String native2ascii(String str)</td>
				<td class="long">本地编码转换为Ascii编码，同native2ascii.exe<br> 示例:
					native2ascii("出险时保单信息");返回\u51fa\u9669\u65f6\u4fdd\u5355\u4fe1\u606f<br>
					@param str 本地String.<br> @return
					转化后的Ascii编码，形如\u51fa\u9669\u65f6\u4fdd\u5355\u4fe1\u606f
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String concat(Object... sources)</td>
				<td class="long">
					将不定长参数转换成一个字符串(直接相连，内部使用StringBuilder，比String的concat方法高效) <br>
					<b>示例 </b> <br> StringUtils.concat() 返回 "";<br>
					StringUtils.concat("abc") 返回 "abc";<br>
					StringUtils.concat("ab","c","defg") 返回 "abcdefg";<br> @param
					sources 不定长度的生成源<br> @return 连接而成的一个字符串
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>