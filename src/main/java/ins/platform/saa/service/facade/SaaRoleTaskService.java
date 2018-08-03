package ins.platform.saa.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.vo.SaaRoleTaskVo;
@Rpc
public interface SaaRoleTaskService extends BaseCrudService<SaaRoleTaskVo, String> {

	/**
	 * 查找所有角色任务
	 * 
	 * @return 所有角色任务
	 */
	public List<SaaRoleTaskVo> findAllSaaRoleTask();

	/**
	 * 判断用户是否有传入url权限
	 * 
	 * @param userCode
	 *            userCode
	 * @param url
	 *            url
	 * @return 有权返回true，否则返回false
	 */
	public boolean hasUrlPower(String userCode, String url);
}
