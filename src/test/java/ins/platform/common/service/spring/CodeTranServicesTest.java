package ins.platform.common.service.spring;

import java.util.Map;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ins.platform.common.service.facade.CodeTranService;
import ins.platform.vo.SysCodeDictVo;

/**
 * <pre></pre>
 * 
 * @author ★LiuPing
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class CodeTranServicesTest {

	@Autowired
	private CodeTranService codeTranService;
 

	@BeforeClass
	// 设置全局静态变量，只调用一次
	public static void beforeClass() {
		System.out.println("====beforeClass====");
	}

	@Before
	// 初始化方法，每个测试方法前都会调用一次
	public void before() {

		System.out.println("====before====");
	}

	@After
	// 销毁方法，每个测试方法后都会调用一次
	public void after() {
		System.out.println("====after====");
	}

	@Test
	public void testTransUtils() {
		/*Map<String, String> map1_1 = codeTranService.findCodeNameMap("BusinessFlag");
		Map<String, String> map1_2 = codeTranService.findCodeNameMap("BusinessFlag,BusinessClass");
		Map<String, String> map1_3 = codeTranService.findCodeNameMap("UserCode");
		
		Map<String, SysCodeDictVo> map2_1 = codeTranService.findCodeDictTransMap("BusinessFlag");
		Map<String, SysCodeDictVo> map2_2 = codeTranService.findCodeDictTransMap("BusinessFlag,BusinessClass");
		Map<String, SysCodeDictVo> map2_3 = codeTranService.findCodeDictTransMap("UserCode");
		System.out.println("--------------1_1----------------");
		for(Map.Entry<String, String> s : map1_1.entrySet()){
			System.out.println(s.getKey() + "," + s.getValue());
		}
		System.out.println("--------------1_2----------------");
		for(Map.Entry<String, String> s : map1_2.entrySet()){
			System.out.println(s.getKey() + "," + s.getValue());	
		}
		System.out.println("--------------1_3----------------");
		for(Map.Entry<String, String> s : map1_3.entrySet()){
			System.out.println(s.getKey() + "," + s.getValue());	
		}
		System.out.println("--------------2_1----------------");
		for(Map.Entry<String, SysCodeDictVo> s : map2_1.entrySet()){
			System.out.println(s.getKey() + "," + s.getValue().getCodeName());
		}
		System.out.println("--------------2_2----------------");
		for(Map.Entry<String, SysCodeDictVo> s : map2_2.entrySet()){
			System.out.println(s.getKey() + "," + s.getValue().getCodeName());
		}
		System.out.println("--------------2_3----------------");
		for(Map.Entry<String, SysCodeDictVo> s : map2_3.entrySet()){
			System.out.println(s.getKey() + "," + s.getValue().getCodeName());
		}*/
	}

	 
	public void testFindCodeNameMap() {
		String transType = "BusinessNature";
		Map<String, String> codeNameMap = codeTranService
				.findCodeNameMap(transType);
		System.out.println(codeNameMap);
		Assert.assertNotNull(codeNameMap);
	}
}
