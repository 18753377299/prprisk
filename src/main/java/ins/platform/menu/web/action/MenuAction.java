package ins.platform.menu.web.action;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.vo.TreeNodeVo;
import ins.platform.common.web.util.MenuShowUtils;
import ins.platform.menu.service.facade.MenuService;
import ins.platform.menu.vo.MenuConfigVo;
import ins.platform.sysapplication.service.facade.SysApplicationService;
import ins.platform.vo.SmcMenuVo;
import ins.platform.vo.SysApplicationVo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Stack;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

/**
 * 用户管理Action
 */
@Controller
@RequestMapping("/menu")
public class MenuAction extends BaseAjaxAction {
	/**
	 * 注入需要使用的Service
	 */
	@Autowired
	MenuService menuService;
	@Autowired
	SysApplicationService sysApplicationService;

	/**
	 * 进入查询页面
	 */
	@RequestMapping("/list")
	public ModelAndView list() {
		List<SysApplicationVo> vos = sysApplicationService.findAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("vos", vos);
		mav.setViewName("menu/MenuConfig");
		return mav;
	}

	@RequestMapping(value = "/systemMenu/{systemCode}/{ctx}")
	public ModelAndView viewSystemMenu(HttpServletRequest request,
			@PathVariable(value = "systemCode") String systemCode,
			@PathVariable(value = "ctx") String ctx) {
		String userCode = "admin";// request.getRemoteUser();
		/************************* 以下为使用权限时所加（需要将上面的menu注释掉） ******************/
		// session中获取当前用户
		// Session session = SecurityUtils.getSubject().getSession();
		// String userCode = (String) session.getAttribute("userCode");
		// //根据用户查找其权限范围内的菜单列表
		// list = menuService.findSystemMenu(userCode, systemCode);
		// // 遍历用户菜单列表，生成前端显示的菜单列表JSP页面
		// String menu = menuService.findSmcMenuLables(list, ctx);
		/*******************************************************************************/
		// 获取菜单目录
		List<SmcMenuVo> menuVos = menuService.findSystemMenu(systemCode,
				userCode, ctx);
		StringBuffer buff = new StringBuffer();
		Stack<SmcMenuVo> stack = new Stack<SmcMenuVo>();
		Cookie[] cookies = request.getCookies();
		String cookieVal = "";
		List<SmcMenuVo> activeMenus = new ArrayList<SmcMenuVo>();
		SmcMenuVo activeMenu = null;
		// 获取cookie
		for (Cookie cookie : cookies) {
			if ("menu_cookie".equals(cookie.getName())) {
				cookieVal = cookie.getValue();
			}
		}
		// 获取被点击的菜单项
		for (SmcMenuVo smcMenu : menuVos) {
			if (cookieVal.equals(smcMenu.getId().toString())) {
				activeMenu = smcMenu;
				activeMenus.add(smcMenu);
			}
		}
		// 获取被点击的菜单项的所有父类
		if (activeMenu != null) {
			while (!activeMenu.getId().equals(activeMenu.getUpperId())) {
				for (SmcMenuVo smcMenu : menuVos) {
					if (smcMenu.getId().equals(activeMenu.getUpperId())) {
						activeMenus.add(smcMenu);
						activeMenu = smcMenu;
						break;
					}
				}
			}
		}
		// 拼菜单，menuVos是按照菜单的输出顺序排序的
		for (int i = 0; i < menuVos.size(); i++) {
			SmcMenuVo smcMenu = menuVos.get(i);
			// 最后一个菜单项
			if (i == menuVos.size() - 1) {
				MenuShowUtils.all(smcMenu, buff, ctx, activeMenus, menuService);
				while (!stack.isEmpty()) {
					MenuShowUtils.after(stack.pop(), buff);
				}
				// 该菜单项下面有子菜单项
			} else if (smcMenu.getId().equals(menuVos.get(i + 1).getUpperId())) {
				MenuShowUtils.before(smcMenu, buff, activeMenus);
				stack.push(smcMenu);
				// 该菜单项是最后一级菜单项
			} else if (smcMenu.getUpperId().equals(
					menuVos.get(i + 1).getUpperId())) {
				MenuShowUtils.all(smcMenu, buff, ctx, activeMenus, menuService);
				// 该菜单项是某一父菜单项的最后一个菜单项
			} else {
				MenuShowUtils.all(smcMenu, buff, ctx, activeMenus, menuService);
				while (!stack.isEmpty()
						&& menuVos.get(i + 1).getMenuLevel() <= stack.peek()
								.getMenuLevel()) {
					MenuShowUtils.after(stack.pop(), buff);
				}
			}
		}

		String menu = buff.toString();

		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", menu);
		mav.setViewName("menu/ShowMenu");
		return mav;

	}

	@RequestMapping(value = "/show/{systemCode}", produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public String getMenu(MenuConfigVo menuConfigVo,
			@PathVariable(value = "systemCode") String systemCode) {
		List<SmcMenuVo> list;
		if (menuConfigVo.getId() == null) {
			list = menuService.findTopMenuForConfig(systemCode);
		} else {
			list = menuService.findSubMenuForConfig(systemCode,
					menuConfigVo.getId());
		}
		List<MenuConfigVo> voList = new ArrayList<MenuConfigVo>();
		for (SmcMenuVo smcMenu : list) {
			MenuConfigVo menuConfigVoNew = new MenuConfigVo();
			menuConfigVoNew.setId(smcMenu.getId());
			menuConfigVoNew.setpId(smcMenu.getUpperId());
			menuConfigVoNew.setName(smcMenu.getMenuCName());
			menuConfigVoNew.setMenuLevel(smcMenu.getMenuLevel());
			menuConfigVoNew.setActionUrl(smcMenu.getActionURL());
			menuConfigVoNew.setIsParent("true");
			voList.add(menuConfigVoNew);
		}
		return JSON.toJSONString(voList);
	}

	@RequestMapping(value = "/update", produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public AjaxResult update(MenuConfigVo menu) {
		menuService.updateMenuForDrop(menu);
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * 进入编辑页面<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 */
	@RequestMapping(value = "/edit")
	@ResponseBody
	public AjaxResult edit(String id) {
		// 1.参数校验
		SmcMenuVo smcMenu = menuService.findByPK(Long.parseLong(id));
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setData(smcMenu);
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * 重置某个系统菜单的displayNo
	 */
	@RequestMapping(value = "/resetDisplayNo/{systemCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult resetDisplayNo(
			@PathVariable(value = "systemCode") String systemCode) {
		// 1.参数校验
		Assert.notNull(systemCode, "systemCode不能为空");
		// 2.组织业务数据（包括处理主子表关系）

		// 3.一次交易处理保存操作（查询可多次
		menuService.resetDisplayNo(systemCode);

		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			HttpServletRequest request,
			@ModelAttribute("smcMenu") @Valid SmcMenuVo smcMenu,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		Assert.notNull(smcMenu.getUpperId(), "upperId不能为空");

		// 2.组织业务数据（包括处理主子表关系）

		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			menuService.save(smcMenu);
		} else {
			menuService.update(smcMenu);
		}
		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(smcMenu.getId().toString());
		return ajaxResult;

	}

	@RequestMapping(value = "/setTreeNode")
	@ResponseBody
	public AjaxResult setTreeNode(String systemCode) {
		List<SmcMenuVo> smcMenus = menuService
				.findSystemMenuForConfig(systemCode);
		List<TreeNodeVo> treeNodes = new ArrayList<TreeNodeVo>();
		for (int i = 0; i < smcMenus.size(); i++) {
			TreeNodeVo treeNodeVo = new TreeNodeVo();
			treeNodeVo.setId(smcMenus.get(i).getId());
			treeNodeVo.setpId(smcMenus.get(i).getUpperId());
			treeNodeVo.setName(smcMenus.get(i).getMenuCName());
			treeNodeVo.setLevel(smcMenus.get(i).getMenuLevel());
			if (menuService.hasSubMenu(smcMenus.get(i), smcMenus)) {
				treeNodeVo.setIsParent(true);
				treeNodeVo.setIconOpen("../img/menu/1_open.png");
				treeNodeVo.setIconClose("../img/menu/1_close.png");
			} else {
				treeNodeVo.setIsParent(false);
				treeNodeVo.setIcon("../img/menu/2.png");
			}
			if (smcMenus.get(i).getMenuLevel() == 1) {
				treeNodeVo.setOpen(true);
			}
			treeNodes.add(treeNodeVo);
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setData(treeNodes);
		return ajaxResult;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public AjaxResult delete(HttpServletRequest request, String id,
			String systemCode) {

		menuService.delete(Long.parseLong(id));
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	@RequestMapping(value = "/add")
	@ResponseBody
	public AjaxResult add(HttpServletRequest request, String id, Integer level,
			String name, String systemCode) {
		SmcMenuVo vo = new SmcMenuVo();
		String maxId = menuService.findMaxId(systemCode);
		Integer nextId = Integer.parseInt(maxId) + 1;
		vo.setId(Long.parseLong(nextId.toString()));
		vo.setInsertTimeForHis(new Date());
		vo.setUpperId(Long.parseLong(id));
		vo.setMenuLevel(level + 2);
		vo.setSystemCode(systemCode);
		vo.setDisplayNo(1);
		vo.setValidInd("1");
		vo.setMenuCName(name + "_子节点");
		TreeNodeVo treeNode = new TreeNodeVo();
		Long menuId = menuService.save(vo);
		if (menuId != null) {
			treeNode.setId(vo.getId());
			treeNode.setpId(vo.getUpperId());
			treeNode.setName(vo.getMenuCName());
			treeNode.setLevel(level + 1);
			treeNode.setIsParent(false);
			treeNode.setIcon("../img/menu/2.png");
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setData(treeNode);
		return ajaxResult;
	}

}
