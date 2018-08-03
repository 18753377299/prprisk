//package rpc;
//
//import ins.platform.sysuser.service.facade.SysUserService;
//import ins.platform.vo.SysUserVo;
//
//import java.net.MalformedURLException;
//
//import com.caucho.hessian.client.HessianProxyFactory;
//
//public class HessionRpcSysUserServiceTest {
//
//	public static void main(String args[]) throws MalformedURLException {
//		String url = "http://localhost:8091/platform-app/rpc/hessian/ins/platform/sysuser/service/facade/SysUserService";
//
//		HessianProxyFactory factory = new HessianProxyFactory();
//		factory.setUser("admin");
//		factory.setPassword("sinosoft");
//		long start = System.currentTimeMillis();
//		SysUserService sysUserService = (SysUserService) factory.create(
//				SysUserService.class, url);
//		System.out.println("Create service use "
//				+ (System.currentTimeMillis() - start) + "ms");
//
//		SysUserVo sysUser = null;
//		System.out.println("Call service method findByPK use "
//				+ (System.currentTimeMillis() - start) + "ms");
//		start = System.currentTimeMillis();
//		for (int i = 0; i < 10; i++) {
//			start = System.currentTimeMillis();
//			sysUser = sysUserService.findByUserCode("admin");
//			System.out.println("Loop " + (i + 1)
//					+ ": call service method findByPK use "
//					+ (System.currentTimeMillis() - start) + "ms");
//		}
//		System.out.println("admin==" + sysUser.getUserName());
//
//	}
//
//}
