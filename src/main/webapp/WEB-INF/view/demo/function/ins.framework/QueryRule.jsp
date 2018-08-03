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
					QueryRule getInstance()</td>
				<td class="long">�õ�QueryRule��һ��ʵ�� <br> <b>ʾ��: </b><br>
					QueryRule queryRule = QueryRule.getInstance(); <br> @return
					QueryRule��һ��ʵ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addAscOrder(String propertyName)</td>
				<td class="long">���ASC˳�����еĲ�ѯ����.<br> ʾ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> @param
					propertyName ������<br> @return QueryRule ��ѯ������

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addDescOrder(String propertyName)</td>
				<td class="long">���DESC�������еĲ�ѯ����.<br> ʾ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addDescOrder(&quot;username&quot;);<br> @param
					propertyName �����б�<br> @return QueryRule ��ѯ������

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsNull(String propertyName)</td>
				<td class="long">���IsNull���͵Ĳ�ѯ����.<br> ʾ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsNull(&quot;username&quot;);<br> @param
					propertyName �����б�<br> @return QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsNotNull(String propertyName)</td>
				<td class="long">���IsNotNull���͵Ĳ�ѯ����.<br> ʾ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsNotNull(&quot;username&quot;);<br> @param
					propertyName �����б�<br> @return QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsEmpty(String propertyName)</td>
				<td class="long">���IsEmpty���͵Ĳ�ѯ����.<br> ʾ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsEmpty(&quot;username&quot;);<br> @param
					propertyName �����б�<br> @return QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsNotEmpty(String propertyName)</td>
				<td class="long">���IsNotEmpty���͵Ĳ�ѯ����.<br> ʾ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsNotEmpty(&quot;username&quot;);<br> @param
					propertyName �����б�<br> @return QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addLike(String propertyName, Object value)</td>
				<td class="long">���LIKE(ƥ��)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker())<br>
					@param propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addEqual(String propertyName, Object value)</td>
				<td class="long">���Equal������)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addEqual(&quot;username&quot;, user.getUsername());<br>
					@param propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addBetween(String propertyName, Object... values)</td>
				<td class="long">���BETWEEN���͵Ĳ�ѯ����.�����һ����ֵΪ�ջ�Ϊnullʱ�����Դ�������<br>
					����<br> QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					@param propertyName ������<br> @param values ����ֵ(���)<br>
					@return QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIn(String propertyName, List<Object> values)

					
				</td>
				<td class="long">���IN���͵Ĳ�ѯ����.�������ֵ��List�в���������ʱ�����Դ�������<br>
					����<br> QueryRule queryRule = QueryRule.getInstance();<br>
					List&lt;Integer&gt; idList = new ArrayList&lt;Integer&gt;();<br>
					idList.add(1);<br> idList.add(3);<br> idList.add(5);<br>
					queryRule.addIn(&quot;id&quot;, idList);<br> @param
					propertyName ������<br> @param values ����ֵ��List<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIn(String propertyName, Object... values)</td>
				<td class="long">���IN���͵Ĳ�ѯ�����������ֵ����������ʱ�����Դ�������<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIn(&quot;id&quot;, 1, 3, 9);<br>
					queryRule.addIn(&quot;id&quot;, 1, 3, 5, 7, 9);<br> @param
					propertyName ������<br> @param values ����ֵ,�����ɱ�<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addNotEqual(String propertyName, Object value)</td>
				<td class="long">���NotEqual��������)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addNotEqual(&quot;username&quot;, user.getUsername());<br>
					@param propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addGreaterThan(String propertyName, Object value)</td>
				<td class="long">���GreaterThan������)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addGreaterThan(&quot;id&quot;, 3);<br> @param
					propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addGreaterEqual(String propertyName, Object value)</td>
				<td class="long">���GreaterEqual�����ڵ���)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addGreaterEqual(&quot;id&quot;, 3);<br> @param
					propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addLessThan(String propertyName, Object value)</td>
				<td class="long">���LessThan��С��)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addLessThan(&quot;id&quot;, 10);<br> @param
					propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addLessEqual(String propertyName, Object value)</td>
				<td class="long">���LessEqual��С�ڵ���)���͵Ĳ�ѯ����.<br> ����<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addLessEqual(&quot;id&quot;, 10);<br> @param
					propertyName ������<br> @param value ����ֵ<br> @return
					QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addSql(String sql)</td>
				<td class="long">ֱ��ִ��Sql�޶���ѯ����.<br> ����<br> QueryRule
					queryRule = QueryRule.getInstance();<br>
					queryRule.addSql(&quot;username like '%hello'&quot;);<br>
					@param sql sql��ѡ�޶�����<br> @return QueryRule ��ѯ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addSubQueryRule(String propertyName)</td>
				<td class="long">����Ӳ�ѯ����.<br> ����<br> QueryRule
					queryRule = QueryRule.getInstance();<br> QueryRule
					addressQueryRule =
					queryRule.addSubQueryRule(&quot;addresses&quot;);<br> @param
					propertyName �󶨵���������<br> @return QueryRule �Ӳ�ѯ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List<Rule>
					getRuleList() </td>
				<td class="long">�õ����в�ѯ������ϸ<br> ����<br> QueryRule
					queryRule = QueryRule.getInstance();<br> List list =
					queryRule.getRuleList();<br> @return list ���в�ѯ������ϸ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List<QueryRule>
					getQueryRuleList() </td>
				<td class="long">�õ����в�ѯ����<br> ����<br> QueryRule
					queryRule = QueryRule.getInstance();<br> List list =
					queryRule.getQueryRuleList();<br> @return list ���в�ѯ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					getPropertyName()</td>
				<td class="long">�õ���������<br> ����<br> QueryRule
					queryRule = QueryRule.getInstance();<br> String string =
					queryRule.getPropertyName();<br> @return String ��������
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>