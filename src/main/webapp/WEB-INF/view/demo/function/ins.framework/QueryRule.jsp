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
					QueryRule getInstance()</td>
				<td class="long">得到QueryRule的一个实例 <br> <b>示例: </b><br>
					QueryRule queryRule = QueryRule.getInstance(); <br> @return
					QueryRule的一个实例
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addAscOrder(String propertyName)</td>
				<td class="long">添加ASC顺序排列的查询规则.<br> 示例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> @param
					propertyName 属性名<br> @return QueryRule 查询规则本身

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addDescOrder(String propertyName)</td>
				<td class="long">添加DESC逆序排列的查询规则.<br> 示例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addDescOrder(&quot;username&quot;);<br> @param
					propertyName 属性列表<br> @return QueryRule 查询规则本身

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsNull(String propertyName)</td>
				<td class="long">添加IsNull类型的查询规则.<br> 示例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsNull(&quot;username&quot;);<br> @param
					propertyName 属性列表<br> @return QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsNotNull(String propertyName)</td>
				<td class="long">添加IsNotNull类型的查询规则.<br> 示例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsNotNull(&quot;username&quot;);<br> @param
					propertyName 属性列表<br> @return QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsEmpty(String propertyName)</td>
				<td class="long">添加IsEmpty类型的查询规则.<br> 示例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsEmpty(&quot;username&quot;);<br> @param
					propertyName 属性列表<br> @return QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIsNotEmpty(String propertyName)</td>
				<td class="long">添加IsNotEmpty类型的查询规则.<br> 示例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIsNotEmpty(&quot;username&quot;);<br> @param
					propertyName 属性列表<br> @return QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addLike(String propertyName, Object value)</td>
				<td class="long">添加LIKE(匹配)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker())<br>
					@param propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addEqual(String propertyName, Object value)</td>
				<td class="long">添加Equal（等于)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addEqual(&quot;username&quot;, user.getUsername());<br>
					@param propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addBetween(String propertyName, Object... values)</td>
				<td class="long">添加BETWEEN类型的查询规则.如果任一规则值为空或为null时将忽略此条规则<br>
					例：<br> QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					@param propertyName 属性名<br> @param values 规则值(变参)<br>
					@return QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIn(String propertyName, List<Object> values)

					
				</td>
				<td class="long">添加IN类型的查询规则.如果规则值的List中不含有数据时将忽略此条规则<br>
					例：<br> QueryRule queryRule = QueryRule.getInstance();<br>
					List&lt;Integer&gt; idList = new ArrayList&lt;Integer&gt;();<br>
					idList.add(1);<br> idList.add(3);<br> idList.add(5);<br>
					queryRule.addIn(&quot;id&quot;, idList);<br> @param
					propertyName 属性名<br> @param values 规则值的List<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addIn(String propertyName, Object... values)</td>
				<td class="long">添加IN类型的查询规则，如果规则值不含有数据时将忽略此条规则<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addIn(&quot;id&quot;, 1, 3, 9);<br>
					queryRule.addIn(&quot;id&quot;, 1, 3, 5, 7, 9);<br> @param
					propertyName 属性名<br> @param values 规则值,数量可变<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addNotEqual(String propertyName, Object value)</td>
				<td class="long">添加NotEqual（不等于)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addNotEqual(&quot;username&quot;, user.getUsername());<br>
					@param propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addGreaterThan(String propertyName, Object value)</td>
				<td class="long">添加GreaterThan（大于)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addGreaterThan(&quot;id&quot;, 3);<br> @param
					propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addGreaterEqual(String propertyName, Object value)</td>
				<td class="long">添加GreaterEqual（大于等于)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addGreaterEqual(&quot;id&quot;, 3);<br> @param
					propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addLessThan(String propertyName, Object value)</td>
				<td class="long">添加LessThan（小于)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addLessThan(&quot;id&quot;, 10);<br> @param
					propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addLessEqual(String propertyName, Object value)</td>
				<td class="long">添加LessEqual（小于等于)类型的查询规则.<br> 例：<br>
					QueryRule queryRule = QueryRule.getInstance();<br>
					queryRule.addLessEqual(&quot;id&quot;, 10);<br> @param
					propertyName 属性名<br> @param value 规则值<br> @return
					QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addSql(String sql)</td>
				<td class="long">直接执行Sql限定查询条件.<br> 例：<br> QueryRule
					queryRule = QueryRule.getInstance();<br>
					queryRule.addSql(&quot;username like '%hello'&quot;);<br>
					@param sql sql查选限定条件<br> @return QueryRule 查询规则本身
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					QueryRule addSubQueryRule(String propertyName)</td>
				<td class="long">添加子查询规则.<br> 例：<br> QueryRule
					queryRule = QueryRule.getInstance();<br> QueryRule
					addressQueryRule =
					queryRule.addSubQueryRule(&quot;addresses&quot;);<br> @param
					propertyName 绑定的属性名称<br> @return QueryRule 子查询规则
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List<Rule>
					getRuleList() </td>
				<td class="long">得到所有查询规则明细<br> 例：<br> QueryRule
					queryRule = QueryRule.getInstance();<br> List list =
					queryRule.getRuleList();<br> @return list 所有查询规则明细
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List<QueryRule>
					getQueryRuleList() </td>
				<td class="long">得到所有查询规则<br> 例：<br> QueryRule
					queryRule = QueryRule.getInstance();<br> List list =
					queryRule.getQueryRuleList();<br> @return list 所有查询规则
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					getPropertyName()</td>
				<td class="long">得到属性名称<br> 例：<br> QueryRule
					queryRule = QueryRule.getInstance();<br> String string =
					queryRule.getPropertyName();<br> @return String 属性名称
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>