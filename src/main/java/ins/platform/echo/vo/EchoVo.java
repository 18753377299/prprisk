package ins.platform.echo.vo;

import java.io.Serializable;
import java.util.Date;

public class EchoVo implements Serializable {

	private static final long serialVersionUID = 1L;
	private String value;
	private Date time;

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "EchoVo [value=" + value + ", time=" + time + "]";
	}

}
