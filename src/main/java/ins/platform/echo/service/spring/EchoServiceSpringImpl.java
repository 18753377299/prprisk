package ins.platform.echo.service.spring;

import java.util.Calendar;
import java.util.Date;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Service;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.echo.service.facade.EchoService;
import ins.platform.echo.vo.EchoVo;

/**
 * 示例用的EchoService实现
 * 
 */
@Rpc
@Service(value = "echoService")
public class EchoServiceSpringImpl implements EchoService {

	public EchoVo echoObjectByObject(EchoVo echo) {
		EchoVo result = new EchoVo();
		result.setValue("echoObjectByObject:" + echo.getValue());
		result.setTime(echo.getTime());
		return result;
	}

	public String echoStringByString(String value) {
		return SecurityUtils.getSubject().getPrincipal().toString()
				+ " call echoStringByString: " + value;
	}

	public EchoVo echoObjectByString(String value) {
		EchoVo echo = new EchoVo();
		echo.setValue("echoObjectByString: " + value);
		echo.setTime(Calendar.getInstance().getTime());
		return echo;
	}

	public String echoStringByObject(EchoVo echo) {
		return SecurityUtils.getSubject().getPrincipal().toString()
				+ " call echoStringByObject: " + echo.getValue() + " at "
				+ echo.getTime();
	}

	@Override
	public String echoStringByStringAndDate(String value, Date date) {
		return SecurityUtils.getSubject().getPrincipal().toString()
				+ " call echoStringByStringAndDate: value=" + value + ",date="+date;
	}
}