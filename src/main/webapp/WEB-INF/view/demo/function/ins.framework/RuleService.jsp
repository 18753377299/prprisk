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
				<td class="bgc_tt short" style="text-align: left">public Object
					executeRules(String name, Object object, String URL)</td>
				<td class="long">执行只需要一个对象的规则<br>
					ruleService.executeRules(&quot;user&quot;, user,
					&quot;/ClaimCheckRuleApp/ClaimRule&quot;);<br> @param name
					对象名称<br> @param object 对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Object
					executeRules(String inputName, String outputName, Object
					inputObject, String URL)</td>
				<td class="long">自定义入参出参的规则执行方法<br>
					ruleService.executeRules(&quot;user&quot;, &quot;newuser&quot;,
					user, &quot;/ClaimCheckRuleApp/ClaimRule&quot;);<br> @param
					inputName 入参对象名称<br> @param outputName 出参对象名称<br> @param
					inputObject 传入对象<br> @param URL 规则包名<br> @return 出参对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Map
					executeRules(Map<String , Object> map, String URL) 
				</td>
				<td class="long">执行规则<br> Map&lt;String, Object&gt; map =
					new HashMap&lt;String, Object&gt;();<br>
					map.put(&quot;user&quot;, user);<br> map.put(&quot;role&quot;,
					role);<br> ruleService.executeRules(map,
					&quot;/ClaimCheckRuleApp/ClaimRule&quot;);<br> @param map
					含有多个对象的map，每个对象都有其名字
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>