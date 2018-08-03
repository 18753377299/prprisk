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
					DateTime(Date date)</td>
				<td class="long">DateTime的构造函数. <br> <b>示例: </b><br>
					DateTime startDate = new DateTime(new java.util.Date());<br>
					DateTime startDate = new DateTime((java.util.Date) null);<br>
					@param date<br> 一个java.util.Date对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(String dateString)</td>
				<td class="long">DateTime的构造函数. <br> <b>示例: </b><br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime startDate = new DateTime(&quot;2004-2-1&quot;);<br>
					DateTime startDate = new DateTime((String) null);<br> @param
					dateString<br> 一个表示日期的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(String dateString, int type)</td>
				<td class="long">DateTime的构造函数. <br> <b>示例: </b><br>
					DateTime startDate = new DateTime(&quot;2004-2-1&quot;,
					DateTime.YEAR_TO_DAY);<br> DateTime startDate = new
					DateTime(&quot;2004-02-01 11:32&quot;, DateTime.YEAR_TO_MINUTE);<br>
					DateTime startDate = new DateTime(&quot;2004/02/01 11:32&quot;,
					DateTime.YEAR_TO_MINUTE);<br> @param dateString<br>
					一个表示日期和时间的字符串<br> @param type<br> DateTime类型
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(Date date, int type)</td>
				<td class="long">DateTime的构造函数. <br> <b>示例: </b><br>
					DateTime startDate = new DateTime(new Date(),
					DateTime.YEAR_TO_DAY);<br> @param date<br> 日期对象<br>
					@param type<br> DateTime类型
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime(DateTime dateTime, int type)</td>
				<td class="long">DateTime的构造函数. <br> <b>示例: </b><br>
					DateTime startDate = new DateTime(new DateTime(new Date(),
					DateTime.YEAR_TO_SECOND), DateTime.YEAR_TO_DAY);<br> @param
					dateTime<br> 日期时间对象<br> @param type<br> DateTime类型
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getYear()</td>
				<td class="long">返回日期时间对象中的年. <br> <b>示例: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getYear()<br> 返回 2004;<br>
					@return 日期时间对象中的年<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getMonth()</td>
				<td class="long">返回日期时间对象中的月. <br> <b>示例: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getMonth()<br> 返回 2<br>
					@return 日期时间对象中的月
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getDay()</td>
				<td class="long">返回日期时间对象中的日. <br> <b>示例: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getDay()<br> 返回 3<br>
					@return 日期时间对象中的日
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getHour()</td>
				<td class="long">返回日期时间对象中的时. <br> <b>示例: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getHour()<br> 返回 9<br>
					@return 日期时间对象中的时
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getMinute()</td>
				<td class="long">返回日期时间对象中的分. <br> <b>示例: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getMinute()<br> 返回 34<br>
					@return 日期时间对象中的分
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getHour()</td>
				<td class="long">返回日期时间对象中的秒. <br> <b>示例: </b><br>
					DateTime dt = new DateTime(&quot;2004-02-03 09:34:52&quot;,
					DateTime.YEAR_TO_SECOND);<br> dt.getSecond()<br> 返回 52<br>
					@return 日期时间对象中的秒
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					void setDateDelimiter(String delimiter)</td>
				<td class="long">设置DateTime类默认采用的日期分割符，默认为'-' <br> @param
					delimiter<br> String字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					String getDateDelimiter()</td>
				<td class="long">获取DateTime类默认采用的日期分割符，默认为'-' <br> @return
					日期分割符<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private
					static SimpleDateFormat getDateFormat(int type)</td>
				<td class="long">得到DateFormat <br> @param type <br>
					DateTime类型<br> @return type对应的DateFormat
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toString()</td>
				<td class="long">返回DateTime对象的字符串值.<br> <b>示例: </b><br>
					new DateTime().toString()<br> 返回 &quot;&quot;<br> @return
					一个表示日期和/或时间的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public String
					toString(int type)</td>
				<td class="long">根据类型返回DateTime对象的字符串值. <br> <b>示例: </b><br>
					new DateTime(&quot;2004-02-01 16:34:52.589&quot;,
					DateTime.YEAR_TO_MILLISECOND); <br> dt.toString(
					DateTime.YEAR_TO_MONTH) 返回 2004-02 <br> dt.toString(
					DateTime.YEAR_TO_YEAR) 返回 2004 <br> dt.toString(
					DateTime.YEAR_TO_DAY) 返回 2004-02-01<br> dt.toString(
					DateTime.YEAR_TO_HOUR) 返回 2004-02-01 16<br> dt.toString(
					DateTime.YEAR_TO_MINUTE)) 返回 2004-02-01 16:34<br> dt.toString(
					DateTime.YEAR_TO_SECOND)) 返回 2004-02-01 16:34:52<br>
					dt.toString( DateTime.YEAR_TO_MILLISECOND)) 返回 2004-02-01
					16:34:52.58<br> dt.toString( DateTime.DAY_TO_DAY)) 返回 01<br>
					dt.toString( DateTime.DAY_TO_HOUR)) 返回 01 16<br> dt.toString(
					DateTime.DAY_TO_MILLISECOND)) 返回 01 16:34:52.589<br>
					dt.toString( DateTime.DAY_TO_MINUTE)) 返回 01 16:34<br>
					dt.toString( DateTime.DAY_TO_SECOND)) 返回 01 16:34:52<br>
					dt.toString( DateTime.HOUR_TO_HOUR)) 返回 16<br> dt.toString(
					DateTime.HOUR_TO_MILLISECOND)) 返回 16:34:52.589<br>
					dt.toString( DateTime.HOUR_TO_MINUTE)) 返回 16:34<br>
					dt.toString( DateTime.HOUR_TO_SECOND)) 返回 16:34:52<br>
					dt.toString( DateTime.MILLISECOND_TO_MILLISECOND)) 返回 589<br>
					dt.toString( DateTime.MINUTE_TO_MILLISECOND)) 返回 34:52.589<br>
					dt.toString( DateTime.MINUTE_TO_MINUTE)) 返回 34<br>
					dt.toString( DateTime.MINUTE_TO_SECOND)) 返回 34:52<br>
					dt.toString( DateTime.MONTH_TO_DAY)) 返回 02-01<br> dt.toString(
					DateTime.MONTH_TO_HOUR)) 返回 02-01 16<br> dt.toString(
					DateTime.MONTH_TO_MILLISECOND)) 返回 02-01 16:34:52.589<br>
					dt.toString( DateTime.MONTH_TO_MINUTE)) 返回 02-01 16:34<br>
					dt.toString( DateTime.MONTH_TO_MONTH)) 返回 02<br> dt.toString(
					DateTime.MONTH_TO_SECOND)) 返回 02-01 16:34:52<br> dt.toString(
					DateTime.SECOND_TO_MILLISECOND)) 返回 52.589<br> dt.toString(
					DateTime.SECOND_TO_SECOND)) 返回 52 <br> @param type <br>
					类型 <br> @return 根据类型返回一个表示日期和/或时间的字符串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					DateTime current()</td>
				<td class="long">返回当前日期和时间. <br> <b>示例: </b> DateTime dt =
					DateTime().current();<br> @return 返回表示当前日期和时间的DateTime对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int intervalYear(DateTime startDate, int startHour,DateTime
					endDate, int endHour)</td>
				<td class="long">返回当开始时间、小时与结束时间、小时相差的年数. <br> 示例1：<br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2005/02/01&quot;);<br>
					DateTime.intervalYear(startDate,0,endDate,24) 返回 2<br> 示例2：<br>
					DateTime startDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime.intervalYear(startDate,11,endDate,2) 返回 -1<br> 示例3：<br>
					DateTime startDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime.intervalYear(startDate,1,endDate,1) 返回 0<br> @param
					startDate 开始时间(年到日型)<br> @param startHour 开始小时<br> @param
					endDate 结束时间(年到日型)<br> @param endHour 结束小时<br> @return
					相差的天数 <br>

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int intervalMonth(DateTime startDate, int startHour,DateTime
					endDate, int endHour)</td>
				<td class="long">返回当开始时间、小时与结束时间、小时相差的月数. <br> 示例1：<br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime.intervalMonth(startDate,0,endDate,24) 返回 1<br> 示例2：<br>
					DateTime startDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime.intervalMonth(startDate,3,endDate,2) 返回 -1<br> 示例3：<br>
					DateTime startDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime.intervalMonth(startDate,1,endDate,1) 返回 0<br> @param
					startDate 开始时间(年到日型)<br> @param startHour 开始小时<br> @param
					endDate 结束时间(年到日型)<br> @param endHour 结束小时<br> @return
					相差的天数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int intervalDay(DateTime startDate, int startHour, DateTime
					endDate, int endHour)</td>
				<td class="long">返回当开始时间、小时与结束时间、小时相差的天数. <br> 示例1：<br>
					DateTime startDate = new DateTime(&quot;2004/02/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/02/03&quot;);<br>
					DateTime.intervalDay(startDate,0,endDate,24) 返回 3<br> 示例2：<br>
					DateTime startDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/09/18&quot;);<br>
					DateTime.intervalDay(startDate,11,endDate,2) 返回 -1<br> 示例3：<br>
					DateTime startDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime endDate = new DateTime(&quot;2004/04/01&quot;);<br>
					DateTime.intervalDay(startDate,1,endDate,1) 返回 0<br> @param
					startDate 开始时间(年到日型)<br> @param startHour 开始小时<br> @param
					endDate 结束时间(年到日型)<br> @param endHour 结束小时<br> @return
					相差的天数
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addDay(int day)</td>
				<td class="long">返回一个新的日期对象，新的日期对象是当前日期对象加上指定天数之后的日期. <br>
					示例1： <br> DateTime dt = new DateTime(&quot;2004/02/01&quot;);
					<br> dt.addDay(5) 返回 new DateTime(&quot;2004/02/06&quot;); <br>
					示例2： <br> DateTime dt = new DateTime(&quot;2004/02/01&quot;);
					<br> dt.addDay(-3) 返回 new DateTime(&quot;2004/01/29&quot;); <br>
					示例3： <br> DateTime dt = new DateTime(&quot;2004/02/01&quot;);
					<br> dt.addDay(0) 返回 new DateTime(&quot;2004/02/01&quot;); <br>
					@param day 日期数 <br> @return 新的日期对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addMonth(int iMonth)</td>
				<td class="long">返回一个新的日期对象，新的日期对象是当前日期对象加上指定月数之后的日期. <br>
					<b>示例: </b> DateTime dt = new DateTime(&quot;2004/02/14&quot;);<br>
					dt.addMonth(5) 返回 new DateTime(&quot;2004/07/14&quot;);<br>
					@param iMonth 月数<br> @return 新的日期对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addYear(int iYear)</td>
				<td class="long">返回一个新的日期对象，新的日期对象是当前日期对象加上指定年数之后的日期. <br>
					<b>示例: </b> DateTime dt = new DateTime(&quot;2004/02/14&quot;);<br>
					dt.addYear(1) 返回 new DateTime(&quot;2005/02/14&quot;);<br>
					@param iYear 年数<br> @return 新的日期对象

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addHour(int hour)</td>
				<td class="long">返回一个新的日期对象，新的日期对象是当前日期对象加上指定小时数之后的日期. <br>
					示例1：<br> DateTime dt = new DateTime(&quot;2004/02/01
					00&quot;,DateTime.YEAR_TO_HOUR);<br> dt.addHour(5) 返回 new
					DateTime(&quot;2004/02/01 05&quot;,DateTime.YEAR_TO_HOUR);<br>
					示例2：<br> DateTime dt = new DateTime(&quot;2004/02/01
					00&quot;,DateTime.YEAR_TO_HOUR);<br> dt.addHour(-3) 返回 new
					DateTime(&quot;2004/01/31 21&quot;,DateTime.YEAR_TO_HOUR);<br>
					示例3：<br> DateTime dt = new DateTime(&quot;2004/02/01
					00&quot;,DateTime.YEAR_TO_HOUR);<br> dt.addHour(0) 返回 new
					DateTime(&quot;2004/02/01 00&quot;,DateTime.YEAR_TO_HOUR);<br>
					@param hour 小时数<br> @return 新的日期对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					DateTime addMinute(int minute)</td>
				<td class="long">返回一个新的日期对象，新的日期对象是当前日期对象加上指定分钟数之后的日期. <br>
					示例1：<br> DateTime dt = new DateTime(&quot;2004/02/01
					00:00&quot;,DateTime.YEAR_TO_MINUTE);<br> dt.addMinute(3) 返回
					new DateTime(&quot;2004/02/01 00:03&quot;,DateTime.YEAR_TO_MINUTE);<br>
					示例2：<br> DateTime dt = new DateTime(&quot;2004/02/01
					00:00&quot;,DateTime.YEAR_TO_MINUTE);<br> dt.addMinute(-3) 返回
					new DateTime(&quot;2004/01/31 23:57&quot;,DateTime.YEAR_TO_MINUTE);<br>
					示例3：<br> DateTime dt = new DateTime(&quot;2004/02/01
					00:00&quot;,DateTime.YEAR_TO_MINUTE);<br> dt.addMinute(0) 返回
					new DateTime(&quot;2004/02/01 00:00&quot;,DateTime.YEAR_TO_MINUTE);<br>
					@param minute 分钟数<br> @return 新的日期对象
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public int
					getType()</td>
				<td class="long">返回日期类型属性<br> @return 返回日期类型属性 type.<br>
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private
					static String correct(String dateString)</td>
				<td class="long">修正数据.即将'/','-'替换成当前日期分隔符<br> @param
					dateString 传入日期串<br> @return 修正后的日期串
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public
					boolean isEmpty()</td>
				<td class="long">判断是否有值. <br> <b>示例: </b> DateTime
					startDate = new DateTime();<br> startDate.isEmpty() 返回true<br>
					DateTime endDate = new DateTime(new java.util.Date());<br>
					endDate.isEmpty() 返回false<br> @return 返回属性 empty.
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">private void
					check(DateTime dateTime, int type)</td>
				<td class="long">检查数据 <br> @param dateTime datetime <br>
					@param type 类型
				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					DateTime timeZoneTransform(Date sourceDate, int sourceZone, int
					targetZone)</td>
				<td class="long">时区转换 <br> <b>示例: </b> 入参：-1 (西一区) ,
					2006-12-31 23:20:05, 3 (东三区)<br> 出参：Mon Jan 01 03:20:05 CST
					2007<br> DateTime testDateTime = new DateTime(&quot;2007-01-01
					03:20:05&quot;, DateTime.YEAR_TO_SECOND);<br> DateTime
					sourceDateTime = new DateTime(&quot;2006-12-31 23:20:05&quot;,
					DateTime.YEAR_TO_SECOND);<br> DateTime targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, -1, 3);<br> 入参：-12
					(西十二区) , 2006-09-15 11:50:29 , 12 (东十二区)<br> 出参：Sat Sep 16
					11:50:29 CST 2006<br> testDateTime = new
					DateTime(&quot;2006-09-16 11:50:29&quot;, DateTime.YEAR_TO_SECOND);<br>
					sourceDateTime = new DateTime(&quot;2006-09-15 11:50:29&quot;,
					DateTime.YEAR_TO_SECOND);<br> targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, -12, 12);<br> 入参：2
					(东二区) , 2006-11-30 11:01:00 , 8 (东八区)<br> 出参：Thu Nov 30
					17:01:00 CST 2006<br> testDateTime = new
					DateTime(&quot;2006-11-30 17:01:00&quot;, DateTime.YEAR_TO_SECOND);<br>
					sourceDateTime = new DateTime(&quot;2006-11-30 11:01:00&quot;,
					DateTime.YEAR_TO_SECOND);<br> targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, 2, 8);<br> 入参：-9
					(西九区) , 2007-02-28 20:12:00 , 1 (东一区)<br> 出参：Thu Mar 01
					06:12:00 CST 2007<br> testDateTime = new
					DateTime(&quot;2007-03-01 06:12:00&quot;, DateTime.YEAR_TO_SECOND);<br>
					sourceDateTime = new DateTime(&quot;2007-02-28 20:12:00&quot;,
					DateTime.YEAR_TO_SECOND);<br> targetDateTime =
					DateTime.timeZoneTransform(sourceDateTime, -9, 1);<br> @param
					sourceDate 源地区日期<br> @param sourceZone 源地区时区<br> @param
					targetZone 目标地区时区<br> @return 目标时区的日期

				</td>
			</tr>
			<tr>
				<td class="bgc_tt short" style="text-align: left">public static
					int getDateInterval(Date startDate, Date endDate)</td>
				<td class="long">计算两个日期相隔的天数。只要传入日期的小时没到24点，就算作为一天。见如下举例： <br>
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
					得到以baseDate为基准日期的dateInterval天数之后的DateTime日期对象。 <br>
					如果入参baseDate是DateTime实例，那么返回的对象与它的格式相同； <br>
					如果入参是java.util.Date实例，那么返回的对象格式为DateTime.YEAR_TO_SECOND。 <br>
					见如下举例： <br> (1) baseDate = new DateTime("2004-02-27 00:00:00",
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