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
					String[] getAllCacheManagerName()</td>
				<td class="long">得到所有的CacheManager的CacheManagerName<br>
					@return String[]
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clearAllCacheManager()</td>
				<td class="long">清除所有的CacheManager的Cache</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clearCacheManager(String cacheManagerName)</td>
				<td class="long">清除缓存管理器中的缓存<br> @param cacheManagerName
					缓存管理器名
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public Object
					getCache(String key)</td>
				<td class="long">得到缓存值</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					putCache(String key, Object value)</td>
				<td class="long">放入缓存值</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					putCache(String key, String funName, Object value, String comCode)</td>
				<td class="long">放入缓存值</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					clearCache(Object... arguments)</td>
				<td class="long">清除缓存</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean containsKey(String key)</td>
				<td class="long">是否包含key</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean containsValue(String value)</td>
				<td class="long">是否包含value</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					generateCacheKey(Object... arguments)</td>
				<td class="long">得到Cache的Key</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					size()</td>
				<td class="long">得到缓存大小</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					Object[] getKeys()</td>
				<td class="long">得到缓存所有的Key</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public void
					remove(String key)</td>
				<td class="long">去除指定Key&Value</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					CacheManagerInfo getCacheManagerInfo(String cacheManagerName)</td>
				<td class="long">得到缓存的信息</td>
			</tr>
		</table>
	</div>
</body>
</HTML>