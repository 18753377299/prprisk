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
				<td class="bgc_tt short" style="text-align: left">public void
					send(SimpleMailMessage msg)</td>
				<td class="long">����SimpleMailMessage. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					send(String from, String to, String subject, String text)</td>
				<td class="long">���׷��Žӿ�.<br> @param from ������<br>
					@param to �ռ���<br> @param subject �ʼ�����<br> @param text
					�ʼ�����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					send(SimpleMailMessage msg, String templateName, Map model)</td>
				<td class="long">ʹ��ģ�淢��HTML��ʽ���ʼ�.<br> @param msg
					װ��to,from,subject��Ϣ��SimpleMailMessage<br> @param templateName
					ģ����,ģ���·�����������ļ�������freemakarengine��<br> @param model ��Ⱦģ�����������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					send(MimeMessage mimeMessage)</td>
				<td class="long">����MimeMessage�ʼ�<br> @param mimeMessage
					MimeMessage�ʼ�<br>
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>