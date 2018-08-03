//package ins.platform.common.service.spring;
//
//import ins.framework.common.ResultPage;
//import ins.platform.oauth2.service.facade.OauthService;
//import ins.platform.schema.OauthClientDetails;
//
//import java.util.Date;
//import java.util.HashMap;
//import java.util.Map;
//import java.util.Random;
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
///**
// * 
// * UserService的单元测试类，不继承AbstractTransactionalJUnit4SpringContextTests（
// * 继承会带来事务自动回滚特性，有时无法反映真实情况）。 <br>
// * 本测试依赖00000000的机构和admin用户
// * 
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "/spring/applicationContext.xml",
//		"/spring/applicationContext-hibernate.xml",
//		"/spring/test/dataAccessContext-hibernate.xml" })
//public class OauthServiceTest {
//
//	@Autowired
//	private OauthService oauthService;
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
//	private OauthClientDetails generateOauthClientDetails() {
//		OauthClientDetails oauthClientDetails = new OauthClientDetails();
//		String clientId = "tester" + new Random().nextInt();
//		// String userName = "测试员工" + new Random().nextInt();
//		// String password = "password" + new Random().nextInt();
//		oauthClientDetails.setClientId("" + new Random().nextInt());
//		oauthClientDetails.setResourceIds("user-resource");
//		// oauthClientDetails.setAccessTokenValidity();
//		oauthClientDetails.setClientSecret("user");
//		oauthClientDetails.setCreateTime(new Date());
//		oauthClientDetails.setAuthorities("ROLE_USER");
//		// oauthClientDetails.setWebServerRedirectUri();
//		oauthClientDetails.setScope("read,write");
//		oauthClientDetails
//				.setAuthorizedGrantTypes("authorization_code,client_credentials");
//		oauthClientDetails.setArchived(true);
//		oauthClientDetails.setTrusted(true);
//		// oauthClientDetails.setAdditionalInformation();
//		return oauthClientDetails;
//	}
//
//	@Test
//	public void testCRUD() {
//		// 构建原始对象
//		OauthClientDetails oauthClientDetails = generateOauthClientDetails();
//		String clientId = oauthClientDetails.getClientId();
//		String clientSecret = oauthClientDetails.getClientSecret();
//		// 确认该对象不存在
//		OauthClientDetails oauthClientDetailsResult = oauthService
//				.findByPK(clientId);
//		Assert.assertNull(oauthClientDetailsResult);
//
//		// 新增
//		oauthService.save(oauthClientDetails);
//
//		// 确认该对象已保存
//		oauthClientDetailsResult = oauthService.findByPK(clientId);
//		Assert.assertEquals(clientSecret,
//				oauthClientDetailsResult.getClientSecret());
//
//		// 变更对象属性
//		// oauthClientDetails = generateOauthClientDetails();
//		// oauthClientDetails.setClientId(clientId);
//		String newClientSecret = "new secret";
//		oauthClientDetails.setClientSecret(newClientSecret);
//		// 修改对象
//		oauthService.update(oauthClientDetails.getClientId(),
//				oauthClientDetails);
//		// 确认该对象已保存
//		oauthClientDetailsResult = oauthService.findByPK(clientId);
//		Assert.assertEquals(newClientSecret,
//				oauthClientDetailsResult.getClientSecret());
//		// 删除对象
//		oauthService.deleteByPK(clientId);
//		// 确认该对象已删除
//		oauthClientDetailsResult = oauthService.findByPK(clientId);
//		Assert.assertNull(oauthClientDetailsResult);
//
//	}
//
//	@Test
//	public void testFindByPK() {
//		OauthClientDetails oauthClientDetails = oauthService
//				.findByPK("user-client");
//		Assert.assertEquals("user", oauthClientDetails.getClientSecret());
//	}
//
//	@Test
//	public void testFindForPage() {
//		Map<String, String[]> paramMap = new HashMap<String, String[]>();
//
//		paramMap.put("[form][userCode][value]", new String[] { "" });
//		paramMap.put("[form][userCode][dataType]", new String[] { "String" });
//		paramMap.put("[form][userCode][queryType]",
//				new String[] { "begin with" });
//		paramMap.put("[form][userName][value]", new String[] { "" });
//		paramMap.put("[form][userName][dataType]", new String[] { "String" });
//		paramMap.put("[form][userName][queryType]",
//				new String[] { "begin with" });
//		paramMap.put("[form][validStatus][value]", new String[] { "" });
//		paramMap.put("[form][validStatus][dataType]", new String[] { "String" });
//		paramMap.put("[form][validStatus][queryType]",
//				new String[] { "begin with" });
//		paramMap.put("draw", new String[] { "3" });
//		paramMap.put("columns[0][data]", new String[] { "" });
//		paramMap.put("columns[0][name]", new String[] { "" });
//		paramMap.put("columns[0][searchable]", new String[] { "false" });
//		paramMap.put("columns[0][orderable]", new String[] { "false" });
//		paramMap.put("columns[0][search][value]", new String[] { "" });
//		paramMap.put("columns[0][search][regex]", new String[] { "false" });
//		paramMap.put("columns[1][data]", new String[] { "" });
//		paramMap.put("columns[1][name]", new String[] { "" });
//		paramMap.put("columns[1][searchable]", new String[] { "false" });
//		paramMap.put("columns[1][orderable]", new String[] { "false" });
//		paramMap.put("columns[1][search][value]", new String[] { "" });
//		paramMap.put("columns[1][search][regex]", new String[] { "false" });
//		paramMap.put("columns[2][data]", new String[] { "userCode" });
//		paramMap.put("columns[2][name]", new String[] { "" });
//		paramMap.put("columns[2][searchable]", new String[] { "true" });
//		paramMap.put("columns[2][orderable]", new String[] { "true" });
//		paramMap.put("columns[2][search][value]", new String[] { "" });
//		paramMap.put("columns[2][search][regex]", new String[] { "false" });
//		paramMap.put("columns[3][data]", new String[] { "userName" });
//		paramMap.put("columns[3][name]", new String[] { "" });
//		paramMap.put("columns[3][searchable]", new String[] { "true" });
//		paramMap.put("columns[3][orderable]", new String[] { "true" });
//		paramMap.put("columns[3][search][value]", new String[] { "" });
//		paramMap.put("columns[3][search][regex]", new String[] { "false" });
//		paramMap.put("columns[4][data]",
//				new String[] { "prpDcompany.comCName" });
//		paramMap.put("columns[4][name]", new String[] { "" });
//		paramMap.put("columns[4][searchable]", new String[] { "true" });
//		paramMap.put("columns[4][orderable]", new String[] { "true" });
//		paramMap.put("columns[4][search][value]", new String[] { "" });
//		paramMap.put("columns[4][search][regex]", new String[] { "false" });
//		paramMap.put("columns[5][data]", new String[] { "prpDcompany.comCode" });
//		paramMap.put("columns[5][name]", new String[] { "" });
//		paramMap.put("columns[5][searchable]", new String[] { "true" });
//		paramMap.put("columns[5][orderable]", new String[] { "true" });
//		paramMap.put("columns[5][search][value]", new String[] { "" });
//		paramMap.put("columns[5][search][regex]", new String[] { "false" });
//		paramMap.put("columns[6][data]", new String[] { "" });
//		paramMap.put("columns[6][name]", new String[] { "" });
//		paramMap.put("columns[6][searchable]", new String[] { "false" });
//		paramMap.put("columns[6][orderable]", new String[] { "false" });
//		paramMap.put("columns[6][search][value]", new String[] { "" });
//		paramMap.put("columns[6][search][regex]", new String[] { "false" });
//		paramMap.put("order[0][column]", new String[] { "2" });
//		paramMap.put("order[0][dir]", new String[] { "asc" });
//		paramMap.put("order[1][column]", new String[] { "3" });
//		paramMap.put("order[1][dir]", new String[] { "asc" });
//		paramMap.put("order[2][column]", new String[] { "4" });
//		paramMap.put("order[2][dir]", new String[] { "desc" });
//		paramMap.put("start", new String[] { "0" });
//		paramMap.put("length", new String[] { "50" });
//		paramMap.put("search[value]", new String[] { "" });
//		paramMap.put("search[regex]", new String[] { "false" });
//		ResultPage<OauthClientDetails> result = oauthService
//				.findForPage(paramMap);
//		Assert.assertNotNull(result);
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
//}
