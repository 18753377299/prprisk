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
					void addSupportType(Object clazz)</td>
				<td class="long">添加mergePO时支持的类型<br> @param clazz
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String zeroToEmpty(final int value)</td>
				<td class="long">当整型数值为0时,返回字符串"",否则将整型值转化为字符串返回. <br> <b>示例
				</b> <br> <br>DataUtils.zeroToEmpty(0) 返回 &quot;&quot; <br>DataUtils.zeroToEmpty(1)
					返回 &quot;1&quot;<br> @param i 输入的整型值<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String zeroToEmpty(final double value)</td>
				<td class="long">当浮点型数值为0时,返回字符串"",否则将浮点型值转化为字符串返回. <br> <b>示例
				</b> <code>
						<br> <br>DataUtils.zeroToEmpty(0d) 返回 &quot;&quot; <br>DataUtils.zeroToEmpty(1.2d)
						返回 &quot;1.2&quot;
					</code><br> @param d 输入的浮点型值<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String nullToEmpty(final String str)</td>
				<td class="long">当字符串为null时,返回字符串"". <br> <b>示例 </b> <code>
						<br> <br>DataUtils.nullToEmpty(null) 返回 &quot;&quot; <br>DataUtils.nullToEmpty(&quot;null&quot;)
						返回 &quot;null&quot; <br>DataUtils.nullToEmpty(&quot;abc&quot;)
						返回 &quot;abc&quot;
					</code><br> @param str 输入字符串<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String emptyToNull(final String str)</td>
				<td class="long">当字符串为""时,返回null. <br> <b>示例 </b> <code>
						<br> <br>DataUtils.emptyToNull(null) 返回 null <br>DataUtils.emptyToNull(&quot;&quot;)
						返回 null <br>DataUtils.emptyToNull(&quot;abc&quot;) 返回
						&quot;abc&quot;
					</code><br> @param str 输入字符串<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String dbNullToEmpty(final String str)</td>
				<td class="long">当字符串为"null"或为null时,返回字符串"". <br> <b>示例
				</b> <code>
						<br> <br>DataUtils.dbNullToEmpty(null) 返回 &quot;&quot; <br>DataUtils.dbNullToEmpty(&quot;null&quot;)
						返回 &quot;&quot; <br>DataUtils.dbNullToEmpty(&quot;abc&quot;)
						返回 &quot;abc&quot;
					</code><br> @param str 输入字符串<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String nullToZero(final String str)</td>
				<td class="long">当字符串为null或""或全部为空格时,返回字符串"0",否则将字符串原封不动的返回. <br>
					<b>示例 </b> <code>
						<br> <br>DataUtils.nullToZero(null) 返回 &quot;0&quot; <br>DataUtils.nullToZero(&quot;&quot;)
						返回 &quot;0&quot; <br>DataUtils.nullToZero(&quot;123&quot;) 返回
						&quot;123&quot; <br>DataUtils.nullToZero(&quot;abc&quot;) 返回
						&quot;abc&quot; <br> 注意：从方法的本意出发，请用于数值型字符串
					</code><br> @param str 输入字符串<br> @return 返回字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getBooleanDescribe(final String str)</td>
				<td class="long">对表达布尔型含义的字符串转换为中文的"是"/"否". <br> <b>示例
				</b> <code>
						<br> <br>DataUtils.getBooleanDescribe(&quot;y&quot;) 返回
						&quot;是&quot; <br>DataUtils.getBooleanDescribe(&quot;yes&quot;)
						返回 &quot;是&quot; <br>DataUtils.getBooleanDescribe(&quot;Y&quot;)
						返回 &quot;是&quot; <br>DataUtils.getBooleanDescribe(&quot;true&quot;)
						返回 &quot;是&quot; <br>DataUtils.getBooleanDescribe(&quot;t&quot;)
						返回 &quot;是&quot; <br> <br>DataUtils.getBooleanDescribe(&quot;n&quot;)
						返回 &quot;否&quot; <br>DataUtils.getBooleanDescribe(&quot;No&quot;)
						返回 &quot;否&quot; <br>DataUtils.getBooleanDescribe(&quot;N&quot;)
						返回 &quot;否&quot; <br>DataUtils.getBooleanDescribe(&quot;false&quot;)
						返回 &quot;否&quot; <br>DataUtils.getBooleanDescribe(&quot;f&quot;)
						返回 &quot;否&quot;
					</code> <br> @param str 表达布尔型含义的字符串. <br>
					合法的输入包括"y","n","yes","no","true","false","t","f","是","否","1","0"
					,""这些字符串的各种大小写形式也属于合法的 <br> 除了上述合法的入参值之外，输入其它的字符串，将抛出异常 <br>
					@return 布尔变量对应的中文描述："是"/"否"/""
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					boolean getBoolean(final String str)</td>
				<td class="long">对表达布尔型含义的字符串转换为boolean型的true/false. <br>

					<b>示例 </b> <code>
						<br> <br>DataUtils.getBoolean(&quot;y&quot;) 返回 true <br>DataUtils.getBoolean(&quot;yes&quot;)
						返回 true <br>DataUtils.getBoolean(&quot;Y&quot;) 返回 true <br>DataUtils.getBoolean(&quot;true&quot;)
						返回 true <br>DataUtils.getBoolean(&quot;t&quot;) 返回 true <br>
						<br>DataUtils.getBoolean(&quot;n&quot;) 返回 false <br>DataUtils.getBoolean(&quot;No&quot;)
						返回 false <br>DataUtils.getBoolean(&quot;N&quot;) 返回 false <br>DataUtils.getBoolean(&quot;false&quot;)
						返回 false <br>DataUtils.getBoolean(&quot;f&quot;) 返回 false
					</code><br> @param str 表达布尔型含义的字符串. <br>
					合法的输入包括"y","n","yes","no","true","false","t","f","是","否","1","0"
					,""这些字符串的各种大小写形式也属于合法的 <br> 除了上述合法的入参值之外，输入其它的字符串，将抛出异常<br>
					@return boolean型的true/false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int compareByValue(final String str1, final String str2)</td>
				<td class="long">比较两个存放了数字的字符串的大小，如果不为数字将抛出异常. <br> <b>示例
				</b> <code>
						<br> <br>DataUtils.compareByValue(&quot;19&quot;,&quot;2&quot;)
						返回 1 <br>DataUtils.compareByValue(&quot;0021&quot;,&quot;21&quot;)
						返回 0 <br>DataUtils.compareByValue(&quot;3001&quot;,&quot;5493&quot;)
						返回 -1
					</code> <br> @param str1 第一个字符串 <br> @param str2 第二个字符串 <br>
					@return 返回比较的结果 str1>str2返回1，str1 <str2返回-1 ，str1=str2返回0</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double round(final double value, final int scale)</td>
				<td class="long">提供精确的小数位四舍五入处理. <br> <b>示例 </b> <code>
						<br> <br>DataUtils.round(0.574,2) 返回 0.57 <br>DataUtils.round(0.575,2)
						返回 0.58 <br>DataUtils.round(0.576,2) 返回 0.58
					</code><br> @param value 需要四舍五入的数字<br> @param scale 小数点后保留几位<br>
					@return 四舍五入后的结果
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObject(Object target, Object source)</td>
				<td class="long">拷贝简单对象，如果源对象的属性为null也默认拷贝.<br> @param
					target 传入的目标对象<br> @param source 传入的源对象<br> @deprecated
					由于易于混淆，建议使用copySimpleObjectToTargetFromSource(Object target, Object
					source)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObjectToTargetFromSource(Object target, Object
					source)</td>
				<td class="long">拷贝简单对象，如果源对象的属性为null也默认拷贝.<br> @param
					target 传入的目标对象<br> @param source 传入的源对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObject(Object target, final Object source, boolean
					isCopyNull)</td>
				<td class="long">拷贝简单对象.<br> @param target 传入的目标对象<br>
					@param source 传入的源对象<br> @param isCopyNull 是否拷贝Null值<br>
					@deprecated 由于易于混淆，建议使用copySimpleObjectToTargetFromSource(Object
					target, Object source,boolean isCopyNull)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObjectToTargetFromSource(Object target, final Object
					source, boolean isCopyNull)</td>
				<td class="long">拷贝简单对象.<br> @param target 传入的目标对象<br>
					@param source 传入的源对象<br> @param isCopyNull 是否拷贝Null值
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List generateListFromJdbcResult(List jdbcResultList, final Class
					clazz)</td>
				<td class="long">把通过JdbcTemplate查出的结果集封装到List中<br>
					只要字段名和DTO的属性名能对应上的就把值封装进去，对应不上的就不管了<br> @param jdbcResultList
					用JdbcTemplate查出的结果集<br> @param clazz DTO的Class对象<br>
					@return 把每行数据封装到一个DTO对象中，最后返回DTO的List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Integer getInteger(Object object)</td>
				<td class="long">把Object对象转换为Integer对象。<br> @param object<br>
					@return Integer对象或null（如果object是null）。
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Long getLong(Object object)</td>
				<td class="long">把Object对象转换为Long对象。<br> @param object<br>
					@return Long对象或null（如果object是null）。
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Double getDouble(Object object)</td>
				<td class="long">把Object对象转换为Double对象。<br> @param object<br>
					@return Double对象或null（如果object是null）。
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getString(Object object)</td>
				<td class="long">把Object对象转换为String对象。<br> @param object<br>
					@return String对象或null（如果object是null）。
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String join(Object... arguments)</td>
				<td class="long">把Object对象连接起来并转换为String对象。<br> @param
					object<br> @return String对象或空串（如果object是null）。
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getPlainNumber(Integer value)<br> public static String
					getPlainNumber(Long value)
				</td>
				<td class="long">格式化成###0格式</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getPlainNumber(Double value)</td>
				<td class="long">格式化成###0.00格式</td>
			</tr>

		</table>
	</div>
</body>
</HTML>