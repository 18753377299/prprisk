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
					void copyFile(String fromFile, String toFile)</td>
				<td class="long">复制文件. <br> <b>示例: </b><br>
					FileUtils.copyFile(&quot;/home/app/config.xml&quot;,
					&quot;/home/appbak/config_bak.xml&quot;)<br> @param fromFile
					源文件，包括完整的绝对路径和文件名<br> @param toFile
					目标文件，包括完整的绝对路径和文件名，目标路径必须已经存在，该方法不负责创建新的目录<br> @throws
					IOException 抛出IOException
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getShortFileName(String fileName)</td>
				<td class="long">得到短文件名. <br> <b>示例: </b> <br>
					FileUtils.getShortFileName(&quot;/home/app/config.xml&quot;) 返回
					&quot;config.xml&quot; <br>
					FileUtils.getShortFileName(&quot;C:\\test\\config.xml&quot;) 返回
					&quot;config.xml&quot;</br> @param fileName 文件名 <br> @return 短文件名
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getShortFileNameWithoutExt(String fileName)</td>
				<td class="long">得到不带扩展名的短文件名. <br> <b>示例: </b> <br>
					FileUtils.getShortFileNameWithoutExt(&quot;/home/app/config.xml&quot;)
					返回 &quot;config&quot;<br>
					FileUtils.getShortFileNameWithoutExt(&quot;C:\\test\\config.xml&quot;)
					返回 &quot;config&quot;</br> @param fileName 文件名<br> @return 短文件名
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String read(String fileName))</td>
				<td class="long">得到文件内容<br> 示例: <br>
					FileUtils.read(fileName); @param fileName 文件名称<br> @return
					文件内容<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String read(File file)</td>
				<td class="long">得到文件内容<br> @param file 文件<br>
					@return 文件内容<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String read(InputStream is)</td>
				<td class="long">得到输入流的内容<br> @param is 输入流<br>
					@return 字符串<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					byte[] readBytes(String fileName)</td>
				<td class="long">以byte数组方式得到输入流的内容<br> @param fileName
					文件名称<br> @return byte数组<br> @throws Exception
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void write(String content, File file)</td>
				<td class="long">写文件<br> @param content 文件内容<br>
					@param file 文件对象<br> @throws IOException
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getFileNameWithoutExt(String fileName)</td>
				<td class="long">返回不带扩展名的文件名<br> <b>示例: </b> <br>
					FileUtils.getFileNameWithoutExt("/home/app/config.xml")<br>
					返回/home/app/config<br> @param fileName 原始文件名<br> @return
					不带扩展名的文件名
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getFileNameExt(String fileName)</td>
				<td class="long">返回文件扩展名,带“.” <br> 示例:<br>
					FileUtils.getFileNameExt("/home/app/config.xml") 返回".xml"<br>
					@param fileName 原始文件名<br> @return 文件扩展名
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					synchronized static File getUniqueFile(File repository,String
					fileName)</td>
				<td class="long">得到唯一文件<br> 示例:<br>
					FileUtils.getUniqueFile(repository,fileName)<br> @param
					fileName 原始文件名<br> @return File
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void deleteFile(String fileName)</td>
				<td class="long">删除文件方法，如果删除不掉，将该文件加入删除池， 下次进行调用时将尝试删除池中的文件<br>
					示例:<br> FileUtils.deleteFile(fileName)<br> @param
					fileName
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					File getUniqueFile(Class cl, String extension)</td>
				<td class="long">得到唯一文件。一个类处在某个位置的class或jar包中，根据此位置得到此类对应的文件。<br>
					不同位置的类得到的文件是不一样的。<br> @param cl 类<br> @param extension
					带点的文件扩展名<br> @return File
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					boolean deleteFolder(File delFolder)</td>
				<td class="long">删除文件夹（不管是否文件夹为空）<br>
					注意：非原子操作，删除文件夹失败时，并不能保证没有文件被删除。 * <br> <b>示例: </b> <br>
					FileUtils.deleteFolder(&quot;/home/tmp&quot;) 删除成功返回true.<br>
					FileUtils.deleteFolder(&quot;C:\\test&quot;) 删除成功返回true.</br> @param
					delFolder 待删除的文件夹</br> @return 如果删除成功则返回true，否则返回false
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getRealPathName(Class cl)</td>
				<td class="long">
					得到Java类所在的实际位置。一个类处在某个位置的class或jar包中，根据此位置得到此类对应的文件。<br>
					不同位置的类得到的文件是不一样的。<br> @param cl 类<br> @return 类在系统中的实际文件名
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void createJarArchive(File archiveFile, File[] tobeJared)</td>
				<td class="long">生成Jar文件<br> @param archiveFile 要生成的jar文件<br>
					@param tobeJared jar包中要加入的文件<br> @throws IOException
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>