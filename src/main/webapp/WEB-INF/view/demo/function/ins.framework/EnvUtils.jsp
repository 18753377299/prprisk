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
				<td class="bgc_tt short" style="text-align: left">public static
					String getClientIp(HttpServletRequest request)</td>
				<td class="long">��ȡ����Ŀͻ��˵�IP<br>
					˵�������ʹ���˸��ؾ������������request.getRemoteHost()�������ص��Ǹ��ؾ�������IP��<br>
					�����ǿͻ��˵�ʵ��IP ��һ��ĸ��ؾ����ڷ�������һ̨������ʱ���Ὣ�ͻ��˵���ʵIP�ŵ�header��Ϣ�У�<br>���Կ���ͨ�����ַ�ʽ��ȡ�ͻ��˵���ʵIP)<br>

					@param request HttpServletRequest<br> @return ����Ŀͻ��˵�IP
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getWebClassesPath()</td>
				<td class="long">�õ�WebӦ�õ�classesĿ¼<br> @return
					WebӦ�õ�classesĿ¼
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getServerIp()</td>
				<td class="long">�õ�Ӧ�����ڷ�������IP<br> @return Ӧ�����ڷ�������IP
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>