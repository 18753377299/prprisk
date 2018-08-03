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
				<td class="bgc_tt short" style="text-align: left">protected
					void render(String text, String contentType)</td>
				<td class="long">直接输出.<br> @param contentType
					内容的类型.html,text,xml的值见后，json为"text/x-json;charset=UTF-8"
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderText(String text)</td>
				<td class="long">直接输出纯字符串.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderHtml(String text)</td>
				<td class="long">直接输出纯HTML.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderXML(String text)</td>
				<td class="long">直接输出纯XML.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void saveMessage(String msg)</td>
				<td class="long">将msg追加到session中.<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpServletRequest getRequest()</td>
				<td class="long">获取request的便利方法<br> @return 当前request
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					ServletContext getServletContext()</td>
				<td class="long">获取servletContext的便利方法<br> @return
					当前ServletContext
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpServletResponse getResponse()</td>
				<td class="long">获取response的便利方法<br> @return 当前response
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpSession getSession()</td>
				<td class="long">获取session的便利方法,如果当前不存在将自动新建一个。<br>
					@return 从request中获取(request.getSession())
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpSession getSession(boolean flag)</td>
				<td class="long">获取session的便利方法,如果当前不存在且flag为true将自动新建一个。<br>
					@return 从request中获取(request.getSession(flag))
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invoke(Object oldObject, String methodName, Class[]
					argsClass, Object[] args)</td>
				<td class="long">调用方法<br> Class cl = oldObject.getClass();<br>
					Method method = cl.getMethod(methodName, argsClass);
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private
					Object fixValueForJSON(Object value)</td>
				<td class="long">修正对象值(限用于writeJSON)<br> @param value 对象值<br>
					@return 修正后的值
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					writeJSONMsg(String msg)</td>
				<td class="long">报出异常信息.<br> @param msg
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void writeSuccessData(String[] msgs)</td>
				<td class="long">写成功信息，用于AJAX方式提交成功时返回信息.<br> @param msgs
					信息数组
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void writeFailureData(Exception e)</td>
				<td class="long">写失败信息，用于AJAX方式提交失败时返回错误原因.<br> @param e
					异常信息
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderJSON(String text)</td>
				<td class="long">直接输出JSON数据.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(List list, String... args)</td>
				<td class="long">生成DataTables所需的JSON字符串 <br> @param list
					list对象<br> @param args 属性名(支持使用点号获取子对象，如“prpDcompany.comCode”)<br>
					@see #toDataTableJson(List, ObjectToMapCallback, String...)<br>
					@return DataTables所需的JSON字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(Page page, ObjectToMapCallback callback, String...
					args)</td>
				<td class="long">生成DataTables所需的JSON字符串<br> @param page
					PageIterator对象<br> @param callback
					ObjectToMapCallback实现类(主要用于代码翻译或计算字段等)<br> @param args
					属性名(支持使用点号获取子对象，如“prpDcompany.comCode”)<br> @return
					DataTables所需的JSON字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(Page page, String... args)</td>
				<td class="long">生成DataTables所需的JSON字符串<br> @param page
					PageIterator对象<br> @param args
					属性名(支持使用点号获取子对象，如“prpDcompany.comCode”)<br> @return
					DataTables所需的JSON字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(Page page, ObjectToMapCallback callback, String...
					args)</td>
				<td class="long">生成DataTables所需的JSON字符串<br> @param page
					PageIterator对象<br> @param callback
					ObjectToMapCallback实现类(主要用于代码翻译或计算字段等)<br> @param args
					属性名(支持使用点号获取子对象，如“prpDcompany.comCode”)<br> @return
					DataTables所需的JSON字符串
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>