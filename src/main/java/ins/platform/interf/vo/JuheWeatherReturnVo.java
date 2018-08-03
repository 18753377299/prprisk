package ins.platform.interf.vo;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class JuheWeatherReturnVo implements Serializable {
	private static final long serialVersionUID = 1L;
	private String resultcode;
	private String reason;
	private JuheWeatherTodayVo result;

	public String getResultcode() {
		return resultcode;
	}

	public void setResultcode(String resultcode) {
		this.resultcode = resultcode;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public JuheWeatherTodayVo getResult() {
		return result;
	}

	public void setResult(JuheWeatherTodayVo result) {
		this.result = result;
	}
}
