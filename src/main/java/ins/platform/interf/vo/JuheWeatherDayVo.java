package ins.platform.interf.vo;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class JuheWeatherDayVo implements Serializable {
	private static final long serialVersionUID = 1L;
	// "temperature": "32℃~19℃",
	// "weather": "多云转阴",
	// "wind": "微风",
	// "week": "星期五",
	// "date": "20130531"

	private String temperature;
	private String weather;
	private String wind;
	private String week;
	private String date;

	public String getTemperature() {
		return temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public String getWeather() {
		return weather;
	}

	public void setWeather(String weather) {
		this.weather = weather;
	}

	public String getWind() {
		return wind;
	}

	public void setWind(String wind) {
		this.wind = wind;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
