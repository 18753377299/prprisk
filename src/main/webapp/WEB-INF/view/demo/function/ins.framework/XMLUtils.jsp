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
					Document newDocument()</td>
				<td class="long">新建一个xml文档 <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Document parse(File file)</td>
				<td class="long">将一个文件转换为xml文档</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Document parse(InputStream is)</td>
				<td class="long">将一个文件转换为xml文档</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Document parse(String fileName)</td>
				<td class="long">将一个文件转换为xml文档</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node getSingleNodeByTag(Document document, String tagName)</td>
				<td class="long">通过标签找到唯一节点</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getNodeAttribute(Node currentNode, String attrName)</td>
				<td class="long">通过属性名称找到节点属性值</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node getChildNodeByTagName(Node currentNode, String tagName)</td>
				<td class="long">通过标签名找到子节点</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node[] getChildNodesByTagName(Node currentNode, String tagName)</td>
				<td class="long">通过标签名找到子节点</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node[] getChildElements(Node currentNode)</td>
				<td class="long">查找当前节点所有子节点</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getChildNodeValue(Node currentNode, String nodeName)</td>
				<td class="long">通过节点名称查找当前节点的子节点</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void writeXMLFile(Document document, String fileName)</td>
				<td class="long">将xml文档输出到指定文件</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void writeXMLFile(DOMSource source, String fileName)</td>
				<td class="long">将xml文档输出到指定文件</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void writeXMLFile(Node node, String fileName)</td>
				<td class="long">将xml文档输出到指定文件</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node getChildNodeByPath(Node currentNode, String path)</td>
				<td class="long">通过当前节点和路径查找子节点</td>
			</tr>
		</table>
	</div>
</body>
</HTML>