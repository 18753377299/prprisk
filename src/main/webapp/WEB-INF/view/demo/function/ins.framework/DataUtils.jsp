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
					void addSupportType(Object clazz)</td>
				<td class="long">���mergePOʱ֧�ֵ�����<br> @param clazz
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String zeroToEmpty(final int value)</td>
				<td class="long">��������ֵΪ0ʱ,�����ַ���"",��������ֵת��Ϊ�ַ�������. <br> <b>ʾ��
				</b> <br> <br>DataUtils.zeroToEmpty(0) ���� &quot;&quot; <br>DataUtils.zeroToEmpty(1)
					���� &quot;1&quot;<br> @param i ���������ֵ<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String zeroToEmpty(final double value)</td>
				<td class="long">����������ֵΪ0ʱ,�����ַ���"",���򽫸�����ֵת��Ϊ�ַ�������. <br> <b>ʾ��
				</b> <code>
						<br> <br>DataUtils.zeroToEmpty(0d) ���� &quot;&quot; <br>DataUtils.zeroToEmpty(1.2d)
						���� &quot;1.2&quot;
					</code><br> @param d ����ĸ�����ֵ<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String nullToEmpty(final String str)</td>
				<td class="long">���ַ���Ϊnullʱ,�����ַ���"". <br> <b>ʾ�� </b> <code>
						<br> <br>DataUtils.nullToEmpty(null) ���� &quot;&quot; <br>DataUtils.nullToEmpty(&quot;null&quot;)
						���� &quot;null&quot; <br>DataUtils.nullToEmpty(&quot;abc&quot;)
						���� &quot;abc&quot;
					</code><br> @param str �����ַ���<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String emptyToNull(final String str)</td>
				<td class="long">���ַ���Ϊ""ʱ,����null. <br> <b>ʾ�� </b> <code>
						<br> <br>DataUtils.emptyToNull(null) ���� null <br>DataUtils.emptyToNull(&quot;&quot;)
						���� null <br>DataUtils.emptyToNull(&quot;abc&quot;) ����
						&quot;abc&quot;
					</code><br> @param str �����ַ���<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String dbNullToEmpty(final String str)</td>
				<td class="long">���ַ���Ϊ"null"��Ϊnullʱ,�����ַ���"". <br> <b>ʾ��
				</b> <code>
						<br> <br>DataUtils.dbNullToEmpty(null) ���� &quot;&quot; <br>DataUtils.dbNullToEmpty(&quot;null&quot;)
						���� &quot;&quot; <br>DataUtils.dbNullToEmpty(&quot;abc&quot;)
						���� &quot;abc&quot;
					</code><br> @param str �����ַ���<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String nullToZero(final String str)</td>
				<td class="long">���ַ���Ϊnull��""��ȫ��Ϊ�ո�ʱ,�����ַ���"0",�����ַ���ԭ�ⲻ���ķ���. <br>
					<b>ʾ�� </b> <code>
						<br> <br>DataUtils.nullToZero(null) ���� &quot;0&quot; <br>DataUtils.nullToZero(&quot;&quot;)
						���� &quot;0&quot; <br>DataUtils.nullToZero(&quot;123&quot;) ����
						&quot;123&quot; <br>DataUtils.nullToZero(&quot;abc&quot;) ����
						&quot;abc&quot; <br> ע�⣺�ӷ����ı����������������ֵ���ַ���
					</code><br> @param str �����ַ���<br> @return �����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getBooleanDescribe(final String str)</td>
				<td class="long">�Ա�ﲼ���ͺ�����ַ���ת��Ϊ���ĵ�"��"/"��". <br> <b>ʾ��
				</b> <code>
						<br> <br>DataUtils.getBooleanDescribe(&quot;y&quot;) ����
						&quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;yes&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;Y&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;true&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;t&quot;)
						���� &quot;��&quot; <br> <br>DataUtils.getBooleanDescribe(&quot;n&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;No&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;N&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;false&quot;)
						���� &quot;��&quot; <br>DataUtils.getBooleanDescribe(&quot;f&quot;)
						���� &quot;��&quot;
					</code> <br> @param str ��ﲼ���ͺ�����ַ���. <br>
					�Ϸ����������"y","n","yes","no","true","false","t","f","��","��","1","0"
					,""��Щ�ַ����ĸ��ִ�Сд��ʽҲ���ںϷ��� <br> ���������Ϸ������ֵ֮�⣬�����������ַ��������׳��쳣 <br>
					@return ����������Ӧ������������"��"/"��"/""
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					boolean getBoolean(final String str)</td>
				<td class="long">�Ա�ﲼ���ͺ�����ַ���ת��Ϊboolean�͵�true/false. <br>

					<b>ʾ�� </b> <code>
						<br> <br>DataUtils.getBoolean(&quot;y&quot;) ���� true <br>DataUtils.getBoolean(&quot;yes&quot;)
						���� true <br>DataUtils.getBoolean(&quot;Y&quot;) ���� true <br>DataUtils.getBoolean(&quot;true&quot;)
						���� true <br>DataUtils.getBoolean(&quot;t&quot;) ���� true <br>
						<br>DataUtils.getBoolean(&quot;n&quot;) ���� false <br>DataUtils.getBoolean(&quot;No&quot;)
						���� false <br>DataUtils.getBoolean(&quot;N&quot;) ���� false <br>DataUtils.getBoolean(&quot;false&quot;)
						���� false <br>DataUtils.getBoolean(&quot;f&quot;) ���� false
					</code><br> @param str ��ﲼ���ͺ�����ַ���. <br>
					�Ϸ����������"y","n","yes","no","true","false","t","f","��","��","1","0"
					,""��Щ�ַ����ĸ��ִ�Сд��ʽҲ���ںϷ��� <br> ���������Ϸ������ֵ֮�⣬�����������ַ��������׳��쳣<br>
					@return boolean�͵�true/false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int compareByValue(final String str1, final String str2)</td>
				<td class="long">�Ƚ�������������ֵ��ַ����Ĵ�С�������Ϊ���ֽ��׳��쳣. <br> <b>ʾ��
				</b> <code>
						<br> <br>DataUtils.compareByValue(&quot;19&quot;,&quot;2&quot;)
						���� 1 <br>DataUtils.compareByValue(&quot;0021&quot;,&quot;21&quot;)
						���� 0 <br>DataUtils.compareByValue(&quot;3001&quot;,&quot;5493&quot;)
						���� -1
					</code> <br> @param str1 ��һ���ַ��� <br> @param str2 �ڶ����ַ��� <br>
					@return ���رȽϵĽ�� str1>str2����1��str1 <str2����-1 ��str1=str2����0</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double round(final double value, final int scale)</td>
				<td class="long">�ṩ��ȷ��С��λ�������봦��. <br> <b>ʾ�� </b> <code>
						<br> <br>DataUtils.round(0.574,2) ���� 0.57 <br>DataUtils.round(0.575,2)
						���� 0.58 <br>DataUtils.round(0.576,2) ���� 0.58
					</code><br> @param value ��Ҫ�������������<br> @param scale С���������λ<br>
					@return ���������Ľ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObject(Object target, Object source)</td>
				<td class="long">�����򵥶������Դ���������ΪnullҲĬ�Ͽ���.<br> @param
					target �����Ŀ�����<br> @param source �����Դ����<br> @deprecated
					�������ڻ���������ʹ��copySimpleObjectToTargetFromSource(Object target, Object
					source)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObjectToTargetFromSource(Object target, Object
					source)</td>
				<td class="long">�����򵥶������Դ���������ΪnullҲĬ�Ͽ���.<br> @param
					target �����Ŀ�����<br> @param source �����Դ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObject(Object target, final Object source, boolean
					isCopyNull)</td>
				<td class="long">�����򵥶���.<br> @param target �����Ŀ�����<br>
					@param source �����Դ����<br> @param isCopyNull �Ƿ񿽱�Nullֵ<br>
					@deprecated �������ڻ���������ʹ��copySimpleObjectToTargetFromSource(Object
					target, Object source,boolean isCopyNull)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void copySimpleObjectToTargetFromSource(Object target, final Object
					source, boolean isCopyNull)</td>
				<td class="long">�����򵥶���.<br> @param target �����Ŀ�����<br>
					@param source �����Դ����<br> @param isCopyNull �Ƿ񿽱�Nullֵ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					List generateListFromJdbcResult(List jdbcResultList, final Class
					clazz)</td>
				<td class="long">��ͨ��JdbcTemplate����Ľ������װ��List��<br>
					ֻҪ�ֶ�����DTO���������ܶ�Ӧ�ϵľͰ�ֵ��װ��ȥ����Ӧ���ϵľͲ�����<br> @param jdbcResultList
					��JdbcTemplate����Ľ����<br> @param clazz DTO��Class����<br>
					@return ��ÿ�����ݷ�װ��һ��DTO�����У���󷵻�DTO��List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Integer getInteger(Object object)</td>
				<td class="long">��Object����ת��ΪInteger����<br> @param object<br>
					@return Integer�����null�����object��null����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Long getLong(Object object)</td>
				<td class="long">��Object����ת��ΪLong����<br> @param object<br>
					@return Long�����null�����object��null����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Double getDouble(Object object)</td>
				<td class="long">��Object����ת��ΪDouble����<br> @param object<br>
					@return Double�����null�����object��null����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getString(Object object)</td>
				<td class="long">��Object����ת��ΪString����<br> @param object<br>
					@return String�����null�����object��null����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String join(Object... arguments)</td>
				<td class="long">��Object��������������ת��ΪString����<br> @param
					object<br> @return String�����մ������object��null����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getPlainNumber(Integer value)<br> public static String
					getPlainNumber(Long value)
				</td>
				<td class="long">��ʽ����###0��ʽ</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getPlainNumber(Double value)</td>
				<td class="long">��ʽ����###0.00��ʽ</td>
			</tr>

		</table>
	</div>
</body>
</HTML>