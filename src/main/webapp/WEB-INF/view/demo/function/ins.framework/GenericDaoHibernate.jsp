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
				<td class="bgc_tt short" style="text-align: left">public T
					get(PK id)</td>
				<td class="long">����������ȡ����. ���磺���´����ȡid=2�ļ�¼<br> User user
					= service.get(2);<br> @param id PK<br> @return ƥ��Ķ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean exists(PK id)</td>
				<td class="long">���������ж϶����Ƿ����. ���磺���´����ж�id=2��User��¼�Ƿ����<br>
					boolean user2Exist = service.exists(2);<br> @param id PK<br>
					@return ���ڷ���true,���򷵻�false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					deleteByPK(PK id)</td>
				<td class="long">��������ɾ����¼. ���磺���´���ɾ��id=1������<br>
					service.removeByPK(1);<br> @param id ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public T
					findUnique(String propertyName, Object value)</td>
				<td class="long">������������ѯ�����ݵ�������ֵ��Ψһ����û���������ļ�¼����null.<br>
					���磬����������id=5��Ψһ��¼��<br> User user =
					service.findUnique(&quot;id&quot;, 5);<br> @param propertyName
					������<br> @param value ����ֵ<br> @return ����������Ψһ���� or null<br>
					@see EntityDaoHibernate#findUnique(Class,String,Object)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public T
					findUnique(QueryRule queryRule)</td>
				<td class="long">���ݲ�ѯ�����ѯ����������Ψһ����û���������ļ�¼����null.<br> ���磺<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					User user = service.findUnique(queryRule);<br> @param
					queryRule ��ѯ����<br> @return ����������Ψһ����û���������ļ�¼����null.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public T
					findUnique(Map<String , Object> properties) 
				</td>
				<td class="long">����<������ ,����ֵ>��Map��ѯ����������Ψһ����û���������ļ�¼����null.<br>
					���磬����������sex=1,age=18�����м�¼��<br>
					Map properties = new HashMap();<br>
					properties.put(&quot;sex&quot;, &quot;1&quot;);<br>
					properties.put(&quot;age&quot;, 18);<br>
					User user = service.findUnique(properties);<br>
					@param properties<br>
					���Ե�Map��keyΪ��������valueΪ����ֵ<br>
					@return ����������Ψһ����û���������ļ�¼����null. </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List<T>
					find(QueryRule queryRule) </td>
				<td class="long">��ѯ������ʹ�ò�ѯ����.<br> �������´����ѯ����Ϊƥ�������<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> list =
					userService.find(queryRule);<br> @param queryRule ��ѯ����<br>
					@return ���������ļ�¼
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Page
					find(QueryRule queryRule, final int pageNo, final int pageSize)</td>
				<td class="long">��ҳ��ѯ������ʹ�ò�ѯ����.<br> �������´����ѯ����Ϊƥ�������<br>
					QueryRule queryRule = new QueryRule();<br>
					queryRule.addLike(&quot;username&quot;, user.getUsername());<br>
					queryRule.addLike(&quot;monicker&quot;, user.getMonicker());<br>
					queryRule.addBetween(&quot;id&quot;, lowerId, upperId);<br>
					queryRule.addDescOrder(&quot;id&quot;);<br>
					queryRule.addAscOrder(&quot;username&quot;);<br> page =
					userService.find(queryRule, pageNo, pageSize);<br> @param
					queryRule ��ѯ����<br> @param pageNo ҳ��,��1��ʼ.<br> @param
					pageSize ÿҳ�ļ�¼����.<br> @return ���������ļ�¼
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					update(T obj)</td>
				<td class="long">���¶���.<br> ���磺���´��뽫������µ����ݿ���<br> User
					entity = service.get(1);<br> entity.setName(&quot;zzz&quot;);<br>
					service.update(entity);<br> @param obj �����¶���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					mergeComplexObjectToTargetFromSource(Object target, Object source,
					boolean isCopyNull)</td>
				<td class="long">������DTO����ϲ���PO������<br> ���ӣ�<br>
					service.mergeComplexObjectToTargetFromSource(prpTmainPO,prpTmainDto,
					false);<br> @param target �����Ŀ�����PO����<br> @param source
					�����Դ����DTO����<br> @param isCopyNull<br>
					�Ƿ񿽱�null(��source�е�ֵΪnullʱ�����isCopyNull=ture,����null,�������ʹ��target�е�ֵ��<br>
					@throws Exception
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>