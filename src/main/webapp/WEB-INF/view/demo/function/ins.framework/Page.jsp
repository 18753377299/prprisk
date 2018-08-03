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
				<td class="bgc_tt short" style="text-align: left">public Page()</td>
				<td class="long">���췽����ֻ�����ҳ <br> <b>ʾ��: </b><br> Page
					page = new Page();<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					Page(long start, long totalSize, int pageSize, List data)</td>
				<td class="long">Ĭ�Ϲ��췽��.<br> @param start ��ҳ���������ݿ��е���ʼλ��<br>
					@param totalSize ���ݿ����ܼ�¼����<br> @param pageSize ��ҳ����<br>
					@param data ��ҳ����������

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getTotalCount()</td>
				<td class="long">ȡ�ܼ�¼��. <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> long totalCount=page.getTotalCount();<br>
					@return �ܼ�¼��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getTotalPageCount()</td>
				<td class="long">ȡ��ҳ��. <br> <b>ʾ��: </b><br> Page page
					= new Page();<br> long
					totalPageCount=page.getTotalPageCount();<br> @return ��ҳ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getPageSize()</td>
				<td class="long">ȡÿҳ��������. <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> int pageSize=page.getPageSize();<br>
					@return ÿҳ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					getResult()</td>
				<td class="long">ȡ��ǰҳ�еļ�¼ <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> List list = page.getResult();<br>
					@return ��ǰҳ�еļ�¼
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getCurrentPageNo()</td>
				<td class="long">ȡ��ҳ��ǰҳ��,ҳ���1��ʼ. <br> <b>ʾ��: </b><br>
					Page page = new Page();<br> long currentPageNo =
					page.getCurrentPageNo();<br> @return ��ҳ��ǰҳ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean hasNextPage()</td>
				<td class="long">��ҳ�Ƿ�����һҳ. <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> boolean tf = page.hasNextPage();<br>
					@return true or false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean hasPreviousPage()</td>
				<td class="long">��ҳ�Ƿ�����һҳ. <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> boolean tf = page.hasPreviousPage();<br>
					@return true or false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getStartOfPage(int pageNo, int pageSize)</td>
				<td class="long">��ȡ��һҳ��һ�����������ݼ���λ��. <br> <b>ʾ��: </b><br>
					Page page = new Page();<br> int a=
					page.getStartOfPage(pageNo,pageSize);<br> @param pageNo
					��1��ʼ��ҳ��<br> @param pageSize ÿҳ��¼����<br> @return ��ҳ��һ������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getStart()</td>
				<td class="long">�õ���ʼ��� <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> long start= page.getStart();<br>
					@return ��ʼ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					getMessage()</td>
				<td class="long">�õ�˵������Ϣ <br> <b>ʾ��: </b><br> Page
					page = new Page();<br> String message= page.getMessage();<br>
					@return ˵������Ϣ
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>