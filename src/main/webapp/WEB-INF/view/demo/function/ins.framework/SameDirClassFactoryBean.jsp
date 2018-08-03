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
					SameDirClassFactoryBean(List<String> classNames) 
				</td>
				<td class="long">
					根据一个类，获取与该类在同一目录下的所有的Class.支持目录模式和jar模式.使用方式如下：<br> 示例:<br>
					List<String> classNames = new ArrayList<String>();<br>
					@param classNames 
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					SameDirClassFactoryBean(String className)</td>
				<td class="long">
					根据一个类，获取与该类在同一目录下的所有的Class.支持目录模式和jar模式.使用方式如下：<br> @param
					classNames
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>