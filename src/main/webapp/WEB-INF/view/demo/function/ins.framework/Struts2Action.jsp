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
				<td class="bgc_tt short" style="text-align: left">protected
					void render(String text, String contentType)</td>
				<td class="long">ֱ�����.<br> @param contentType
					���ݵ�����.html,text,xml��ֵ����jsonΪ"text/x-json;charset=UTF-8"
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderText(String text)</td>
				<td class="long">ֱ��������ַ���.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderHtml(String text)</td>
				<td class="long">ֱ�������HTML.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderXML(String text)</td>
				<td class="long">ֱ�������XML.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void saveMessage(String msg)</td>
				<td class="long">��msg׷�ӵ�session��.<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpServletRequest getRequest()</td>
				<td class="long">��ȡrequest�ı�������<br> @return ��ǰrequest
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					ServletContext getServletContext()</td>
				<td class="long">��ȡservletContext�ı�������<br> @return
					��ǰServletContext
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpServletResponse getResponse()</td>
				<td class="long">��ȡresponse�ı�������<br> @return ��ǰresponse
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpSession getSession()</td>
				<td class="long">��ȡsession�ı�������,�����ǰ�����ڽ��Զ��½�һ����<br>
					@return ��request�л�ȡ(request.getSession())
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					HttpSession getSession(boolean flag)</td>
				<td class="long">��ȡsession�ı�������,�����ǰ��������flagΪtrue���Զ��½�һ����<br>
					@return ��request�л�ȡ(request.getSession(flag))
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Object invoke(Object oldObject, String methodName, Class[]
					argsClass, Object[] args)</td>
				<td class="long">���÷���<br> Class cl = oldObject.getClass();<br>
					Method method = cl.getMethod(methodName, argsClass);
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private
					Object fixValueForJSON(Object value)</td>
				<td class="long">��������ֵ(������writeJSON)<br> @param value ����ֵ<br>
					@return �������ֵ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					writeJSONMsg(String msg)</td>
				<td class="long">�����쳣��Ϣ.<br> @param msg
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void writeSuccessData(String[] msgs)</td>
				<td class="long">д�ɹ���Ϣ������AJAX��ʽ�ύ�ɹ�ʱ������Ϣ.<br> @param msgs
					��Ϣ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void writeFailureData(Exception e)</td>
				<td class="long">дʧ����Ϣ������AJAX��ʽ�ύʧ��ʱ���ش���ԭ��.<br> @param e
					�쳣��Ϣ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">protected
					void renderJSON(String text)</td>
				<td class="long">ֱ�����JSON����.</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(List list, String... args)</td>
				<td class="long">����DataTables�����JSON�ַ��� <br> @param list
					list����<br> @param args ������(֧��ʹ�õ�Ż�ȡ�Ӷ����硰prpDcompany.comCode��)<br>
					@see #toDataTableJson(List, ObjectToMapCallback, String...)<br>
					@return DataTables�����JSON�ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(Page page, ObjectToMapCallback callback, String...
					args)</td>
				<td class="long">����DataTables�����JSON�ַ���<br> @param page
					PageIterator����<br> @param callback
					ObjectToMapCallbackʵ����(��Ҫ���ڴ��뷭�������ֶε�)<br> @param args
					������(֧��ʹ�õ�Ż�ȡ�Ӷ����硰prpDcompany.comCode��)<br> @return
					DataTables�����JSON�ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(Page page, String... args)</td>
				<td class="long">����DataTables�����JSON�ַ���<br> @param page
					PageIterator����<br> @param args
					������(֧��ʹ�õ�Ż�ȡ�Ӷ����硰prpDcompany.comCode��)<br> @return
					DataTables�����JSON�ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toDataTableJson(Page page, ObjectToMapCallback callback, String...
					args)</td>
				<td class="long">����DataTables�����JSON�ַ���<br> @param page
					PageIterator����<br> @param callback
					ObjectToMapCallbackʵ����(��Ҫ���ڴ��뷭�������ֶε�)<br> @param args
					������(֧��ʹ�õ�Ż�ȡ�Ӷ����硰prpDcompany.comCode��)<br> @return
					DataTables�����JSON�ַ���
				</td>
			</tr>

		</table>
	</div>
</body>
</HTML>