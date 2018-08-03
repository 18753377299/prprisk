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
					mergeComplexObjectToTargetFromSource(Object target, Object source,
					boolean isCopyNull)</td>
				<td class="long">将复杂DTO对象合并到PO对象中<br> 例子：<br>
					service.mergeComplexObjectToTargetFromSource(prpTmainPO,prpTmainDto,
					false);<br> @param target 传入的目标对象（PO对象）<br> @param source
					传入的源对象（DTO对象）<br> @param isCopyNull
					是否拷贝null(当source中的值为null时，如果isCopyNull=ture,则用null,否则继续使用target中的值）<br>
					@throws Exception
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>