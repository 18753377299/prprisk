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
					double add(double v1, double v2)</td>
				<td class="long">��ȷ�ļӷ�����.<br> ʾ��:<br>
					NumberUtils.add(v1, v2);<br> @param v1 <br> @param v2
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double subtract(double v1, double v2)</td>
				<td class="long">��ȷ�ļ�������. <br> ʾ��:<br>
					NumberUtils.subtract(v1, v2);<br> @param v1 ������<br>
					@param v2 ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double multiply(double v1, double v2, int scale)</td>
				<td class="long">�ṩ��ȷ�ĳ˷����㣬������������λ.<br> @param scale
					������С����ȷ��λ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double divide(double v1, double v2)</td>
				<td class="long">�ṩ����ԣ���ȷ�ĳ�������.<br> @see #divide(double,
					double, int)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double divide(double v1, double v2, int scale)</td>
				<td class="long">�ṩ����ԣ���ȷ�ĳ�������. ��scale����ָ�����ȣ��Ժ��������������.<br>
					@param v1 ������<br> @param v2 ����<br> @param scale
					��ʾ��ʾ��Ҫ��ȷ��С�����Ժ�λ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double round(double v, int scale)</td>
				<td class="long">�ṩ��ȷ��С��λ�������봦��.<br> @param v ��Ҫ�������������<br>
					@param scale С���������λ
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>