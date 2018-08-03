package ins.platform.sysuser.service.spring;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ins.framework.dao.database.DatabaseDao;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class SysUserServiceSpringImpTest{
	private static final Logger LOGGER = LoggerFactory.getLogger(SysUserServiceSpringImpTest.class);
	@Autowired
	DatabaseDao databaseDao;
	@Autowired
	SysUserService sysUserService;
	@Test
	public void doTest() {
		SysUserVo vo =sysUserService.findByUserCode("admin");
		Assert.assertEquals("admin", vo.getUserCode());
		System.out.println(ToStringBuilder.reflectionToString(vo)); 
	}
}
