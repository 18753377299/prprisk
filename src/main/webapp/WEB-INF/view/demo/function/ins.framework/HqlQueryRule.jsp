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
				<td class="bgc_tt short" style="text-align: left">public String
					getHql()</td>
				<td class="long">得到拼好的HQL语句<br> @return 拼好的HQL语句<br>

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					Object[] getValues()</td>
				<td class="long">得到参数的值 <br> @return 参数的值
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, Integer value)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b);<br>
					@param String , Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, Integer value)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b);<br>
					@param String , Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, Long value)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b);<br>
					@param String , Long <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, String value)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b);<br>
					@param String , String <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, Double value)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b);<br>
					@param String , Double <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, Float value)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b);<br>
					@param String , Float <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addEqual(String name, Date value, Integer dateRange)</td>
				<td class="long">添加相等条件 <br> 示例:<br> HqlQueryRule hql
					= new HqlQueryRule();<br> hql = hql.addEqual(a, b ,c);<br>
					@param String , Date , Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addBetween(String name, Long begin, Long end)</td>
				<td class="long">添加区间条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a, b, c);<br> @param String , Long ,
					Long <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addBetween(String name, Integer begin, Integer end)</td>
				<td class="long">添加区间条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a, b, c);<br> @param String , Integer
					, Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addBetween(String name, Double begin, Double end)</td>
				<td class="long">添加区间条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a, b, c);<br> @param String , Double ,
					Double <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addBetween(String name, Float begin, Float end)</td>
				<td class="long">添加区间条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a, b, c);<br> @param String , Float ,
					Float <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterEqual(String name, Integer value)</td>
				<td class="long">添加大于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterEqual(a, b);<br> @param String ,
					Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterEqual(String name, Long value)</td>
				<td class="long">添加大于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterEqual(a, b);<br> @param String , Long <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterEqual(String name, Double value)</td>
				<td class="long">添加大于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterEqual(a, b);<br> @param String , Double
					<br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterEqual(String name, Float value)</td>
				<td class="long">添加大于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterEqual(a, b);<br> @param String , Float
					<br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterThen(String name, Integer value)</td>
				<td class="long">添加大于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterThen(a, b);<br> @param String , Integer
					<br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterThen(String name, Float value)</td>
				<td class="long">添加大于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterThen(a, b);<br> @param String , Float <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterThen(String name, Double value)</td>
				<td class="long">添加大于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterThen(a, b);<br> @param String , Double
					<br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterThen(String name, Float value)</td>
				<td class="long">添加大于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addGreaterThen(a, b);<br> @param String , Float <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessEqual(String name, Integer value)</td>
				<td class="long">添加小于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessEqual(a, b);<br> @param String , Integer <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessEqual(String name, Long value)</td>
				<td class="long">添加小于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessEqual(a, b);<br> @param String , Long <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessEqual(String name, Double value)</td>
				<td class="long">添加小于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessEqual(a, b);<br> @param String , Double <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessEqual(String name, Float value)</td>
				<td class="long">添加小于等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessEqual(a, b);<br> @param String , Float <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessThan(String name, Integer value)</td>
				<td class="long">添加小于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessThan(a, b);<br> @param String , Integer <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessThan(String name, Long value)</td>
				<td class="long">添加小于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessThan(a, b);<br> @param String , Long <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessThan(String name, Double value)</td>
				<td class="long">添加小于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessThan(a, b);<br> @param String , Double <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessThan(String name, Float value)</td>
				<td class="long">添加小于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addLessThan(a, b);<br> @param String , Float <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addNotEqual(String name, Integer value)</td>
				<td class="long">添加不等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addNotEqual(a, b);<br> @param String , Integer <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addNotEqual(String name, Long value)</td>
				<td class="long">添加不等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addNotEqual(a, b);<br> @param String , Long <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addNotEqual(String name, Double value)</td>
				<td class="long">添加不等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addNotEqual(a, b);<br> @param String , Double <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addNotEqual(String name, Float value)</td>
				<td class="long">添加不等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addNotEqual(a, b);<br> @param String , Float <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addNotEqual(String name, String value)</td>
				<td class="long">添加不等于条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addNotEqual(a, b);<br> @param String , String <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addBetween(String name, Date begin, Date end, Integer
					dateRange)</td>
				<td class="long">添加日期处理条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a,b,c,d);<br> @param String , Date ,
					Date , Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterEqual(String name, Date value, Integer
					dateRange)</td>
				<td class="long">添加日期处理条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a,b,c);<br> @param String , Date ,
					Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addGreaterThan(String name, Date value, Integer
					dateRange)</td>
				<td class="long">添加日期处理条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a,b,c);<br> @param String , Date ,
					Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessEqual(String name, Date value, Integer
					dateRange)</td>
				<td class="long">添加日期处理条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a,b,c);<br> @param String , Date ,
					Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLessThan(String name, Date value, Integer
					dateRange)</td>
				<td class="long">添加日期处理条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a,b,c);<br> @param String , Date ,
					Integer <br> @return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addLike(String name, String value)</td>
				<td class="long">添加like条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a,b);<br> @param String , String <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addHql(String hql)</td>
				<td class="long">直接添加hql <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addBetween(a);<br> @param String <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addIn(String name, String[] value)</td>
				<td class="long">添加in条件 <br> 示例:<br> HqlQueryRule
					hqlQueryRule = new HqlQueryRule();<br> hqlQueryRule =
					hqlQueryRule.addIn(a,b);<br> @param String , String[] <br>
					@return 一个对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					HqlQueryRule addValue(Object value)</td>
				<td class="long">添加问号对应的value<br> 示例:<br>
					HqlQueryRule hqlQueryRule = new HqlQueryRule();<br>
					hqlQueryRule = hqlQueryRule.addIn(a);<br> @param Object <br>
					@return 一个对象
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>