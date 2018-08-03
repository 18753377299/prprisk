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
					DateTime(Date date)</td>
				<td class="long">DateTime�Ĺ��캯��. <br> <b>ʾ��: </b><br>
					DateTime startDate = new DateTime(new java.util.Date());<br>
					DateTime startDate = new DateTime((java.util.Date) null);<br>
					@param date<br> һ��java.util.Date����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(String dateString)</td>
				<td class="long">DateTime�Ĺ��캯��. <br> <b>ʾ��: </b><br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime startDate = new DateTime(&quot;2004-2-1&quot;);<br>
					DateTime startDate = new DateTime((String) null);<br> @param
					dateString<br> һ����ʾ���ڵ��ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(String dateString, int type)</td>
				<td class="long">DateTime�Ĺ��캯��. <br> <b>ʾ��: </b><br>
					DateTime startDate = new DateTime(&quot;2004-2-1&quot;,
					DateTime.YEAR_TO_DAY);<br> DateTime startDate = new
					DateTime(&quot;2004-02-01 11:32&quot;, DateTime.YEAR_TO_MINUTE);<br>
					DateTime startDate = new DateTime(&quot;2004/02/01 11:32&quot;,
					DateTime.YEAR_TO_MINUTE);<br> @param dateString<br>
					һ����ʾ���ں�ʱ����ַ���<br> @param type<br> DateTime����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(Date date, int type)</td>
				<td class="long">DateTime�Ĺ��캯��. <br> <b>ʾ��: </b><br>
					DateTime startDate = new DateTime(new Date(),
					DateTime.YEAR_TO_DAY);<br> @param date<br> ���ڶ���<br>
					@param type<br> DateTime����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(DateTime dateTime, int type)</td>
				<td class="long">DateTime�Ĺ��캯��. <br> <b>ʾ��: </b><br>
					DateTime startDate = new DateTime(new DateTime(new Date(),
					DateTime.YEAR_TO_SECOND), DateTime.YEAR_TO_DAY);<br> @param
					dateTime<br> ����ʱ�����<br> @param type<br> DateTime����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getYear()</td>
				<td class="long">��������ʱ������е���. <br> <b>ʾ��: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getYear()<br> ���� 2004;<br>
					@return ����ʱ������е���<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getMonth()</td>
				<td class="long">��������ʱ������е���. <br> <b>ʾ��: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getMonth()<br> ���� 2<br>
					@return ����ʱ������е���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getDay()</td>
				<td class="long">��������ʱ������е���. <br> <b>ʾ��: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getDay()<br> ���� 3<br>
					@return ����ʱ������е���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getHour()</td>
				<td class="long">��������ʱ������е�ʱ. <br> <b>ʾ��: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getHour()<br> ���� 9<br>
					@return ����ʱ������е�ʱ
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getMinute()</td>
				<td class="long">��������ʱ������еķ�. <br> <b>ʾ��: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getMinute()<br> ���� 34<br>
					@return ����ʱ������еķ�
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getHour()</td>
				<td class="long">��������ʱ������е���. <br> <b>ʾ��: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getSecond()<br> ���� 52<br>
					@return ����ʱ������е���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void setDateDelimiter(String delimiter)</td>
				<td class="long">����DateTime��Ĭ�ϲ��õ����ڷָ����Ĭ��Ϊ'-' <br> @param
					delimiter<br> String�ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getDateDelimiter()</td>
				<td class="long">��ȡDateTime��Ĭ�ϲ��õ����ڷָ����Ĭ��Ϊ'-' <br> @return
					���ڷָ��<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private
					static SimpleDateFormat getDateFormat(int type)</td>
				<td class="long">�õ�DateFormat <br> @param type <br>
					DateTime����<br> @return type��Ӧ��DateFormat
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toString()</td>
				<td class="long">����DateTime������ַ���ֵ.<br> <b>ʾ��: </b><br>
					new DateTime().toString()<br> ���� &quot;&quot;<br> @return
					һ����ʾ���ں�/��ʱ����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toString(int type)</td>
				<td class="long">�������ͷ���DateTime������ַ���ֵ. <br> <b>ʾ��: </b><br>
					new DateTime(&quot;2004-02-01 16:34:52.589&quot;,
					DateTime.YEAR_TO_MILLISECOND); <br> dt.toString(
					DateTime.YEAR_TO_MONTH) ���� 2004-02 <br> dt.toString(
					DateTime.YEAR_TO_YEAR) ���� 2004 <br> dt.toString(
					DateTime.YEAR_TO_DAY) ���� 2004-02-01<br> dt.toString(
					DateTime.YEAR_TO_HOUR) ���� 2004-02-01 16<br> dt.toString(
					DateTime.YEAR_TO_MINUTE)) ���� 2004-02-01 16:34<br> dt.toString(
					DateTime.YEAR_TO_SECOND)) ���� 2004-02-01 16:34:52<br>
					dt.toString( DateTime.YEAR_TO_MILLISECOND)) ���� 2004-02-01
					16:34:52.58<br> dt.toString( DateTime.DAY_TO_DAY)) ���� 01<br>
					dt.toString( DateTime.DAY_TO_HOUR)) ���� 01 16<br> dt.toString(
					DateTime.DAY_TO_MILLISECOND)) ���� 01 16:34:52.589<br>
					dt.toString( DateTime.DAY_TO_MINUTE)) ���� 01 16:34<br>
					dt.toString( DateTime.DAY_TO_SECOND)) ���� 01 16:34:52<br>
					dt.toString( DateTime.HOUR_TO_HOUR)) ���� 16<br> dt.toString(
					DateTime.HOUR_TO_MILLISECOND)) ���� 16:34:52.589<br>
					dt.toString( DateTime.HOUR_TO_MINUTE)) ���� 16:34<br>
					dt.toString( DateTime.HOUR_TO_SECOND)) ���� 16:34:52<br>
					dt.toString( DateTime.MILLISECOND_TO_MILLISECOND)) ���� 589<br>
					dt.toString( DateTime.MINUTE_TO_MILLISECOND)) ���� 34:52.589<br>
					dt.toString( DateTime.MINUTE_TO_MINUTE)) ���� 34<br>
					dt.toString( DateTime.MINUTE_TO_SECOND)) ���� 34:52<br>
					dt.toString( DateTime.MONTH_TO_DAY)) ���� 02-01<br> dt.toString(
					DateTime.MONTH_TO_HOUR)) ���� 02-01 16<br> dt.toString(
					DateTime.MONTH_TO_MILLISECOND)) ���� 02-01 16:34:52.589<br>
					dt.toString( DateTime.MONTH_TO_MINUTE)) ���� 02-01 16:34<br>
					dt.toString( DateTime.MONTH_TO_MONTH)) ���� 02<br> dt.toString(
					DateTime.MONTH_TO_SECOND)) ���� 02-01 16:34:52<br> dt.toString(
					DateTime.SECOND_TO_MILLISECOND)) ���� 52.589<br> dt.toString(
					DateTime.SECOND_TO_SECOND)) ���� 52 <br> @param type <br>
					���� <br> @return �������ͷ���һ����ʾ���ں�/��ʱ����ַ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					DateTime current()</td>
				<td class="long">���ص�ǰ���ں�ʱ��. <br> <b>ʾ��: </b> DateTime dt =
					DateTime().current();<br> @return ���ر�ʾ��ǰ���ں�ʱ���DateTime����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int intervalYear(DateTime startDate, int startHour,DateTime
					endDate, int endHour)</td>
				<td class="long">���ص���ʼʱ�䡢Сʱ�����ʱ�䡢Сʱ��������. <br> ʾ��1��<br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2005/02/01&quot;);<br>
					DateTime.intervalYear(startDate,0,endDate,24) ���� 2<br> ʾ��2��<br>
					DateTime startDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime.intervalYear(startDate,11,endDate,2) ���� -1<br> ʾ��3��<br>
					DateTime startDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime.intervalYear(startDate,1,endDate,1) ���� 0<br> @param
					startDate ��ʼʱ��(�굽����)<br> @param startHour ��ʼСʱ<br> @param
					endDate ����ʱ��(�굽����)<br> @param endHour ����Сʱ<br> @return
					�������� <br>

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int intervalMonth(DateTime startDate, int startHour,DateTime
					endDate, int endHour)</td>
				<td class="long">���ص���ʼʱ�䡢Сʱ�����ʱ�䡢Сʱ��������. <br> ʾ��1��<br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime.intervalMonth(startDate,0,endDate,24) ���� 1<br> ʾ��2��<br>
					DateTime startDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime.intervalMonth(startDate,3,endDate,2) ���� -1<br> ʾ��3��<br>
					DateTime startDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime.intervalMonth(startDate,1,endDate,1) ���� 0<br> @param
					startDate ��ʼʱ��(�굽����)<br> @param startHour ��ʼСʱ<br> @param
					endDate ����ʱ��(�굽����)<br> @param endHour ����Сʱ<br> @return
					��������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int intervalDay(DateTime startDate, int startHour, DateTime
					endDate, int endHour)</td>
				<td class="long">���ص���ʼʱ�䡢Сʱ�����ʱ�䡢Сʱ��������. <br> ʾ��1��<br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/02/03&quot;);<br>
					DateTime.intervalDay(startDate,0,endDate,24) ���� 3<br> ʾ��2��<br>
					DateTime startDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime.intervalDay(startDate,11,endDate,2) ���� -1<br> ʾ��3��<br>
					DateTime startDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime.intervalDay(startDate,1,endDate,1) ���� 0<br> @param
					startDate ��ʼʱ��(�굽����)<br> @param startHour ��ʼСʱ<br> @param
					endDate ����ʱ��(�굽����)<br> @param endHour ����Сʱ<br> @return
					��������
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addDay(int day)</td>
				<td class="long">����һ���µ����ڶ����µ����ڶ����ǵ�ǰ���ڶ������ָ������֮�������. <br>
					ʾ��1�� <br> DateTime dt = new DateTime(&quot;2004/02/01&quot;);
					<br> dt.addDay(5) ���� new DateTime(&quot;2004/02/06&quot;); <br>
					ʾ��2�� <br> DateTime dt = new DateTime(&quot;2004/02/01&quot;);
					<br> dt.addDay(-3) ���� new DateTime(&quot;2004/01/29&quot;); <br>
					ʾ��3�� <br> DateTime dt = new DateTime(&quot;2004/02/01&quot;);
					<br> dt.addDay(0) ���� new DateTime(&quot;2004/02/01&quot;); <br>
					@param day ������ <br> @return �µ����ڶ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addMonth(int iMonth)</td>
				<td class="long">����һ���µ����ڶ����µ����ڶ����ǵ�ǰ���ڶ������ָ������֮�������. <br>
					<b>ʾ��: </b> DateTime dt = new DateTime(&quot;2004/02/14&quot;);<br>
					dt.addMonth(5) ���� new DateTime(&quot;2004/07/14&quot;);<br>
					@param iMonth ����<br> @return �µ����ڶ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addYear(int iYear)</td>
				<td class="long">����һ���µ����ڶ����µ����ڶ����ǵ�ǰ���ڶ������ָ������֮�������. <br>
					<b>ʾ��: </b> DateTime dt = new DateTime(&quot;2004/02/14&quot;);<br>
					dt.addYear(1) ���� new DateTime(&quot;2005/02/14&quot;);<br>
					@param iYear ����<br> @return �µ����ڶ���

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addHour(int hour)</td>
				<td class="long">����һ���µ����ڶ����µ����ڶ����ǵ�ǰ���ڶ������ָ��Сʱ��֮�������. <br>
					ʾ��1��<br> DateTime dt = new DateTime(&quot;2004/02/01
					00&quot;,DateTime.YEAR_TO_HOUR);<br> dt.addHour(5) ���� new
					DateTime(&quot;2004/02/01 05&quot;,DateTime.YEAR_TO_HOUR);<br>
					ʾ��2��<br> DateTime dt = new DateTime(&quot;2004/02/01
					00&quot;,DateTime.YEAR_TO_HOUR);<br> dt.addHour(-3) ���� new
					DateTime(&quot;2004/01/31 21&quot;,DateTime.YEAR_TO_HOUR);<br>
					ʾ��3��<br> DateTime dt = new DateTime(&quot;2004/02/01
					00&quot;,DateTime.YEAR_TO_HOUR);<br> dt.addHour(0) ���� new
					DateTime(&quot;2004/02/01 00&quot;,DateTime.YEAR_TO_HOUR);<br>
					@param hour Сʱ��<br> @return �µ����ڶ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addMinute(int minute)</td>
				<td class="long">����һ���µ����ڶ����µ����ڶ����ǵ�ǰ���ڶ������ָ��������֮�������. <br>
					ʾ��1��<br> DateTime dt = new DateTime(&quot;2004/02/01
					00:00&quot;,DateTime.YEAR_TO_MINUTE);<br> dt.addMinute(3) ����
					new DateTime(&quot;2004/02/01 00:03&quot;,DateTime.YEAR_TO_MINUTE);<br>
					ʾ��2��<br> DateTime dt = new DateTime(&quot;2004/02/01
					00:00&quot;,DateTime.YEAR_TO_MINUTE);<br> dt.addMinute(-3) ����
					new DateTime(&quot;2004/01/31 23:57&quot;,DateTime.YEAR_TO_MINUTE);<br>
					ʾ��3��<br> DateTime dt = new DateTime(&quot;2004/02/01
					00:00&quot;,DateTime.YEAR_TO_MINUTE);<br> dt.addMinute(0) ����
					new DateTime(&quot;2004/02/01 00:00&quot;,DateTime.YEAR_TO_MINUTE);<br>
					@param minute ������<br> @return �µ����ڶ���
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getType()</td>
				<td class="long">����������������<br> @return ���������������� type.<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private
					static String correct(String dateString)</td>
				<td class="long">��������.����'/','-'�滻�ɵ�ǰ���ڷָ���<br> @param
					dateString �������ڴ�<br> @return ����������ڴ�
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean isEmpty()</td>
				<td class="long">�ж��Ƿ���ֵ. <br> <b>ʾ��: </b> DateTime
					startDate = new DateTime();<br> startDate.isEmpty() ����true<br>
					DateTime endDate = new DateTime(new java.util.Date());<br>
					endDate.isEmpty() ����false<br> @return �������� empty.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private void
					check(DateTime dateTime, int type)</td>
				<td class="long">������� <br> @param dateTime datetime <br>
					@param type ����
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					DateTime timeZoneTransform(Date sourceDate, int sourceZone, int
					targetZone)</td>
				<td class="long">ʱ��ת�� <br> <b>ʾ��: </b> ��Σ�-1 (��һ��) ,
					2006-12-31 23:20:05, 3 (������)<br> ���Σ�Mon Jan 01 03:20:05 CST
					2007<br> DateTime testDateTime = new DateTime(&quot;2007-01-01
					03:20:05&quot;, DateTime.YEAR_TO_SECOND);<br> DateTime
					sourceDateTime = new DateTime(&quot;2006-12-31 23:20:05&quot;,
					DateTime.YEAR_TO_SECOND);<br> DateTime targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, -1, 3);<br> ��Σ�-12
					(��ʮ����) , 2006-09-15 11:50:29 , 12 (��ʮ����)<br> ���Σ�Sat Sep 16
					11:50:29 CST 2006<br> testDateTime = new
					DateTime(&quot;2006-09-16 11:50:29&quot;, DateTime.YEAR_TO_SECOND);<br>
					sourceDateTime = new DateTime(&quot;2006-09-15 11:50:29&quot;,
					DateTime.YEAR_TO_SECOND);<br> targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, -12, 12);<br> ��Σ�2
					(������) , 2006-11-30 11:01:00 , 8 (������)<br> ���Σ�Thu Nov 30
					17:01:00 CST 2006<br> testDateTime = new
					DateTime(&quot;2006-11-30 17:01:00&quot;, DateTime.YEAR_TO_SECOND);<br>
					sourceDateTime = new DateTime(&quot;2006-11-30 11:01:00&quot;,
					DateTime.YEAR_TO_SECOND);<br> targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, 2, 8);<br> ��Σ�-9
					(������) , 2007-02-28 20:12:00 , 1 (��һ��)<br> ���Σ�Thu Mar 01
					06:12:00 CST 2007<br> testDateTime = new
					DateTime(&quot;2007-03-01 06:12:00&quot;, DateTime.YEAR_TO_SECOND);<br>
					sourceDateTime = new DateTime(&quot;2007-02-28 20:12:00&quot;,
					DateTime.YEAR_TO_SECOND);<br> targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, -9, 1);<br> @param
					sourceDate Դ��������<br> @param sourceZone Դ����ʱ��<br> @param
					targetZone Ŀ�����ʱ��<br> @return Ŀ��ʱ��������

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getDateInterval(Date startDate, Date endDate)</td>
				<td class="long">�����������������������ֻҪ�������ڵ�Сʱû��24�㣬������Ϊһ�졣�����¾����� <br>
					(1) startDate = new DateTime("2002-04-23 00:00:00",<br>
					DateTime.YEAR_TO_SECOND); endDate = new DateTime("2002-04-25
					00:00:00",<br> DateTime.YEAR_TO_SECOND); return interval=2. <br>
					(2) startDate = new DateTime("2002-04-23 24:00:00",<br>
					DateTime.YEAR_TO_SECOND); endDate = new DateTime("2002-04-25
					00:00:00",<br> DateTime.YEAR_TO_SECOND); return interval=1. <br>
					(3) startDate = new DateTime("2002-04-23 10:00:01",<br>
					DateTime.YEAR_TO_SECOND); endDate = new DateTime("2002-04-25
					24:00:00",<br> DateTime.YEAR_TO_SECOND); return interval=3. <br>
					(4) startDate = new DateTime("2002-04-23 00:00:00",<br>
					DateTime.YEAR_TO_SECOND); endDate = new DateTime("2002-04-25
					24:00:00",<br> DateTime.YEAR_TO_SECOND); return interval=3.
					(5) startDate = new<br> DateTime("2002-04-23 20:20:20",
					DateTime.YEAR_TO_SECOND); endDate = new<br>
					DateTime("2002-04-25 10:10:10", DateTime.YEAR_TO_SECOND); return
					interval=2.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					DateTime getOffsetDate(Date baseDate, int dateInterval)</td>
				<td class="long">
					�õ���baseDateΪ��׼���ڵ�dateInterval����֮���DateTime���ڶ��� <br>
					������baseDate��DateTimeʵ������ô���صĶ��������ĸ�ʽ��ͬ�� <br>
					��������java.util.Dateʵ������ô���صĶ����ʽΪDateTime.YEAR_TO_SECOND�� <br>
					�����¾����� <br> (1) baseDate = new DateTime("2004-02-27 00:00:00",
					DateTime.YEAR_TO_SECOND); <br> return = 2004-03-03 00:00:00 <br>
					(2) baseDate = new DateTime("2004-02-27", DateTime.YEAR_TO_DAY); <br>
					return = 2004-03-03 <br> (3) baseDate = new
					DateTime("2004-02-27 24:00:00", DateTime.YEAR_TO_SECOND);<br>
					return = 2004-03-04 00:00:00
				</td>
			</tr>
		</table>
	</div>
</body>
</HTML>