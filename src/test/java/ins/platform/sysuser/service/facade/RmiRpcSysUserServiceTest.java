//package ins.platform.sysuser.service.facade;
//
//import ins.platform.vo.SysUserVo;
//
//import java.net.MalformedURLException;
//
//import org.springframework.remoting.rmi.RmiProxyFactoryBean;
//
//public class RmiRpcSysUserServiceTest {
//
//	public static void main(String args[]) throws MalformedURLException {
//
//		String serverName = "rpc/rmi/".concat(SysUserService.class.getCanonicalName().replace(".", "/"));
//		String serviceUrl = "rmi://localhost:1099/".concat(serverName);
//		// 客户端的RMI协议接收工厂类（其它协议工厂类请参考：http://wiki.jsptz.com/wiki/Wiki.jsp?page=Arch5Rpc的相关表格）
//		RmiProxyFactoryBean rmiProxyFactoryBean = new RmiProxyFactoryBean();
//		rmiProxyFactoryBean.setServiceInterface(SysUserService.class);
//		rmiProxyFactoryBean.setServiceUrl(serviceUrl);
//		rmiProxyFactoryBean.afterPropertiesSet();
//		// 获取代理服务
//		SysUserService sysUserService = (SysUserService) rmiProxyFactoryBean.getObject();
//
//		long start = System.currentTimeMillis();
//
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
