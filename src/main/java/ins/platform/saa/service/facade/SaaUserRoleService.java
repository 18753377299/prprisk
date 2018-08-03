package ins.platform.saa.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.schema.SaaUserRole;
import ins.platform.saa.vo.SaaUserRoleVo;
import ins.platform.vo.SysUserVo;
@Rpc
public interface SaaUserRoleService extends BaseCrudService<SaaUserRoleVo, String> {

	/**
	 * 查找用户权限
	 * 
	 * @param userCode
	 *            userCode
	 * @return 用户权限
	 */
	public List<String> findUserRoles(String userCode);

	public List<SaaUserRoleVo> findUserRoleList(String userCode);
	
	public SaaUserRole findUserRolesById(Long id);
	
	public void deleteUserById(Long id);
	/**
	 * 更新用户角色
	 * @param user
	 * @param userRoles
	 */
	public void updateUserRolesByUserCode(SysUserVo user,SaaUserRoleVo saaUserRole,String[] roleCodeArray);
}
