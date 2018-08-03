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
					void copyFile(String fromFile, String toFile)</td>
				<td class="long">�����ļ�. <br> <b>ʾ��: </b><br>
					FileUtils.copyFile(&quot;/home/app/config.xml&quot;,
					&quot;/home/appbak/config_bak.xml&quot;)<br> @param fromFile
					Դ�ļ������������ľ���·�����ļ���<br> @param toFile
					Ŀ���ļ������������ľ���·�����ļ�����Ŀ��·�������Ѿ����ڣ��÷��������𴴽��µ�Ŀ¼<br> @throws
					IOException �׳�IOException
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getShortFileName(String fileName)</td>
				<td class="long">�õ����ļ���. <br> <b>ʾ��: </b> <br>
					FileUtils.getShortFileName(&quot;/home/app/config.xml&quot;) ����
					&quot;config.xml&quot; <br>
					FileUtils.getShortFileName(&quot;C:\\test\\config.xml&quot;) ����
					&quot;config.xml&quot;</br> @param fileName �ļ��� <br> @return ���ļ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getShortFileNameWithoutExt(String fileName)</td>
				<td class="long">�õ�������չ���Ķ��ļ���. <br> <b>ʾ��: </b> <br>
					FileUtils.getShortFileNameWithoutExt(&quot;/home/app/config.xml&quot;)
					���� &quot;config&quot;<br>
					FileUtils.getShortFileNameWithoutExt(&quot;C:\\test\\config.xml&quot;)
					���� &quot;config&quot;</br> @param fileName �ļ���<br> @return ���ļ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String read(String fileName))</td>
				<td class="long">�õ��ļ�����<br> ʾ��: <br>
					FileUtils.read(fileName); @param fileName �ļ�����<br> @return
					�ļ�����<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String read(File file)</td>
				<td class="long">�õ��ļ�����<br> @param file �ļ�<br>
					@return �ļ�����<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String read(InputStream is)</td>
				<td class="long">�õ�������������<br> @param is ������<br>
					@return �ַ���<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					byte[] readBytes(String fileName)</td>
				<td class="long">��byte���鷽ʽ�õ�������������<br> @param fileName
					�ļ�����<br> @return byte����<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void write(String content, File file)</td>
				<td class="long">д�ļ�<br> @param content �ļ�����<br>
					@param file �ļ�����<br> @throws IOException
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getFileNameWithoutExt(String fileName)</td>
				<td class="long">���ز�����չ�����ļ���<br> <b>ʾ��: </b> <br>
					FileUtils.getFileNameWithoutExt("/home/app/config.xml")<br>
					����/home/app/config<br> @param fileName ԭʼ�ļ���<br> @return
					������չ�����ļ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getFileNameExt(String fileName)</td>
				<td class="long">�����ļ���չ��,����.�� <br> ʾ��:<br>
					FileUtils.getFileNameExt("/home/app/config.xml") ����".xml"<br>
					@param fileName ԭʼ�ļ���<br> @return �ļ���չ��
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					synchronized static File getUniqueFile(File repository,String
					fileName)</td>
				<td class="long">�õ�Ψһ�ļ�<br> ʾ��:<br>
					FileUtils.getUniqueFile(repository,fileName)<br> @param
					fileName ԭʼ�ļ���<br> @return File
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void deleteFile(String fileName)</td>
				<td class="long">ɾ���ļ����������ɾ�������������ļ�����ɾ���أ� �´ν��е���ʱ������ɾ�����е��ļ�<br>
					ʾ��:<br> FileUtils.deleteFile(fileName)<br> @param
					fileName
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					File getUniqueFile(Class cl, String extension)</td>
				<td class="long">�õ�Ψһ�ļ���һ���ദ��ĳ��λ�õ�class��jar���У����ݴ�λ�õõ������Ӧ���ļ���<br>
					��ͬλ�õ���õ����ļ��ǲ�һ���ġ�<br> @param cl ��<br> @param extension
					������ļ���չ��<br> @return File
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					boolean deleteFolder(File delFolder)</td>
				<td class="long">ɾ���ļ��У������Ƿ��ļ���Ϊ�գ�<br>
					ע�⣺��ԭ�Ӳ�����ɾ���ļ���ʧ��ʱ�������ܱ�֤û���ļ���ɾ���� * <br> <b>ʾ��: </b> <br>
					FileUtils.deleteFolder(&quot;/home/tmp&quot;) ɾ���ɹ�����true.<br>
					FileUtils.deleteFolder(&quot;C:\\test&quot;) ɾ���ɹ�����true.</br> @param
					delFolder ��ɾ�����ļ���</br> @return ���ɾ���ɹ��򷵻�true�����򷵻�false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getRealPathName(Class cl)</td>
				<td class="long">
					�õ�Java�����ڵ�ʵ��λ�á�һ���ദ��ĳ��λ�õ�class��jar���У����ݴ�λ�õõ������Ӧ���ļ���<br>
					��ͬλ�õ���õ����ļ��ǲ�һ���ġ�<br> @param cl ��<br> @return ����ϵͳ�е�ʵ���ļ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void createJarArchive(File archiveFile, File[] tobeJared)</td>
				<td class="long">����Jar�ļ�<br> @param archiveFile Ҫ���ɵ�jar�ļ�<br>
					@param tobeJared jar����Ҫ������ļ�<br> @throws IOException
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>