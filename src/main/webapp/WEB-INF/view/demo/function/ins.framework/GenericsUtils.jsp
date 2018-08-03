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
					Class getSuperClassGenricType(Class clazz)</td>
				<td class="long">通过反射,获得定义Class时声明的父类的范型参数的类型. <br>如public
					BookManager extends GenricManager<Book> @param clazz<br>
					The class to introspect<br>
					@return the first generic declaration, or <code>Object.class</code>
					if cannot be determined </td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Class getSuperClassGenricType(Class clazz, int index)</td>
				<td class="long">通过反射,获得定义Class时声明的父类的范型参数的类型. <br>如public
					BookManager extends GenricManager<Book> <br>
					@param clazz<br>
					clazz The class to introspect<br>
					@param index<br>
					the Index of the generic ddeclaration,start from 0. @return the
					index generic declaration, or <code>Object.class</code> if cannot
					be determined </td>
			</tr>

		</table>
	</div>
</body>
</HTML>