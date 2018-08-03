 package ins.platform.sysuser.service.facade;

import java.util.Map;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SysUserVo;

/**
 * 
 * 用户登录服务接口<br>
 * 继承基础的CRUD方法后，这里只需要声明业务特定的方法即可
 * 
 */
@Rpc
public interface SysUserService extends BaseCrudService<SysUserVo, Long>{

	/**
	 * 根据用户名查询用户
	 * 
	 * @param userCode
	 *            用户名
	 * @return 用户
	 */
	public SysUserVo findByUserCode(String userCode);

	/**
	 * 根据注册邮箱查询用户
	 * 
	 * @param email
	 *            注册邮箱
	 * @return 用户
	 */
	public SysUserVo findByEmail(String email);

	/**
	 * 根据用户userCode删除一个用户
	 * 
	 * @param userCode
	 *            userCode
	 */
	public void deleteByUserCode(String userCode);

	/**
	 * 根据userCode修改用户
	 * 
	 * @param userCode
	 *            userCode
	 * @param sysUser
	 *            sysUser
	 */
	public void updateByUserCode(String userCode, SysUserVo sysUser);

	/**
	 * 保存对象.<br>
	 * 例如：以下代码将对象保存到数据库中
	 * 
	 * <pre>
	 * 		&lt;code&gt;
	 * User entity = service.get(1);
	 * entity.setName(&quot;zzz&quot;);
	 * // 更新对象
	 * service.save(entity);
	 * &lt;/code&gt;
	 * </pre>
	 * 
	 * @param obj
	 *            待保存对象
	 * @return 
	 */
	public Long save(SysUserVo obj);

	/**
	 * 根据用户ID修改用户
	 * 
	 * @param id
	 *            id
	 * @param sysUser
	 *            sysUser
	 */
	public void updateById(Long id, SysUserVo sysUser);
	
	/**
	 * @param id
	 * @param sysUser
	 * 通过id查找用户并修改，但不修改密码；
	 */
	public void updateByIdNoPassword(Long id, SysUserVo sysUser);
	

	/**
	 * 根据主键获取对象. 例如：以下代码获取id=2的记录
	 * 
	 * <pre>
	 * 		&lt;code&gt;
	 * User user = service.findByPK(2);
	 * &lt;/code&gt;
	 * </pre>
	 * 
	 * @param id
	 *            PK
	 * @return 匹配的对象
	 */
	/*public SysUserVo findByPK(Long id);*/

	/**
	 * 根据主键删除记录. 例如：以下代码删除id=1的数据
	 * 
	 * <pre>
	 * 		&lt;code&gt;
	 * service.removeByPK(1);
	 * &lt;/code&gt;
	 * </pre>
	 * 
	 * @param id
	 *            主键类
	 */
	public void deleteByPK(Long id);

	public String findForDataTables(Map<String, String[]> paramMap);

	// public void update(SysUserVo sysUser);
}
