package ins.platform.common.web.taglib;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DateTag extends SimpleTagSupport {
	/**
	 * 日期计算公式:Y+1表示年加1，M-1表示月减1，D-max表示显示这个月的最后一天，多个条件直接用逗号“,”隔开，
	 * 例如：cal="Y+1,M+1,D-end"
	 */
	private String cal;//

	/**
	 * 日期格式，没有输入，默认是yyyy-MM-dd
	 */
	private String format;

	@Override
	public void doTag() throws JspException {
		
		PageContext pageContext = (PageContext) this.getJspContext();
		JspWriter out = pageContext.getOut();

		if(format==null){
			format="yyyy-MM-dd";
		}	
		SimpleDateFormat dateformat=new SimpleDateFormat(format);
		try {
			
			Date now=new Date();
			GregorianCalendar gc =new GregorianCalendar();
			gc.setTime(now);
			if(cal!=null&&!cal.equals("")){
				String calStrs[]=cal.split(",");
				String oneCal;
				String type;
				String value;
				String sign;
				for (int i = 0; i < calStrs.length; i++) {
					oneCal=calStrs[i];
					type=oneCal.substring(0, 1);
					sign=oneCal.substring(1,2);
					value=oneCal.substring(2);
					if(value.equals("max")){
						//gc.getActualMinimum(GregorianCalendar.DATE);
						gc.set(GregorianCalendar.DATE, gc.getActualMaximum(GregorianCalendar.DATE));
					}else{
						gc=calDate(gc,type,sign,value);
					}
				}
			}
			String datetime=dateformat.format(gc.getTime());
			out.write(datetime);
		}catch (Exception e) {
//			e.printStackTrace();
			throw new JspException(e.getMessage(),e);
		}
	}


	private GregorianCalendar calDate(GregorianCalendar gc, String type, String sign, String value) {
		int valueInt = new Double(value).intValue();
		if (type.equals("Y")) {

			if (sign.equals("+")) {
				gc.add(GregorianCalendar.YEAR, +valueInt);
			} else if (sign.equals("-")) {
				gc.add(GregorianCalendar.YEAR, -valueInt);
			}

		} else if (type.equals("M")) {
			if (sign.equals("+")) {
				gc.add(GregorianCalendar.MONTH, +valueInt);
			} else if (sign.equals("-")) {
				gc.add(GregorianCalendar.MONTH, -valueInt);
			}
		} else if (type.equals("D")) {
			if (sign.equals("+")) {
				gc.add(GregorianCalendar.DATE, +valueInt);
			} else if (sign.equals("-")) {
				gc.add(GregorianCalendar.DATE, -valueInt);
			}
		}
		return gc;
	}

	public String getCal() {
		return cal;
	}

	public void setCal(String cal) {
		this.cal = cal;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

}
