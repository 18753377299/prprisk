//import ins.platform.sysuser.service.facade.SysUserService;
//
//import org.springframework.remoting.httpinvoker.HttpInvokerProxyFactoryBean;
//
//public class RpcTest {
//	public static void main(String[] args) {
//		HttpInvokerProxyFactoryBean httpInvoker = new HttpInvokerProxyFactoryBean();
//		httpInvoker.setServiceInterface(SysUserService.class);
//		httpInvoker
//				.setServiceUrl("http://localhost:8091/rpc/sysUserServiceExporter");
//		SysUserService sysUserService = (SysUserService) httpInvoker.getObject();
//		System.out.println(sysUserService.findByUserCode("admin"));
//	}
//}
