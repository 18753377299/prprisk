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
				<td class="bgc_tt short" style="text-align: left">public Page()</td>
				<td class="long">构造方法，只构造空页 <br> <b>示例: </b><br> Page
					page = new Page();<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					Page(long start, long totalSize, int pageSize, List data)</td>
				<td class="long">默认构造方法.<br> @param start 本页数据在数据库中的起始位置<br>
					@param totalSize 数据库中总记录条数<br> @param pageSize 本页容量<br>
					@param data 本页包含的数据

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getTotalCount()</td>
				<td class="long">取总记录数. <br> <b>示例: </b><br> Page
					page = new Page();<br> long totalCount=page.getTotalCount();<br>
					@return 总记录数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getTotalPageCount()</td>
				<td class="long">取总页数. <br> <b>示例: </b><br> Page page
					= new Page();<br> long
					totalPageCount=page.getTotalPageCount();<br> @return 总页数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getPageSize()</td>
				<td class="long">取每页数据容量. <br> <b>示例: </b><br> Page
					page = new Page();<br> int pageSize=page.getPageSize();<br>
					@return 每页数据容
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public List
					getResult()</td>
				<td class="long">取当前页中的记录 <br> <b>示例: </b><br> Page
					page = new Page();<br> List list = page.getResult();<br>
					@return 当前页中的记录
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getCurrentPageNo()</td>
				<td class="long">取该页当前页码,页码从1开始. <br> <b>示例: </b><br>
					Page page = new Page();<br> long currentPageNo =
					page.getCurrentPageNo();<br> @return 该页当前页
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean hasNextPage()</td>
				<td class="long">该页是否有下一页. <br> <b>示例: </b><br> Page
					page = new Page();<br> boolean tf = page.hasNextPage();<br>
					@return true or false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean hasPreviousPage()</td>
				<td class="long">该页是否有下一页. <br> <b>示例: </b><br> Page
					page = new Page();<br> boolean tf = page.hasPreviousPage();<br>
					@return true or false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getStartOfPage(int pageNo, int pageSize)</td>
				<td class="long">获取任一页第一条数据在数据集的位置. <br> <b>示例: </b><br>
					Page page = new Page();<br> int a=
					page.getStartOfPage(pageNo,pageSize);<br> @param pageNo
					从1开始的页号<br> @param pageSize 每页记录条数<br> @return 该页第一条数据
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public long
					getStart()</td>
				<td class="long">得到起始序号 <br> <b>示例: </b><br> Page
					page = new Page();<br> long start= page.getStart();<br>
					@return 起始序号
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					getMessage()</td>
				<td class="long">得到说明性消息 <br> <b>示例: </b><br> Page
					page = new Page();<br> String message= page.getMessage();<br>
					@return 说明性消息
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>