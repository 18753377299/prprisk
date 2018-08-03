package ins.platform.interf.vo;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class JuheWeatherVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private JuheWeatherSkVo sk;
	private JuheWeatherTodayVo today;
	private Map<String, JuheWeatherDayVo> future = new LinkedHashMap<String, JuheWeatherDayVo>();

	public JuheWeatherSkVo getSk() {
		return sk;
	}

	public void setSk(JuheWeatherSkVo sk) {
		this.sk = sk;
	}

	public JuheWeatherTodayVo getToday() {
		return today;
	}

	public void setToday(JuheWeatherTodayVo today) {
		this.today = today;
	}

	public Map<String, JuheWeatherDayVo> getFuture() {
		return future;
	}

	public void setFuture(Map<String, JuheWeatherDayVo> future) {
		this.future = future;
	}

}
