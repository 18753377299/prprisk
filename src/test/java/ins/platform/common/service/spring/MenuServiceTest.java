//package ins.platform.common.service.spring;
//
//import ins.framework.dao.database.DatabaseDao;
//import ins.platform.menu.service.facade.MenuService;
//import ins.platform.schema.SmcMenu;
//import ins.platform.vo.SmcMenuVo;
//
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
//import org.junit.After;
//import org.junit.Assert;
//import org.junit.Before;
//import org.junit.BeforeClass;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "/test/spring/*.xml" })
//public class MenuServiceTest {
//	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
//	@Autowired
//	private MenuService menuService;
// 
//
//	@BeforeClass
//	// 设置全局静态变量，只调用一次
//	public static void beforeClass() {
//		System.out.println("====beforeClass====");
//	}
//
//	@Before
//	// 初始化方法，每个测试方法前都会调用一次
//	public void before() {
//
//		System.out.println("====before====");
//	}
//
//	@After
//	// 销毁方法，每个测试方法后都会调用一次
//	public void after() {
//		System.out.println("====after====");
//	}
//
//	private SmcMenuVo generateSmcMenu() throws ParseException {
//		SmcMenuVo smcMenu = new SmcMenuVo(); // 建立对象
//
//		Integer id = 45; // 几个不能为空的表项
//		Integer upperId = 105;
//		Integer menuLevel = 3;
//		Double displayNo = 2.0;
//		String validInd = "1";
//		Integer version = 1;
//		Date insertTimeForHis = df.parse(df.format(new Date()));
//		System.out.println("时间： " + insertTimeForHis);
//		String menuCName = "日常功能呢45"; // 可以为空
//
//		smcMenu.setId(id);
//		smcMenu.setUpperId(upperId);
//		smcMenu.setMenuLevel(menuLevel);
//		smcMenu.setDisplayNo(displayNo);
//		smcMenu.setValidInd(validInd);
//		smcMenu.setVersion(version);
//		smcMenu.setInsertTimeForHis(insertTimeForHis);
//		smcMenu.setMenuCName(menuCName);
//
//		return smcMenu;
//
//	}
//
//	@Test
//	public void testCRUD() throws ParseException {
//		// 构建原始对象
//		SmcMenuVo smcMenu = generateSmcMenu();
//		Integer id = smcMenu.getId(); // get值
//		Integer upperId = smcMenu.getUpperId();
//		Integer menuLevel = smcMenu.getMenuLevel();
//		Double displayNo = smcMenu.getDisplayNo();
//		String validInd = smcMenu.getValidInd();
//		Integer version = smcMenu.getVersion();
//		Date insertTimeForHis = smcMenu.getInsertTimeForHis();
//		String menuCName = smcMenu.getMenuCName();
//		System.out.println("Name is " + smcMenu.getMenuCName());
//
//		// 确认对象不存在
//		SmcMenuVo smcMenuResult = menuService.findByPK(id);
//		// Assert.assertNull(smcMenuResult);
//
//		// 新增
//		menuService.save(smcMenu);
//		// 确认该对象已保存
//		smcMenuResult = menuService.findByPK(id);
//		Assert.assertEquals(menuCName, smcMenuResult.getMenuCName());
//
//		// ********************************
//		// 变更对象属性
//
//		smcMenu = generateSmcMenu();
//		smcMenu.setId(id);
//		smcMenu.setUpdaterCode(smcMenu.getMenuCName());
//		smcMenu.setMenuCName(menuCName + "Updater");
//		// 修改对象
//		menuService.update(  smcMenu);
//		// 确认该对象已保存
//		// smcMenuResult = menuService.findByPK(id);
//		Assert.assertEquals(smcMenu.getMenuCName(),
//				smcMenuResult.getMenuCName());
//		System.out.println(" 确认该对象已保存 ");
//		// ********************************
//
//		// 删除对象
//		System.out.println("+++++++++++++++++++++");
//		menuService.deleteByPK(47);
//		System.out.println("删掉了————menuService.deleteByPK(47)");
//
//		// 确认该对象已删除
//		// smcMenuResult = menuService.findByPK(id);
//		Assert.assertNull(smcMenuResult);
//	}
//
//	@Test
//	public void findMenuName() {
//		// String comCode = "921";
//		// String result = companyService.findUpperComCodeByComCode(comCode);
//		// Assert.assertEquals("92", result);
//		Integer id = 46;
//		SmcMenuVo result = menuService.findByPK(id);
//		Assert.assertEquals(46, result);
//	}
//
//	// public void testFindAll() {
//	// List<PrpDcompany> result = menuService.;
//	// Assert.assertTrue(result.size() > 0);
//	// }
//
//	// @Test //change password
//	// public void test
//
//	// @Test
//	// public void testFindMenuCNameById() {
//	// String menuCName = menuService.findByPK("0000");
//	// System.out.println("Menu Name Is " + menuCName);
//	// Assert.assertEquals("xxxxxxx", menuCName);
//	// }
//
//	@Test
//	public void testInvalidMenu() {
//
//	}
//
//	// @Test
//	// public void generateData() {
//	// for (int i = 0; i < 1000; i++) {
//	// // 构建原始对象
//	// PrpDuser prpDuser = generatePrpDuser();
//	// String userCode = prpDuser.getUserCode();
//	// String userName = prpDuser.getUserName();
//	//
//	// // 确认该对象不存在
//	// PrpDuser prpDuserResult = userService.findByPK(userCode);
//	// Assert.assertNull(prpDuserResult);
//	//
//	// // 新增
//	// userService.save(prpDuser);
//	// }
//	//
//	// }
//
//	// @Test
//	// public void testUpdate() {
//	// PrpDuser prpDuser = generatePrpDuser();
//	// prpDuser.setUserCode("huxiaoyu");
//	// prpDuser.setEmailAddress("admin@jsptz.com");
//	// userService.update(prpDuser);
//	// // Assert.assertEquals("管理员", prpDuser.getUserName());
//	// }
//	/**
//	 * @Test public void testFind() { Finder finder = Finder.newInstance();
//	 *       PrpDuser warp = finder.from(PrpDuser.class);
//	 *       finder.where().get(warp.getUserCode()).equal("admin");
//	 *       List<PrpDuser> result = userService.find(finder, 1, 1);
//	 *       Assert.assertEquals("管理员", result.iterator().next().getUserName());
//	 *       }
//	 * @Test public void testdeleteByPK() { PrpDuser prpDuserTemplate =
//	 *       userService.findByPK("admin"); Assert.assertEquals("管理员",
//	 *       prpDuserTemplate.getUserName());
//	 * 
//	 *       PrpDuser prpDuser = new PrpDuser(); copier.copy(prpDuserTemplate,
//	 *       prpDuser, null);
//	 * 
//	 *       prpDuser.setUserCode(USERCODE); prpDuser.setNewUserCode(USERCODE);
//	 *       prpDuser.setUserName(USERNAME); userService.add(prpDuser);
//	 * 
//	 *       PrpDuser prpDuserResult = userService.findByPK(USERCODE);
//	 *       Assert.assertEquals(USERNAME, prpDuserResult.getUserName()); }
//	 */
//	@Test
//	public void testFindSystemMenuContent() {
//		SmcMenu menuVo = new SmcMenu();
//		Integer id = menuVo.getId();
//		Integer upperId = menuVo.getUpperId();
//		String result = menuService.findSystemMenuContent("platform","admin", "ctx");
//		System.out.println(result);
//	}
//}
