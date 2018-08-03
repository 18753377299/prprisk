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
					double add(double v1, double v2)</td>
				<td class="long">精确的加法运算.<br> 示例:<br>
					NumberUtils.add(v1, v2);<br> @param v1 <br> @param v2
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double subtract(double v1, double v2)</td>
				<td class="long">精确的减法运算. <br> 示例:<br>
					NumberUtils.subtract(v1, v2);<br> @param v1 被减数<br>
					@param v2 减数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double multiply(double v1, double v2, int scale)</td>
				<td class="long">提供精确的乘法运算，并对运算结果截位.<br> @param scale
					运算结果小数后精确的位数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double divide(double v1, double v2)</td>
				<td class="long">提供（相对）精确的除法运算.<br> @see #divide(double,
					double, int)
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double divide(double v1, double v2, int scale)</td>
				<td class="long">提供（相对）精确的除法运算. 由scale参数指定精度，以后的数字四舍五入.<br>
					@param v1 被除数<br> @param v2 除数<br> @param scale
					表示表示需要精确到小数点以后几位
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					double round(double v, int scale)</td>
				<td class="long">提供精确的小数位四舍五入处理.<br> @param v 需要四舍五入的数字<br>
					@param scale 小数点后保留几位
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>