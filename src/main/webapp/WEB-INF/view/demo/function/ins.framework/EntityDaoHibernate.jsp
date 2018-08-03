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
				<td class="bgc_tt short" style="text-align: left">public <T>
					T get(Class<T> entityClass, Serializable id) </td>
				<td class="long">根据ID获取对象. 实际调用Hibernate的session.get()方法返回实体.
					如果对象不存在，返回null.<br> 例如以下代码获取主键为2的user记录<br> User user =
					service.get(User.class, 2);<br> @param entityClass 实体类<br>
					@param id 序列号对象<br> @return 匹配的对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					List<T> getAll(Class<T> entityClass) </td>
				<td class="long">获取全部对象. <br> 例如以下代码获取user的全部记录<br>
					&lt;code&gt;<br> List&lt;User&gt; users =
					service.getAll(User.class);<br> &lt;/code&gt;<br> @param
					entityClass 实体类<br> @return 全部对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					save(Object obj)</td>
				<td class="long">保存对象.<br> 例如：以下代码将对象保存到数据库中<br> User
					entity = new User();<br> entity.setName(&quot;zzz&quot;);<br>
					service.save(entity);<br> @param obj 待保存对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					update(Object obj)</td>
				<td class="long">更新对象.<br> 例如：以下代码将对象更新到数据库中<br> User
					entity = service.get(1);<br> entity.setName(&quot;zzz&quot;);<br>
					service.update(entity);<br> @param obj 待更新对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					saveAll(List list)</td>
				<td class="long">批量保存对象.<br> 例如：以下代码将对象保存到数据库中<br>
					List&lt;Role&gt; list = new ArrayList&lt;Role&gt;();<br> for
					(int i = 1; i &lt; 8; i++) {<br> Role role = new Role();<br>
					role.setId(i);<br> role.setRolename(&quot;管理员&quot; + i);<br>
					role.setPrivilegesFlag(&quot;1,2,3&quot;);<br> list.add(role);<br>
					}<br> service.saveAll(list);<br> @param list 待保存的对象List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					delete(Object obj)</td>
				<td class="long">删除对象.<br> 例如：以下删除entity对应的记录<br>
					service.remove(entity);<br> @param obj 待删除的实体对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					void deleteAll(List entityList) </td>
				<td class="long">删除对象列表.<br> 例如：以下删除entity对应的记录<br>
					service.remove(entityList);<br> @param entityList 待删除的实体对象列表
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					void deleteByPK(Class<T> entityClass, Serializable id) </td>
				<td class="long">根据ID删除对象.如果有记录则删之，没有记录也不报异常<br>
					例如：以下删除主键为1的记录<br> service.removeByPK(User.class, 1);<br>
					@param entityClass 实体类<br> @param id 序列化对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					flush()</td>
				<td class="long">输出缓冲区里的数据 <br> 例如：<br>
					service.flush();
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					evict(Object obj)</td>
				<td class="long">从一级缓存中去掉对象 <br> 例如： <br>
					service.evict(user); <br> @param obj 待清除的实体类
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clear()</td>
				<td class="long">清除缓冲区里的数据 <br> 例如： <br>
					service.clear();
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					findByHql(final String hql, final Object... values)</td>
				<td class="long">根据hql查询,查询数据.<br> <b>注意：如有可能，尽量使用
						query(Class, List)。那样可以使用预处理语句处理，可以提高效率。</b> <br> 例1：以下代码查询user数据<br>
					List&lt;User&gt; list = service.findByHql(&quot;from User where
					name like ?&quot;, &quot;%ca%&quot;);<br> // 显示数据<br> for
					(User user : list) {<br>
					System.out.println(ToStringBuilder.reflectionToString(user));<br>
					}<br> 例2：以下代码查询一个区间中的Role数据，这里传入了1和15两个参数<br>

					List&lt;Role&gt; result = service.findByHql(<br> &quot;from
					Role where id between ? and ? order by id&quot;, 1, 15);<br>
					@param hql HQL语句<br> @param values 可变参数<br> @see
					#find(Class, QueryRule)<br> @return 查询出的对象的List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					findTopByHql(final String hql, final int top, final Object...
					values)</td>
				<td class="long">查询前top条数据,缓解数据库压力<br> @param hql<br>
					@param top<br> @param values<br> @return List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					findByHql(final String hql, Integer pageNo, Integer pageSize,
					Integer count, final Object... values)</td>
				<td class="long">分页查询函数，使用hql，查询时限制条数，目前默认100条（参数<=0时）.<br>
					<b>注意：如有可能，尽量使用 pagedQuery(Class, List, int,
						int)。那样可以使用预处理语句处理，可以提高效率。</b> <br> 例如以下代码查询条件为 name like "%ca%"
					的数据，每页10条记录，取第一页<br> Page page = service.findByHql(&quot;from
					User Where name like ?&quot;, 1, 10, &quot;%ca%&quot;);<br>
					@param hql<br> HQL语句.<br> @param pageNo<br> 页号,从1开始.<br>
					@param pageSize<br> 每页的记录条数.<br> @param count <br>
					查询最大限制条数<br> @param values<br> 参数值.<br> @see
					#find(Class, QueryRule, int, int)<br> @return Page 数据页
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					findByHqlNoLimit(final String hql, int pageNo, int pageSize, final
					Object... values)</td>
				<td class="long">分页查询函数，使用hql,查询时不限制条数.<br> <b>注意：如有可能，尽量使用
						pagedQuery(Class, List, int, int)。那样可以使用预处理语句处理，可以提高效率。</b> <br>
					例如以下代码查询条件为 name like "%ca%" 的数据，每页10条记录，取第一页<br> Page page =
					service.findByHqlNoLimit(&quot;from User Where name like ?&quot;,
					1, 10, &quot;%ca%&quot;);<br> @param hql HQL语句.<br>
					@param pageNo 页号,从1开始.<br> @param pageSize 每页的记录条数.<br>
					@param values 参数值.<br> @see #find(Class, QueryRule, int, int)<br>
					@return Page 数据页
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T findUnique(Class<T> entityClass, String propertyName, Object
					value)</td>
				<td class="long">根据属性名查询出内容等于属性值的唯一对象，没符合条件的记录返回null.<br>
					例如，如下语句查找id=5的唯一记录：<br> User user =
					service.findUnique(User.class, &quot;id&quot;, 5);<br> @param
					entityClass 实体类<br> @param propertyName 属性名<br> @param
					value 属性值<br> @return 符合条件的唯一对象 or null if not found.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					boolean exists(Class<T> entityClass, Serializable id) </td>
				<td class="long">根据主键判断对象是否存在. 例如：以下代码判断id=2的User记录是否存在<br>
					boolean user2Exist = service.exists(User.class, 2);<br> @param
					entityClass 实体类<br> @param id 序列化对象<br> @return
					存在返回true，否则返回false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getCount(String hql, Object... values)</td>
				<td class="long">查询满足条件的记录数，使用hql.<br> 例如：查询User里满足条件 name
					like "%ca%" 的记录数<br> long count = service.getCount(&quot;from
					User where name like ?&quot;, &quot;%ca%&quot;);<br> @param
					hql HQL语句<br> @param values 参数List<br> @return 满足条件的记录数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					List find(final Class<T> entityClass, final QueryRule
					queryRule) </td>
				<td class="long">查询函数，使用查询规则.<br> 例如以下代码查询条件为匹配的数据<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> list =
					userService.find(User.class, queryRule);<br> @param queryRule
					查询规则<br> @param entityClass 实体类<br> @return 查询出的结果List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					Page find(final Class<T> entityClass, final QueryRule
					queryRule, int pageNo, int pageSize) </td>
				<td class="long">分页查询函数，使用查询规则.<br> 例如以下代码查询条件为匹配的数据<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> page =
					userService.find(User.class, queryRule, pageNo, pageSize);<br>
					@param entityClass 实体类<br> @param queryRule 查询规则<br>
					@param pageNo 页号,从1开始.<br> @param pageSize 每页的记录条数.<br>
					@return 查询出的结果Page
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T findUnique(Class<T> entityClass, Map<String , Object>
					properties) </td>
				<td class="long">根据<属性名 ,属性值>的Map查询符合条件的唯一对象，没符合条件的记录返回null.<br>
					例如，如下语句查找sex=1,age=18的所有记录：<br>
					Map properties = new HashMap();<br>
					properties.put(&quot;sex&quot;, &quot;1&quot;);<br>
					properties.put(&quot;age&quot;, 18);<br>
					User user = service.findUnique(User.class, properties);<br>
					@param entityClass 实体类<br>
					@param properties<br>
					属性的Map，key为属性名，value为属性值<br>
					@return 符合条件的唯一对象，没符合条件的记录返回null. </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T findUnique(Class<T> entityClass, QueryRule queryRule) </td>
				<td class="long">根据查询规则查询符合条件的唯一对象，没符合条件的记录返回null.<br> 例如：<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					User user = service.findUnique(User.class, queryRule);<br>
					@param entityClass 实体类<br> @param queryRule 查询规则<br>
					@return 符合条件的唯一对象，没符合条件的记录返回null.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					Page pagination(List<T> objList, int pageNo, int pageSize) </td>
				<td class="long">根据当前list进行相应的分页返回<br> @param <T> <br>
					@param objList<br>
					@param pageNo<br>
					@param pageSize<br>
					@return Page </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					mergeList(List pojoList, List poList, String idName)</td>
				<td class="long">合并PO List对象.(如果POJO中的值为null,则继续使用PO中的值）<br>
					@param pojoList 传入的POJO的List<br> @param poList 传入的PO的List<br>
					@param idName ID字段名称
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getCount(String hql, Object... values)</td>
				<td class="long">查询满足条件的记录数，使用hql.<br> 例如：查询User里满足条件 name
					like "%ca%" 的记录数<br> long count = service.getCount(&quot;from
					User where name like ?&quot;, &quot;%ca%&quot;);<br> @param
					hql HQL语句<br> @param values 参数List<br> @return 满足条件的记录数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					mergeList(List pojoList, List poList, String idName, boolean
					isCopyNull)</td>
				<td class="long">合并PO List对象.<br> @param pojoList
					传入的POJO的List<br> @param poList 传入的PO的List<br> @param
					idName ID字段名称<br> @param isCopyNull
					是否拷贝null(当POJO中的值为null时，如果isCopyNull=ture,则用null,否则继续使用PO中的值）
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Long
					getSequence(final String sequenceName)</td>
				<td class="long">获取序列号<br> @param sequenceName<br>
					@return 序列号值
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					findUnionBySql(final String sql, final Object... values)</td>
				<td class="long">直接SQL查询Union语句<br> @param sql
					SQL语句(参数值用问号替代),一定要包含union<br> @param values 参数，支持变参<br>
					@return 查询返回结果
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					findUnionByHqls(final List<String> hqls, final List<List
						<Object>> valuess, int pageNo, int pageSize)    </td>
				<td class="long">
						连接多个hql查询结果分页<br>
						@param hqls
						           HQL查询语句的List对象<br>
						@param valuess
						           查询参数<br>
						@param pageNo
						           页码<br>
						@param pageSize
						           一页记录数<br>
						@return 查询返回结果                  
				</td>
			</tr><tr>
				<td class="bgc_tt short" style="text-align: left"> public Page findTopUnionByHqls(final List<String> hqls, final int top,
																				final List<List<Object>> valuess)    </td>
				<td class="long">
						连接多个hql查询Top结果<br>
						@param hqls
						           HQL查询语句的List对象<br>
						@param top
						           top大小<br>
						@param valuess
						           查询参数<br>
						@return Top结果                    
				</td>
			</tr><tr>
				<td class="bgc_tt short" style="text-align: left"> public List findBySql(final String sql, final Object... values)  </td>
				<td class="long">
						根据sql查询,查询数据.<br>
						例1：以下代码查询user数据<br>
						List&lt;User&gt; list = service.findByHql(<br>
								&quot;select * from Demo_Type o where o.name = ? for update&quot;, &quot;Age&quot;);<br>
						// 显示数据<br>
						for (User user : list) {<br>
							System.out.println(ToStringBuilder.reflectionToString(user));<br>
						}<br>
						@param sql
						           SQL语句(注意：查询的是表而不是对象)<br>
						@param values
						           可变参数<br>
						@return 查询出的对象的List                                                                        
				</td>
			</tr><tr>
				<td class="bgc_tt short" style="text-align: left">public String getOrderByString(Map<String, String[]> paramMap)   </td>
				<td class="long">
						获取排序字符集
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>