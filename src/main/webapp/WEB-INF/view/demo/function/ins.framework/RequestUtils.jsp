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
					int getInt(Map<String, String[]> paramMap, String
					paramName,int defaultValue) 
				</td>
				<td class="long">获取int型参数值<br> @param paramMap
					request.getParameterMap()得到的Map<br> @param paramName 参数名<br>
					@param defaultValue 默认值（无内容时用默认值）<br> @return 参数值
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getString(Map<String, String[]> paramMap,String
					paramName, String defaultValue) 
				</td>
				<td class="long">获取String型参数值<br> @param paramMap
					request.getParameterMap()得到的Map<br> @param paramName 参数名<br>
					@param defaultValue 默认值（无内容时用默认值）<br> @return 参数值
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					HashMap<String , String> convertToMap( 
				</td>
				<td class="long">将request转化为Map<String , String> <br>
					@param request HttpServletRequest<br>
					@return paramMap </td>
			</tr>

		</table>
	</div>
</body>
</HTML>