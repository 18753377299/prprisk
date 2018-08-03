//import ins.framework.common.ResultPage;
//import ins.framework.web.support.ObjectToMapCallback;
//import ins.platform.common.web.util.DataTableResponseUtils;
//import ins.platform.schema.SysUser;
//
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//import java.util.Random;
//
//public class JsonTest {
//	public static void main(String[] args) {
//		SysUser sysUser = new SysUser();
//		String userCode = "tester" + new Random().nextInt();
//		String userName = "测试员工" + new Random().nextInt();
//		String password = "password" + new Random().nextInt();
//		sysUser.setUserCode(userCode);
//		sysUser.setPassword(password);
//		sysUser.setValidStatus("1");
////		sysUser.setNewUserCode(sysUser.getUserCode());
//		sysUser.setUserName(userName);
//		sysUser.setPasswordSetDate(new Date());
//		sysUser.setPasswordExpireDate(new Date());
////		sysUser.setArticleCode("000000");
//		sysUser.setEmail("zhouxianli@gmail.com");
////		sysUser.setPhone("1860123456");
//		 
//		List<SysUser> list = new ArrayList<SysUser>();
//		list.add(sysUser);
//
//		String result = DataTableResponseUtils.toDataTableJson(new ResultPage<SysUser>(
//				0, list.size(), list.size(), list), new ObjectToMapCallback() {
//			public Map<String, Object> toMap(Object object) {
//				SysUser sysUser = (SysUser) object;
//				Map<String, Object> dataMap = new HashMap<String, Object>(); 
//				return dataMap;
//			}
//		}, "userCode", "userName");
//		System.out.println(result);
//		result = DataTableResponseUtils.toDataTableJson(
//				new ResultPage<SysUser>(0, list.size(), list.size(), list),
//				new ObjectToMapCallback() {
//					public Map<String, Object> toMap(Object object) {
//						SysUser sysUser = (SysUser) object;
//						Map<String, Object> dataMap = new HashMap<String, Object>();
//						 
//						return dataMap;
//					}
//				}, "userCode", "userName");
//		System.out.println(result);
//		result = DataTableResponseUtils.toDataTableJson(
//				new ResultPage<SysUser>(0, list.size(), list.size(), list),
//				 "userCode",
//				"userName");
//		System.out.println(result);
//	}
//}
