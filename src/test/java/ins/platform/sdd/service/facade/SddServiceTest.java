package ins.platform.sdd.service.facade;

import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ins.framework.dao.database.DatabaseDao;
import ins.platform.schema.SysUser;
import ins.platform.vo.SddCodeVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class SddServiceTest{
	private static final Logger LOGGER = LoggerFactory.getLogger(SddServiceTest.class);
	@Autowired
	private SddService sddService;
	@Autowired
	DatabaseDao databaseDao;

	@Test
	public void doTest() {
		List<SysUser> users = databaseDao.findAllByHql(SysUser.class, "from SysUser");
		SddCodeVo vo = sddService.findAppConfCodeByCode("mail.sendFrom");
		Assert.assertEquals("jsptzsupport@126.com", vo.getValue());
	}
}
