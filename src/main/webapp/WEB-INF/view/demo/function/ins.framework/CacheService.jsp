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
				<td class="bgc_tt short" style="text-align: left">public
					String[] getAllCacheManagerName()</td>
				<td class="long">�õ����е�CacheManager��CacheManagerName<br>
					@return String[]
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clearAllCacheManager()</td>
				<td class="long">������е�CacheManager��Cache</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clearCacheManager(String cacheManagerName)</td>
				<td class="long">�������������еĻ���<br> @param cacheManagerName
					�����������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Object
					getCache(String key)</td>
				<td class="long">�õ�����ֵ</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					putCache(String key, Object value)</td>
				<td class="long">���뻺��ֵ</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					putCache(String key, String funName, Object value, String comCode)</td>
				<td class="long">���뻺��ֵ</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clearCache(Object... arguments)</td>
				<td class="long">�������</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean containsKey(String key)</td>
				<td class="long">�Ƿ����key</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean containsValue(String value)</td>
				<td class="long">�Ƿ����value</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					generateCacheKey(Object... arguments)</td>
				<td class="long">�õ�Cache��Key</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					size()</td>
				<td class="long">�õ������С</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					Object[] getKeys()</td>
				<td class="long">�õ��������е�Key</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					remove(String key)</td>
				<td class="long">ȥ��ָ��Key&Value</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					CacheManagerInfo getCacheManagerInfo(String cacheManagerName)</td>
				<td class="long">�õ��������Ϣ</td>
			</tr>
		</table>
	</div>
</body>
</HTML>