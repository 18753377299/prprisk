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
					int getInt(Map<String, String[]> paramMap, String
					paramName,int defaultValue) 
				</td>
				<td class="long">��ȡint�Ͳ���ֵ<br> @param paramMap
					request.getParameterMap()�õ���Map<br> @param paramName ������<br>
					@param defaultValue Ĭ��ֵ��������ʱ��Ĭ��ֵ��<br> @return ����ֵ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getString(Map<String, String[]> paramMap,String
					paramName, String defaultValue) 
				</td>
				<td class="long">��ȡString�Ͳ���ֵ<br> @param paramMap
					request.getParameterMap()�õ���Map<br> @param paramName ������<br>
					@param defaultValue Ĭ��ֵ��������ʱ��Ĭ��ֵ��<br> @return ����ֵ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					HashMap<String , String> convertToMap( 
				</td>
				<td class="long">��requestת��ΪMap<String , String> <br>
					@param request HttpServletRequest<br>
					@return paramMap </td>
			</tr>

		</table>
	</div>
</body>
</HTML>