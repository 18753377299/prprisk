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
				<td class="bgc_tt short" style="text-align: left">public Object
					executeRules(String name, Object object, String URL)</td>
				<td class="long">ִ��ֻ��Ҫһ������Ĺ���<br>
					ruleService.executeRules(&quot;user&quot;, user,
					&quot;/ClaimCheckRuleApp/ClaimRule&quot;);<br> @param name
					��������<br> @param object ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Object
					executeRules(String inputName, String outputName, Object
					inputObject, String URL)</td>
				<td class="long">�Զ�����γ��εĹ���ִ�з���<br>
					ruleService.executeRules(&quot;user&quot;, &quot;newuser&quot;,
					user, &quot;/ClaimCheckRuleApp/ClaimRule&quot;);<br> @param
					inputName ��ζ�������<br> @param outputName ���ζ�������<br> @param
					inputObject �������<br> @param URL �������<br> @return ���ζ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Map
					executeRules(Map<String , Object> map, String URL) 
				</td>
				<td class="long">ִ�й���<br> Map&lt;String, Object&gt; map =
					new HashMap&lt;String, Object&gt;();<br>
					map.put(&quot;user&quot;, user);<br> map.put(&quot;role&quot;,
					role);<br> ruleService.executeRules(map,
					&quot;/ClaimCheckRuleApp/ClaimRule&quot;);<br> @param map
					���ж�������map��ÿ��������������
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>