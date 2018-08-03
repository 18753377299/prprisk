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
					String getClientIp(HttpServletRequest request)</td>
				<td class="long">获取请求的客户端的IP<br>
					说明：如果使用了负载均衡器，则调用request.getRemoteHost()方法返回的是负载均衡器的IP，<br>
					而不是客户端的实际IP ，一般的负载均衡在发送请求到一台服务器时，会将客户端的真实IP放到header信息中，<br>所以可以通过这种方式获取客户端的真实IP)<br>

					@param request HttpServletRequest<br> @return 请求的客户端的IP
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getWebClassesPath()</td>
				<td class="long">得到Web应用的classes目录<br> @return
					Web应用的classes目录
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getServerIp()</td>
				<td class="long">得到应用所在服务器的IP<br> @return 应用所在服务器的IP
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>