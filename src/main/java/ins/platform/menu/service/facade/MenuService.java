package ins.platform.menu.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.menu.vo.MenuConfigVo;
import ins.platform.vo.SmcMenuVo;
@Rpc
public interface MenuService extends BaseCrudService<SmcMenuVo, Long> {

	/**
	 * 获取系统菜单内容
	 * 
	 * @param systemCode
	 *            systemCode
	 * @param userCode
	 *            userCode
	 * @param ctx
	 *            ctx
	 */
	public List<SmcMenuVo> findSystemMenu(String systemCode, String userCode, String ctx);

	/**
	 * 获取所有一级菜单(配置用，含无效菜单)
	 * 
	 * @param systemCode
	 *            系统代码
	 * @return 所有一级菜单(配置用，含无效菜单)
	 */
	public List<SmcMenuVo> findTopMenuForConfig(String systemCode);

	/**
	 * 获取子菜单(配置用，含无效菜单)
	 * 
	 * @param systemCode
	 *            系统代码
	 * @param upperId
	 *            上级菜单ID
	 * @return 子菜单
	 */
	public List<SmcMenuVo> findSubMenuForConfig(String systemCode, Long upperId);

	/**
	 * 
	 * 更新菜单层级关系（用于拖拽更新菜单）
	 * 
	 * 
	 * @param menuConfigVo
	 *            menuConfigVo
	 */
	public void updateMenuForDrop(MenuConfigVo menuConfigVo);

	/**
	 * 重置系统菜单displayNo
	 * 
	 * @param systemCode
	 *            systemCode
	 */
	public void resetDisplayNo(String systemCode);

	/**
	 * 获取系统菜单(配置用，含无效菜单)
	 * 
	 * @param systemCode
	 *            系统代码
	 * @return 该系统所有的菜单项
	 */
	public List<SmcMenuVo> findSystemMenuForConfig(String systemCode);

	public boolean hasSubMenu(SmcMenuVo smcMenu, List<SmcMenuVo> menuList);

	public void delete(Long id);

	public String findMaxId(String systemCode);
	
	public String findMenuPath(Long menuId,String breadcrumb);
	
	public String findMenuTitle(Long menuId,String title);
}
