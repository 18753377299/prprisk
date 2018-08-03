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
				<td class="bgc_tt short" style="text-align: left">public
					BusinessException(String messageKey, Object arg)</td>
				<td class="long">根据资源文件Key和参数值构建业务逻辑异常实例<br> @param
					messageKey 资源文件Key<br> @param arg 参数值 <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					BusinessException(String messageKey, Object[] args)</td>
				<td class="long">根据资源文件Key和参数值数组构建业务逻辑异常实例<br> @param
					messageKey 资源文件Key<br> @param args 参数值数组 <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					BusinessException(String messageKey, boolean isResource)</td>
				<td class="long">根据 资源文件Key/直接文本 构建业务逻辑异常实例 <br> @param
					messageKey 资源文件Key/直接文本 <br> @param isResource 是否资源文件
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>