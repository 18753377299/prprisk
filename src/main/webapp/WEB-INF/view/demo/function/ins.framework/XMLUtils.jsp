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
					Document newDocument()</td>
				<td class="long">�½�һ��xml�ĵ� <br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Document parse(File file)</td>
				<td class="long">��һ���ļ�ת��Ϊxml�ĵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Document parse(InputStream is)</td>
				<td class="long">��һ���ļ�ת��Ϊxml�ĵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Document parse(String fileName)</td>
				<td class="long">��һ���ļ�ת��Ϊxml�ĵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node getSingleNodeByTag(Document document, String tagName)</td>
				<td class="long">ͨ����ǩ�ҵ�Ψһ�ڵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getNodeAttribute(Node currentNode, String attrName)</td>
				<td class="long">ͨ�����������ҵ��ڵ�����ֵ</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node getChildNodeByTagName(Node currentNode, String tagName)</td>
				<td class="long">ͨ����ǩ���ҵ��ӽڵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node[] getChildNodesByTagName(Node currentNode, String tagName)</td>
				<td class="long">ͨ����ǩ���ҵ��ӽڵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node[] getChildElements(Node currentNode)</td>
				<td class="long">���ҵ�ǰ�ڵ������ӽڵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getChildNodeValue(Node currentNode, String nodeName)</td>
				<td class="long">ͨ���ڵ����Ʋ��ҵ�ǰ�ڵ���ӽڵ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void writeXMLFile(Document document, String fileName)</td>
				<td class="long">��xml�ĵ������ָ���ļ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void writeXMLFile(DOMSource source, String fileName)</td>
				<td class="long">��xml�ĵ������ָ���ļ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void writeXMLFile(Node node, String fileName)</td>
				<td class="long">��xml�ĵ������ָ���ļ�</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					Node getChildNodeByPath(Node currentNode, String path)</td>
				<td class="long">ͨ����ǰ�ڵ��·�������ӽڵ�</td>
			</tr>
		</table>
	</div>
</body>
</HTML>