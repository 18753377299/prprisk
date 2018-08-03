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
				<td class="bgc_tt short" style="text-align: left">public T
					get(PK id)</td>
				<td class="long">根据主键获取对象. 例如：以下代码获取id=2的记录<br> User user
					= service.get(2);<br> @param id PK<br> @return 匹配的对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean exists(PK id)</td>
				<td class="long">根据主键判断对象是否存在. 例如：以下代码判断id=2的User记录是否存在<br>
					boolean user2Exist = service.exists(2);<br> @param id PK<br>
					@return 存在返回true,否则返回false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					deleteByPK(PK id)</td>
				<td class="long">根据主键删除记录. 例如：以下代码删除id=1的数据<br>
					service.removeByPK(1);<br> @param id 主键类
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public T
					findUnique(String propertyName, Object value)</td>
				<td class="long">根据属性名查询出内容等于属性值的唯一对象，没符合条件的记录返回null.<br>
					例如，如下语句查找id=5的唯一记录：<br> User user =
					service.findUnique(&quot;id&quot;, 5);<br> @param propertyName
					属性名<br> @param value 属性值<br> @return 符合条件的唯一对象 or null<br>
					@see EntityDaoHibernate#findUnique(Class,String,Object)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public T
					findUnique(QueryRule queryRule)</td>
				<td class="long">根据查询规则查询符合条件的唯一对象，没符合条件的记录返回null.<br> 例如：<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					User user = service.findUnique(queryRule);<br> @param
					queryRule 查询规则<br> @return 符合条件的唯一对象，没符合条件的记录返回null.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public T
					findUnique(Map<String , Object> properties) 
				</td>
				<td class="long">根据<属性名 ,属性值>的Map查询符合条件的唯一对象，没符合条件的记录返回null.<br>
					例如，如下语句查找sex=1,age=18的所有记录：<br>
					Map properties = new HashMap();<br>
					properties.put(&quot;sex&quot;, &quot;1&quot;);<br>
					properties.put(&quot;age&quot;, 18);<br>
					User user = service.findUnique(properties);<br>
					@param properties<br>
					属性的Map，key为属性名，value为属性值<br>
					@return 符合条件的唯一对象，没符合条件的记录返回null. </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List<T>
					find(QueryRule queryRule) </td>
				<td class="long">查询函数，使用查询规则.<br> 例如以下代码查询条件为匹配的数据<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> list =
					userService.find(queryRule);<br> @param queryRule 查询规则<br>
					@return 符合条件的记录
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					find(QueryRule queryRule, final int pageNo, final int pageSize)</td>
				<td class="long">分页查询函数，使用查询规则.<br> 例如以下代码查询条件为匹配的数据<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> page =
					userService.find(queryRule, pageNo, pageSize);<br> @param
					queryRule 查询规则<br> @param pageNo 页号,从1开始.<br> @param
					pageSize 每页的记录条数.<br> @return 符合条件的记录
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					update(T obj)</td>
				<td class="long">更新对象.<br> 例如：以下代码将对象更新到数据库中<br> User
					entity = service.get(1);<br> entity.setName(&quot;zzz&quot;);<br>
					service.update(entity);<br> @param obj 待更新对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					mergeComplexObjectToTargetFromSource(Object target, Object source,
					boolean isCopyNull)</td>
				<td class="long">将复杂DTO对象合并到PO对象中<br> 例子：<br>
					service.mergeComplexObjectToTargetFromSource(prpTmainPO,prpTmainDto,
					false);<br> @param target 传入的目标对象（PO对象）<br> @param source
					传入的源对象（DTO对象）<br> @param isCopyNull<br>
					是否拷贝null(当source中的值为null时，如果isCopyNull=ture,则用null,否则继续使用target中的值）<br>
					@throws Exception
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>