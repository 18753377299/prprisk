package ins.platform.menu.service.facade;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ins.framework.dao.database.DatabaseDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class MenuServiceTest {
	
	@Autowired
	DatabaseDao databaseDao;
	@Autowired
	MenuService menuService;

	@Test
	public void doTest() {
//		List<SmcMenuVo> list = menuService.findSystemMenuContent("platform", "admin", "platform");
//		for(SmcMenuVo vo : list){
//			System.out.println(vo.getId() + "," + vo.getUpperId() + "," + vo.getMenuCName());
//		}
	}
	
}
