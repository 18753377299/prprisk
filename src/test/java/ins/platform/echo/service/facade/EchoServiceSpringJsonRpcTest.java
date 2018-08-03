package ins.platform.echo.service.facade;

import java.util.Calendar;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ins.platform.echo.vo.EchoVo;

@RunWith(SpringJUnit4ClassRunner.class)
/*@ContextConfiguration(locations = { "classpath:test/spring/components/applicationContext-rpc.xml" })*/
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class EchoServiceSpringJsonRpcTest {
	@Autowired
	EchoService echoService;
	@Test
	public void doTest() { 
//		EchoService echoService = new ClassPathXmlApplicationContext("classpath:test/spring/components/applicationContext-rpc.xml")
//				.getBean(EchoService.class);
		/*String value = null;
		EchoVo echo = null;
		value = "中科软1";
		value = echoService.echoStringByString(value);
		Assert.assertEquals("value must equals", "admin call echoStringByString: 中科软1", value);
		value = "中科软2";
		echo = null;
		echo = echoService.echoObjectByString(value);
		Assert.assertTrue("value must equals",
				echo.toString().indexOf("EchoVo [value=echoObjectByString: 中科软2, time=") != -1);
		echo = new EchoVo();
		echo.setValue("中科软3");
		echo.setTime(Calendar.getInstance().getTime());
		value = echoService.echoStringByObject(echo);
		Assert.assertEquals("value must equals", "admin call echoStringByObject: 中科软3 at " + echo.getTime(), value);
		echo = new EchoVo();
		echo.setValue("中科软4");
		echo.setTime(Calendar.getInstance().getTime());
		echo = echoService.echoObjectByObject(echo);
		Assert.assertEquals("value must equals",
				"EchoVo [value=echoObjectByObject:中科软4, time=" + echo.getTime() + "]", echo.toString());*/

	}

}
