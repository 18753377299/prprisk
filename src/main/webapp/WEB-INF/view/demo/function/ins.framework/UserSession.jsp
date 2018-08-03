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
					Object get(String attribute)</td>
				<td class="long">用ThreadLocal提供一个存储线程内变量的地方.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public <T>
					T get(String attribute, Class<T> clazz) </td>
				<td class="long">用ThreadLocal提供一个存储线程内变量的地方.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void set(String attribute, Object value</td>
				<td class="long">用ThreadLocal提供一个存储线程内变量的地方.</td>
			</tr>
		</table>
	</div>
</body>
</HTML>