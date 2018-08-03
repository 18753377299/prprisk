package ins.platform.check.web.action;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.time.DateUtils;

public class Test {
	
	public static void main(String[] args) throws ParseException{
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date);
		Date date2 = sdf.parse(str,new ParsePosition(0));
		Date date3 = DateUtils.truncate(date, Calendar.DATE);
		System.out.println(date);
		System.out.println(str);
		System.out.println(date2);
		System.out.println(date3);
	}
	
}
