package rpc;

import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
/*@ContextConfiguration(locations = { "classpath:test/spring/components/applicationContext-rpc.xml" })*/
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class SpringRpcSysUserServiceTest {

	@Autowired
	private SysUserService sysUserService;

	@Test
	public void testSay() {
		/*long start = System.currentTimeMillis();
		SysUserVo sysUser = null;
		System.out.println("Call service method findByPK use "
				+ (System.currentTimeMillis() - start) + "ms");
		start = System.currentTimeMillis();
		for (int i = 0; i < 10; i++) {
			start = System.currentTimeMillis();
			sysUser = sysUserService.findByUserCode("admin");
			System.out.println("Loop " + (i + 1)
					+ ": call service method findByPK use "
					+ (System.currentTimeMillis() - start) + "ms");
		}
		System.out.println("admin==" + sysUser.getUserName());*/
	}
}
