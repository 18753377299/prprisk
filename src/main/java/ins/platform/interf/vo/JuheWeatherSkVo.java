package ins.platform.interf.vo;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class JuheWeatherSkVo implements Serializable {
	private static final long serialVersionUID = 1L;
	// "temp": "23",
	// "wind_direction": "南风",
	// "wind_strength": "2级",
	// "humidity": "57%",
	// "time": "10:05"
	/** 温度 */
	private String temp;
	/** 风向 */
	private String wind_direction;
	/** 风力 */
	private String wind_strength;
	/** 湿度 */
	private String humidity;
	/** 发布时间 */
	private String time;

	public String getTemp() {
		return temp;
	}

	public void setTemp(String temp) {
		this.temp = temp;
	}

	public String getWind_direction() {
		return wind_direction;
	}

	public void setWind_direction(String wind_direction) {
		this.wind_direction = wind_direction;
	}

	public String getWind_strength() {
		return wind_strength;
	}

	public void setWind_strength(String wind_strength) {
		this.wind_strength = wind_strength;
	}

	public String getHumidity() {
		return humidity;
	}

	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
