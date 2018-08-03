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
				<td class="bgc_tt short" style="text-align: left">public <T>
					T get(Class<T> entityClass, Serializable id) </td>
				<td class="long">����ID��ȡ����. ʵ�ʵ���Hibernate��session.get()��������ʵ��.
					������󲻴��ڣ�����null.<br> �������´����ȡ����Ϊ2��user��¼<br> User user =
					service.get(User.class, 2);<br> @param entityClass ʵ����<br>
					@param id ���кŶ���<br> @return ƥ��Ķ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					List<T> getAll(Class<T> entityClass) </td>
				<td class="long">��ȡȫ������. <br> �������´����ȡuser��ȫ����¼<br>
					&lt;code&gt;<br> List&lt;User&gt; users =
					service.getAll(User.class);<br> &lt;/code&gt;<br> @param
					entityClass ʵ����<br> @return ȫ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					save(Object obj)</td>
				<td class="long">�������.<br> ���磺���´��뽫���󱣴浽���ݿ���<br> User
					entity = new User();<br> entity.setName(&quot;zzz&quot;);<br>
					service.save(entity);<br> @param obj ���������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					update(Object obj)</td>
				<td class="long">���¶���.<br> ���磺���´��뽫������µ����ݿ���<br> User
					entity = service.get(1);<br> entity.setName(&quot;zzz&quot;);<br>
					service.update(entity);<br> @param obj �����¶���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					saveAll(List list)</td>
				<td class="long">�����������.<br> ���磺���´��뽫���󱣴浽���ݿ���<br>
					List&lt;Role&gt; list = new ArrayList&lt;Role&gt;();<br> for
					(int i = 1; i &lt; 8; i++) {<br> Role role = new Role();<br>
					role.setId(i);<br> role.setRolename(&quot;����Ա&quot; + i);<br>
					role.setPrivilegesFlag(&quot;1,2,3&quot;);<br> list.add(role);<br>
					}<br> service.saveAll(list);<br> @param list ������Ķ���List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					delete(Object obj)</td>
				<td class="long">ɾ������.<br> ���磺����ɾ��entity��Ӧ�ļ�¼<br>
					service.remove(entity);<br> @param obj ��ɾ����ʵ�����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					void deleteAll(List entityList) </td>
				<td class="long">ɾ�������б�.<br> ���磺����ɾ��entity��Ӧ�ļ�¼<br>
					service.remove(entityList);<br> @param entityList ��ɾ����ʵ������б�
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					void deleteByPK(Class<T> entityClass, Serializable id) </td>
				<td class="long">����IDɾ������.����м�¼��ɾ֮��û�м�¼Ҳ�����쳣<br>
					���磺����ɾ������Ϊ1�ļ�¼<br> service.removeByPK(User.class, 1);<br>
					@param entityClass ʵ����<br> @param id ���л�����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					flush()</td>
				<td class="long">���������������� <br> ���磺<br>
					service.flush();
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					evict(Object obj)</td>
				<td class="long">��һ��������ȥ������ <br> ���磺 <br>
					service.evict(user); <br> @param obj �������ʵ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clear()</td>
				<td class="long">���������������� <br> ���磺 <br>
					service.clear();
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					findByHql(final String hql, final Object... values)</td>
				<td class="long">����hql��ѯ,��ѯ����.<br> <b>ע�⣺���п��ܣ�����ʹ��
						query(Class, List)����������ʹ��Ԥ������䴦���������Ч�ʡ�</b> <br> ��1�����´����ѯuser����<br>
					List&lt;User&gt; list = service.findByHql(&quot;from User where
					name like ?&quot;, &quot;%ca%&quot;);<br> // ��ʾ����<br> for
					(User user : list) {<br>
					System.out.println(ToStringBuilder.reflectionToString(user));<br>
					}<br> ��2�����´����ѯһ�������е�Role���ݣ����ﴫ����1��15��������<br>

					List&lt;Role&gt; result = service.findByHql(<br> &quot;from
					Role where id between ? and ? order by id&quot;, 1, 15);<br>
					@param hql HQL���<br> @param values �ɱ����<br> @see
					#find(Class, QueryRule)<br> @return ��ѯ���Ķ����List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					findTopByHql(final String hql, final int top, final Object...
					values)</td>
				<td class="long">��ѯǰtop������,�������ݿ�ѹ��<br> @param hql<br>
					@param top<br> @param values<br> @return List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					findByHql(final String hql, Integer pageNo, Integer pageSize,
					Integer count, final Object... values)</td>
				<td class="long">��ҳ��ѯ������ʹ��hql����ѯʱ����������ĿǰĬ��100��������<=0ʱ��.<br>
					<b>ע�⣺���п��ܣ�����ʹ�� pagedQuery(Class, List, int,
						int)����������ʹ��Ԥ������䴦���������Ч�ʡ�</b> <br> �������´����ѯ����Ϊ name like "%ca%"
					�����ݣ�ÿҳ10����¼��ȡ��һҳ<br> Page page = service.findByHql(&quot;from
					User Where name like ?&quot;, 1, 10, &quot;%ca%&quot;);<br>
					@param hql<br> HQL���.<br> @param pageNo<br> ҳ��,��1��ʼ.<br>
					@param pageSize<br> ÿҳ�ļ�¼����.<br> @param count <br>
					��ѯ�����������<br> @param values<br> ����ֵ.<br> @see
					#find(Class, QueryRule, int, int)<br> @return Page ����ҳ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					findByHqlNoLimit(final String hql, int pageNo, int pageSize, final
					Object... values)</td>
				<td class="long">��ҳ��ѯ������ʹ��hql,��ѯʱ����������.<br> <b>ע�⣺���п��ܣ�����ʹ��
						pagedQuery(Class, List, int, int)����������ʹ��Ԥ������䴦���������Ч�ʡ�</b> <br>
					�������´����ѯ����Ϊ name like "%ca%" �����ݣ�ÿҳ10����¼��ȡ��һҳ<br> Page page =
					service.findByHqlNoLimit(&quot;from User Where name like ?&quot;,
					1, 10, &quot;%ca%&quot;);<br> @param hql HQL���.<br>
					@param pageNo ҳ��,��1��ʼ.<br> @param pageSize ÿҳ�ļ�¼����.<br>
					@param values ����ֵ.<br> @see #find(Class, QueryRule, int, int)<br>
					@return Page ����ҳ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T findUnique(Class<T> entityClass, String propertyName, Object
					value)</td>
				<td class="long">������������ѯ�����ݵ�������ֵ��Ψһ����û���������ļ�¼����null.<br>
					���磬����������id=5��Ψһ��¼��<br> User user =
					service.findUnique(User.class, &quot;id&quot;, 5);<br> @param
					entityClass ʵ����<br> @param propertyName ������<br> @param
					value ����ֵ<br> @return ����������Ψһ���� or null if not found.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					boolean exists(Class<T> entityClass, Serializable id) </td>
				<td class="long">���������ж϶����Ƿ����. ���磺���´����ж�id=2��User��¼�Ƿ����<br>
					boolean user2Exist = service.exists(User.class, 2);<br> @param
					entityClass ʵ����<br> @param id ���л�����<br> @return
					���ڷ���true�����򷵻�false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getCount(String hql, Object... values)</td>
				<td class="long">��ѯ���������ļ�¼����ʹ��hql.<br> ���磺��ѯUser���������� name
					like "%ca%" �ļ�¼��<br> long count = service.getCount(&quot;from
					User where name like ?&quot;, &quot;%ca%&quot;);<br> @param
					hql HQL���<br> @param values ����List<br> @return ���������ļ�¼��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					List find(final Class<T> entityClass, final QueryRule
					queryRule) </td>
				<td class="long">��ѯ������ʹ�ò�ѯ����.<br> �������´����ѯ����Ϊƥ�������<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> list =
					userService.find(User.class, queryRule);<br> @param queryRule
					��ѯ����<br> @param entityClass ʵ����<br> @return ��ѯ���Ľ��List
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					Page find(final Class<T> entityClass, final QueryRule
					queryRule, int pageNo, int pageSize) </td>
				<td class="long">��ҳ��ѯ������ʹ�ò�ѯ����.<br> �������´����ѯ����Ϊƥ�������<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> page =
					userService.find(User.class, queryRule, pageNo, pageSize);<br>
					@param entityClass ʵ����<br> @param queryRule ��ѯ����<br>
					@param pageNo ҳ��,��1��ʼ.<br> @param pageSize ÿҳ�ļ�¼����.<br>
					@return ��ѯ���Ľ��Page
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T findUnique(Class<T> entityClass, Map<String , Object>
					properties) </td>
				<td class="long">����<������ ,����ֵ>��Map��ѯ����������Ψһ����û���������ļ�¼����null.<br>
					���磬����������sex=1,age=18�����м�¼��<br>
					Map properties = new HashMap();<br>
					properties.put(&quot;sex&quot;, &quot;1&quot;);<br>
					properties.put(&quot;age&quot;, 18);<br>
					User user = service.findUnique(User.class, properties);<br>
					@param entityClass ʵ����<br>
					@param properties<br>
					���Ե�Map��keyΪ��������valueΪ����ֵ<br>
					@return ����������Ψһ����û���������ļ�¼����null. </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T findUnique(Class<T> entityClass, QueryRule queryRule) </td>
				<td class="long">���ݲ�ѯ�����ѯ����������Ψһ����û���������ļ�¼����null.<br> ���磺<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					User user = service.findUnique(User.class, queryRule);<br>
					@param entityClass ʵ����<br> @param queryRule ��ѯ����<br>
					@return ����������Ψһ����û���������ļ�¼����null.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					Page pagination(List<T> objList, int pageNo, int pageSize) </td>
				<td class="long">���ݵ�ǰlist������Ӧ�ķ�ҳ����<br> @param <T> <br>
					@param objList<br>
					@param pageNo<br>
					@param pageSize<br>
					@return Page </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					mergeList(List pojoList, List poList, String idName)</td>
				<td class="long">�ϲ�PO List����.(���POJO�е�ֵΪnull,�����ʹ��PO�е�ֵ��<br>
					@param pojoList �����POJO��List<br> @param poList �����PO��List<br>
					@param idName ID�ֶ�����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getCount(String hql, Object... values)</td>
				<td class="long">��ѯ���������ļ�¼����ʹ��hql.<br> ���磺��ѯUser���������� name
					like "%ca%" �ļ�¼��<br> long count = service.getCount(&quot;from
					User where name like ?&quot;, &quot;%ca%&quot;);<br> @param
					hql HQL���<br> @param values ����List<br> @return ���������ļ�¼��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					mergeList(List pojoList, List poList, String idName, boolean
					isCopyNull)</td>
				<td class="long">�ϲ�PO List����.<br> @param pojoList
					�����POJO��List<br> @param poList �����PO��List<br> @param
					idName ID�ֶ�����<br> @param isCopyNull
					�Ƿ񿽱�null(��POJO�е�ֵΪnullʱ�����isCopyNull=ture,����null,�������ʹ��PO�е�ֵ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Long
					getSequence(final String sequenceName)</td>
				<td class="long">��ȡ���к�<br> @param sequenceName<br>
					@return ���к�ֵ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					findUnionBySql(final String sql, final Object... values)</td>
				<td class="long">ֱ��SQL��ѯUnion���<br> @param sql
					SQL���(����ֵ���ʺ����),һ��Ҫ����union<br> @param values ������֧�ֱ��<br>
					@return ��ѯ���ؽ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					findUnionByHqls(final List<String> hqls, final List<List
						<Object>> valuess, int pageNo, int pageSize)    </td>
				<td class="long">
						���Ӷ��hql��ѯ�����ҳ<br>
						@param hqls
						           HQL��ѯ����List����<br>
						@param valuess
						           ��ѯ����<br>
						@param pageNo
						           ҳ��<br>
						@param pageSize
						           һҳ��¼��<br>
						@return ��ѯ���ؽ��                  
				</td>
			</tr><tr>
				<td class="bgc_tt short" style="text-align: left"> public Page findTopUnionByHqls(final List<String> hqls, final int top,
																				final List<List<Object>> valuess)    </td>
				<td class="long">
						���Ӷ��hql��ѯTop���<br>
						@param hqls
						           HQL��ѯ����List����<br>
						@param top
						           top��С<br>
						@param valuess
						           ��ѯ����<br>
						@return Top���                    
				</td>
			</tr><tr>
				<td class="bgc_tt short" style="text-align: left"> public List findBySql(final String sql, final Object... values)  </td>
				<td class="long">
						����sql��ѯ,��ѯ����.<br>
						��1�����´����ѯuser����<br>
						List&lt;User&gt; list = service.findByHql(<br>
								&quot;select * from Demo_Type o where o.name = ? for update&quot;, &quot;Age&quot;);<br>
						// ��ʾ����<br>
						for (User user : list) {<br>
							System.out.println(ToStringBuilder.reflectionToString(user));<br>
						}<br>
						@param sql
						           SQL���(ע�⣺��ѯ���Ǳ�����Ƕ���)<br>
						@param values
						           �ɱ����<br>
						@return ��ѯ���Ķ����List                                                                        
				</td>
			</tr><tr>
				<td class="bgc_tt short" style="text-align: left">public String getOrderByString(Map<String, String[]> paramMap)   </td>
				<td class="long">
						��ȡ�����ַ���
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>