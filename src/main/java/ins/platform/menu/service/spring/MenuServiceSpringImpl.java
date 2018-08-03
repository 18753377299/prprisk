package ins.platform.menu.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.cache.CacheManager;
import ins.framework.cache.CacheService;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.menu.service.facade.MenuService;
import ins.platform.menu.vo.MenuConfigVo;
import ins.platform.saa.service.facade.SaaRoleTaskService;
import ins.platform.schema.SmcMenu;
import ins.platform.vo.SmcMenuVo;

@Rpc
@Service(value = "menuService")
public class MenuServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SmcMenu, Long, SmcMenuVo, Long>
		implements MenuService {

	private static final CacheService cacheManager = CacheManager
			.getInstance("SmcMenu");
	@Autowired
	DatabaseDao databaseDao;

	@Autowired
	SaaRoleTaskService saaRoleTaskService;

	private List<SmcMenuVo> po2vo(List<SmcMenu> poList){
		List<SmcMenuVo> voList = new ArrayList<SmcMenuVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SmcMenu po = poList.get(i);
			SmcMenuVo vo = new SmcMenuVo();
			// 不是太明白？？？？
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	} 

	@Override
	public List<SmcMenuVo> findTopMenuForConfig(String systemCode) {
		String queryString = "select t from SmcMenu t where  id = upperId and systemCode = ? order by displayNo";
		List<SmcMenu> poList = databaseDao.findAllByHql(SmcMenu.class,
				queryString, systemCode);
		List<SmcMenuVo> voList = new ArrayList<SmcMenuVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SmcMenu po = poList.get(i);
			SmcMenuVo vo = new SmcMenuVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;

	}

	@Override
	public List<SmcMenuVo> findSubMenuForConfig(String systemCode,
			Long upperId) {
		String queryString = "select t from SmcMenu t where  id <> upperId and systemCode = ? and upperId = ? order by displayNo";
		List<SmcMenu> poList = databaseDao.findAllByHql(SmcMenu.class,
				queryString, systemCode, upperId);

		List<SmcMenuVo> voList = new ArrayList<SmcMenuVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SmcMenu po = poList.get(i);
			SmcMenuVo vo = new SmcMenuVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public void updateMenuForDrop(MenuConfigVo menuConfigVo) {
		SmcMenu smcMenu = databaseDao.findByPK(SmcMenu.class,
				menuConfigVo.getId());
		SmcMenu targetMenu = databaseDao.findByPK(SmcMenu.class, menuConfigVo.getTargetId());
		if ("inner".equals(menuConfigVo.getMoveType())) {// 成为目标菜单的子节点
			smcMenu.setUpperId(menuConfigVo.getTargetId());
			smcMenu.setDisplayNo(getMaxDisplayNo(smcMenu) + 1);
			smcMenu.setMenuLevel(targetMenu.getMenuLevel() + 1);
		} else if ("prev".equals(menuConfigVo.getMoveType())
				|| "next".equals(menuConfigVo.getMoveType())) {// 成为目标菜单的同级节点
			smcMenu.setUpperId(menuConfigVo.getTargetPId());
			smcMenu.setMenuLevel(targetMenu.getMenuLevel());
			smcMenu.setDisplayNo(this.getDisplayNo(menuConfigVo));
		} else if ("noTarget".equals(menuConfigVo.getMoveType())) {// 没有目标节点时为顶级菜单
			smcMenu.setUpperId(menuConfigVo.getpId());
			smcMenu.setMenuLevel(1);
		}
		databaseDao.update(SmcMenu.class, smcMenu);
		String key = cacheManager.generateCacheKey(smcMenu.getSystemCode());
		cacheManager.clearCache(key);
	}

	/**
	 * 同级节点拖拽获得displayNo
	 * 
	 * @param menuConfigVo
	 * @return
	 */
	private int getDisplayNo(MenuConfigVo menuConfigVo) {
		SmcMenu tarSmcMenu = databaseDao.findByPK(SmcMenu.class,
				menuConfigVo.getTargetId());
		String queryString = "";
		if ("prev".equals(menuConfigVo.getMoveType())) {
			queryString = "select t from SmcMenu t where upperId = ? and displayNo < ? order by displayNo desc";
		}
		if ("next".equals(menuConfigVo.getMoveType())) {
			queryString = "select t from SmcMenu t where upperId = ? and displayNo > ? order by displayNo";
		}
		List<SmcMenu> smcMenuList = databaseDao.findAllByHql(SmcMenu.class,
				queryString, menuConfigVo.getTargetPId(),
				tarSmcMenu.getDisplayNo());
		if (smcMenuList != null && smcMenuList.size() > 0) {
			SmcMenu smcMenu = smcMenuList.get(0);
			int newDisplayNo = (tarSmcMenu.getDisplayNo() + smcMenu
					.getDisplayNo()) / 2;
			return newDisplayNo;
		}
		return "prev".equals(menuConfigVo.getMoveType()) ? tarSmcMenu
				.getDisplayNo() - 1 : tarSmcMenu.getDisplayNo() + 1;
	}

	/**
	 * 获取子菜单最大的displayNo
	 * 
	 * @param smcMenu
	 * @return
	 */
	private int getMaxDisplayNo(SmcMenu smcMenu) {
		String queryString = "select t from SmcMenu t where upperId = ? order by displayNo desc";
		List<SmcMenu> smcMenuList = databaseDao.findAllByHql(SmcMenu.class,
				queryString, smcMenu.getUpperId());
		if (smcMenuList != null && smcMenuList.size() > 0) {
			return smcMenuList.get(0).getDisplayNo();
		}
		return 0;
	}

	@Override
	public void resetDisplayNo(String systemCode) {
		QueryRule queryRule = QueryRule.getInstance();
		List<SmcMenu> poList = databaseDao.findAll(SmcMenu.class, queryRule);
		int displayNo = 0;
		for (SmcMenu smcMenu : poList) {
			displayNo = displayNo + 1;
			smcMenu.setDisplayNo(displayNo);
			databaseDao.update(SmcMenu.class, smcMenu);
		}
	}

	/**
	 * 获取菜单目录
	 * 
	 * @param systemCode
	 *            系统编号 ctx 基本路径
	 * @return 菜单的字符串
	 */
	@Override
	public List<SmcMenuVo> findSystemMenu(String systemCode, String userCode,
			String ctx) {
		String key = cacheManager.generateCacheKey(systemCode,"findSystemMenu", userCode, ctx);
		System.out.println("cacheManager.containsKey(key)="
				+ cacheManager.containsKey(key));
		System.out.println("key:" + key);
		@SuppressWarnings("unchecked")
		List<SmcMenuVo> result = (List<SmcMenuVo>) cacheManager.getCache(key);
		if (result != null) {
			return result;
		}
		String queryString = "from SmcMenu t where t.systemCode = ? and t.validInd = ? order by menuLevel desc,displayNo asc";
		List<SmcMenuVo> allMenuList =po2vo(databaseDao.findAllByHql(SmcMenu.class,
				queryString, systemCode, "1"));
		List<SmcMenuVo> powerMenuList = this.findPowerMenu(userCode, allMenuList);
		List<SmcMenuVo> topMenuList = this.findTopMenu(powerMenuList);
		List<SmcMenuVo> retuList = new ArrayList<SmcMenuVo>();
		for (int i = 0; i < topMenuList.size(); i++) {
			SmcMenuVo smcMenu = topMenuList.get(i);
			retuList.add(smcMenu);
			Long id = smcMenu.getId();
			getSubMenu(powerMenuList,ctx,id,retuList);
		}
		cacheManager.putCache(key, retuList);
		return retuList;
	}

	/**
	 * 获取二、三以及更后面的菜单
	 * 
	 * @param pid
	 *            一级菜单编号 ctx 基本路径
	 * @return 菜单的字符串
	 */
	private String getSubMenu(List<SmcMenuVo> powerMenuList, String ctx,
			Long pid,List<SmcMenuVo> retuList) {
		List<SmcMenuVo> menuList = this.findSubMenu(powerMenuList, pid);
		StringBuffer buff = new StringBuffer();
		for (int i = 0; i < menuList.size(); i++) {
			SmcMenuVo smcMenu = menuList.get(i);
			retuList.add(smcMenu);
			Long sid = smcMenu.getId();
			if (hasSubMenu(smcMenu, powerMenuList)) {
				getSubMenu(powerMenuList,ctx,sid,retuList);
			} 
		}
		return buff.toString();
	}

	/**
	 * 查找有权限的菜单
	 * 
	 * @param userCode
	 * @param allMenuList
	 * @return
	 */
	private List<SmcMenuVo> findPowerMenu(String userCode,
			List<SmcMenuVo> allMenuList) {
		List<SmcMenuVo> menuList = new ArrayList<SmcMenuVo>();
		for (SmcMenuVo smcMenu : allMenuList) {
			//	如果没有子菜单
			if (!hasSubMenu(smcMenu, allMenuList)) {
				if (saaRoleTaskService.hasUrlPower(userCode,
						smcMenu.getActionURL())) {
					menuList.add(smcMenu);
				}
			} else {
				// 如果拥有子菜单
				if (hasSubMenu(smcMenu, menuList)) {
					menuList.add(smcMenu);
				}
			}
		}
		return menuList;
	}

	/**
	 * 判断是否有子菜单
	 * 
	 * @param smcMenu
	 * @param menuList
	 * @return
	 */
	@Override
	public boolean hasSubMenu(SmcMenuVo smcMenu, List<SmcMenuVo> menuList) {
		for (SmcMenuVo subMenu : menuList) {
			if (smcMenu.getId().equals(subMenu.getUpperId())) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 查询有权限的顶级菜单
	 * 
	 * @param powerMenuList
	 * @return
	 */
	public List<SmcMenuVo> findTopMenu(List<SmcMenuVo> powerMenuList) {
		List<SmcMenuVo> topMenuList = new ArrayList<SmcMenuVo>();
		for (SmcMenuVo smcMenu : powerMenuList) {
			if (smcMenu.getId().equals(smcMenu.getUpperId())) {
				topMenuList.add(smcMenu);
			}
		}
		return topMenuList;
	}

	/**
	 * 获取有权限子菜单
	 * 
	 * @param powerMenuList
	 * @param sid
	 * @return
	 */ 
	private List<SmcMenuVo> findSubMenu(List<SmcMenuVo> powerMenuList, Long sid) {
		List<SmcMenuVo> subMenuList = new ArrayList<SmcMenuVo>();
		for (SmcMenuVo smcMenu : powerMenuList) {
			if (!sid.equals(smcMenu.getId())
					&& sid.equals(smcMenu.getUpperId())) {
				subMenuList.add(smcMenu);
			}
		}
		return subMenuList;
	}

	 

	public String processChild(List<SmcMenuVo> smcMenuList, Long upperId,
			String ctx) {
		StringBuffer buff = new StringBuffer();
		for (int i = 0; i < smcMenuList.size(); i++) {
			SmcMenuVo smcMenu = smcMenuList.get(i);
			Long id = smcMenu.getId();
//			String nodeName = smcMenu.getMenuCName().trim();

			if (!id.equals(upperId) && (smcMenu.getUpperId()).equals(upperId)) {

				// 二级菜单 (没有后台链接方法)
				if (smcMenu.getActionURL() == null
						|| "".equals(smcMenu.getActionURL().trim())) {
					buff.append("<li><a href=\"#\">");
//					buff.append("<i class=\"fa fa-sitemap fa-fw\"></i>"
//							+ smcMenu.getMenuCName());
					buff.append("<i class=\"fa fa-sitemap fa-fw\"></i>");
					buff.append(smcMenu.getMenuCName());
					buff.append("<span class=\"fa arrow\"></span></a>");
					// 判断是否有三级菜单 拼接ul
					buff.append("<ul class=\"nav nav-third-level\">");
					buff.append(processChild(smcMenuList, smcMenu.getId(), ctx));
					buff.append("</ul>");
					buff.append("</li>");

				}
				// 三级菜单（有后台链接方法）
				else {
					// 三级菜单
					buff.append("<li><a href='/" + ctx + smcMenu.getActionURL()
							+ "'>" + smcMenu.getMenuCName() + "</a></li>");
				}
			}
		}
		return buff.toString();
	}
	
	@Override
	public List<SmcMenuVo> findSystemMenuForConfig(String systemCode) {
		String key = cacheManager.generateCacheKey(systemCode,"findSystemMenuForConfig");
		System.out.println("cacheManager.containsKey(key)="
				+ cacheManager.containsKey(key));
		System.out.println("key:" + key);
		@SuppressWarnings("unchecked")
		List<SmcMenuVo> result = (List<SmcMenuVo>) cacheManager.getCache(key);
		if (result != null) {
			return result;
		}
		String queryString = "select t from SmcMenu t where systemCode = ? order by displayNo desc";
		List<SmcMenu> poList = databaseDao.findAllByHql(SmcMenu.class,
				queryString, systemCode);
		List<SmcMenuVo> voList = new ArrayList<SmcMenuVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SmcMenu po = poList.get(i);
			SmcMenuVo vo = new SmcMenuVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		cacheManager.putCache(key, voList);
		return voList;
	}
	
	@Override
	public void delete(Long id){
		String queryString = "from SmcMenu where systemCode = ? and upperId = ? and id <> ?";
		SmcMenu smcMenuPo = databaseDao.findByPK(SmcMenu.class, id);
		List<SmcMenu> poList = databaseDao.findAllByHql(SmcMenu.class,queryString,smcMenuPo.getSystemCode(),id,id);
		List<SmcMenuVo> voList = new ArrayList<SmcMenuVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SmcMenu po = poList.get(i);
			SmcMenuVo vo = new SmcMenuVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		if(voList.size() != 0){
			for(SmcMenuVo smcMenu : voList){
				if(!this.hasSubMenu(smcMenu, this.findSystemMenuForConfig(smcMenu.getSystemCode()))){
					databaseDao.deleteByPK(SmcMenu.class, smcMenu.getId());
					continue;
				}
				delete(smcMenu.getId());
			}
		}
		databaseDao.deleteByPK(SmcMenu.class, id);
		String key = cacheManager.generateCacheKey(smcMenuPo.getSystemCode());
		cacheManager.clearCache(key);
	}
	
	@Override
	public String findMaxId(String systemCode){
//		String queryString = "select max(id) from smc_menu where system_code = ?";
//		List<Object[]> list = databaseDao.findAllBySql(queryString, systemCode);
//		return (String)(list.get(0)[0]);
		String queryString = "from SmcMenu where systemCode = ?";
		List<SmcMenu> list = databaseDao.findAllByHql(SmcMenu.class,queryString, systemCode);
		String max = "1";
		for(SmcMenu po : list){
			max = this.max(po.getId(),max);
		}
		return max;
	}
	
	private String max(Long x,String y){
		int max =  Math.max((Integer.parseInt(x.toString())), (Integer.parseInt(y)));
//		return  Integer.valueOf(max).toString();
//				new Integer.(max).toString();
		return  Integer.toString(max);
		            
	}
	
	@Override
	public Long save(SmcMenuVo vo){
		Long id = super.save(vo);
		String key = cacheManager.generateCacheKey(vo.getSystemCode());
		cacheManager.clearCache(key);
		return id;
	}
	
	@Override
	public void update(SmcMenuVo vo){
		super.update(vo);
		String key = cacheManager.generateCacheKey(vo.getSystemCode());
		cacheManager.clearCache(key);
	}

	@Override
	public String findMenuPath(Long menuId,String breadcrumb) {
		SmcMenu menu = databaseDao.findByPK(SmcMenu.class,menuId);
		StringBuffer str = new StringBuffer("");
		str.append("<li><i class='fa fa-table'></i>&nbsp;");
		str.append(menu.getMenuCName());
		str.append("</li>");
		str.append(breadcrumb);
		if(!menu.getId().equals(menu.getUpperId())){
			breadcrumb=findMenuPath(menu.getUpperId(),str.toString());
		}
		else{
			return str.toString();
		}
		return breadcrumb;
	}
	@Override
	public String findMenuTitle(Long menuId,String title) {
		SmcMenu menu = databaseDao.findByPK(SmcMenu.class,menuId);
		StringBuffer str = new StringBuffer("");
		str.append(menu.getMenuCName());
		str.append('|');
		str.append(title);
		if(!menu.getId().equals(menu.getUpperId())){
			title=findMenuTitle(menu.getUpperId(),str.toString());
		}
		else{
			return str.toString();
		}
		return title;
	}
	
}
