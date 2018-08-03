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
				<td class="bgc_tt short" style="text-align: left">public void
					send(SimpleMailMessage msg)</td>
				<td class="long">发送SimpleMailMessage. <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					send(String from, String to, String subject, String text)</td>
				<td class="long">简易发信接口.<br> @param from 发件人<br>
					@param to 收件人<br> @param subject 邮件标题<br> @param text
					邮件内容
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					send(SimpleMailMessage msg, String templateName, Map model)</td>
				<td class="long">使用模版发送HTML格式的邮件.<br> @param msg
					装有to,from,subject信息的SimpleMailMessage<br> @param templateName
					模版名,模版根路径已在配置文件定义于freemakarengine中<br> @param model 渲染模版所需的数据
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					send(MimeMessage mimeMessage)</td>
				<td class="long">发送MimeMessage邮件<br> @param mimeMessage
					MimeMessage邮件<br>
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>