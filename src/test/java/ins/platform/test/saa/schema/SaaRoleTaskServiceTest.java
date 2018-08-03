package ins.platform.test.saa.schema;

import java.util.Date;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ins.framework.utils.Uuids;
import ins.platform.saa.service.facade.SaaRoleService;
import ins.platform.saa.service.facade.SaaRoleTaskService;
import ins.platform.saa.service.facade.SaaTaskService;
import ins.platform.saa.vo.SaaRoleTaskVo;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaTaskVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class SaaRoleTaskServiceTest {
	
	@Autowired
	private SaaRoleTaskService saaRoleTaskService;
	@Autowired
	private SaaRoleService saaRoleService;
	@Autowired
	private SaaTaskService saaTaskService;

	@Test
	public void doTest() {
		/*SaaRoleVo saaRole = new SaaRoleVo();
		saaRole.setComCode("comCode");
		saaRole.setValidInd("1");
		saaRole.setCreateTime(new Date());
		saaRole.setFlag("1");
		saaRole.setRoleEName("eName");
		saaRole.setRoleTName("tName");
		saaRole.setRoleCName("roleCName");
		saaRole.setInsertTimeForHis(new Date());
		SaaTaskVo saaTask = new SaaTaskVo();
		saaTask.setTaskCode(Uuids.shortUuid());
		saaTask.setValidInd("1");
		saaTask.setFlag("1");
		saaTask.setCreateTime(new Date());
		saaTask.setUrl("url");
		saaTask.setTaskCName("taskCName");
		saaTask.setGroupName("groupName");
		saaTask.setInsertTimeForHis(new Date());
		SaaRoleTaskVo saaRoleTask = new SaaRoleTaskVo();
		saaRoleTask.setSaaRole(saaRole);
		saaRoleTask.setSaaTask(saaTask);
		saaRoleTask.setInsertTimeForHis(new Date());
		saaRoleService.save(saaRole);
		saaTaskService.save(saaTask);
		String str = saaRoleTaskService.save(saaRoleTask);
		Assert.assertNotNull(str);*/
	}
	
}
