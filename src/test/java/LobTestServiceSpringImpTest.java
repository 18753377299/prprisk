
import org.apache.commons.lang.builder.ToStringBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.picc.platform.excel.service.facade.ExcelTestService;
import com.picc.platform.excel.vo.ExcelTestVo;
import com.picc.platform.lob.service.facade.LobTestService;
import com.picc.platform.lob.vo.LobTestVo;

import ins.framework.dao.database.DatabaseDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class LobTestServiceSpringImpTest{
	private static final Logger LOGGER = LoggerFactory.getLogger(LobTestServiceSpringImpTest.class);
	@Autowired
	DatabaseDao databaseDao;
	@Autowired
	LobTestService lobTestService;
	@Autowired
	ExcelTestService excelTestService;
	@Test
	public void doTest() { 
		LobTestVo vo =lobTestService.findByPK(new Long(1));
//		ExcelTestVo vo = excelTestService.findByPK(new Long(1));
//		Assert.assertEquals("admin", vo.getUserCode());
		System.out.println(ToStringBuilder.reflectionToString(vo)); 
	}
}
