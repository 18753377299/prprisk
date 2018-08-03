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
					void initServiceFactory(ServletContext servletContext)</td>
				<td class="long">初始化上下文 <br> <b>示例: </b><br> context
					=
					WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);<br>
					@param servletContext
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object getService(ServletContext servletContext, String
					serviceName)</td>
				<td class="long">获取Service<br> 示例:<br> CodeService
					codeService = (CodeService) ServiceFactory.getService(pageContext,
					&quot;codeService&quot;);<br> @param servletContext 页面上下文<br>
					@param serviceName service名称<br> @return Service对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object getService(String serviceName)</td>
				<td class="long">获取Service<br> 示例:<br> CodeService
					codeService = (CodeService)
					ServiceFactory.getService(&quot;codeService&quot;);<br> @param
					serviceName service名称<br> @return Service对象
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>