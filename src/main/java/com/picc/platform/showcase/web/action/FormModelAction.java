package com.picc.platform.showcase.web.action;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.framework.web.bind.annotation.FormModel;
import ins.platform.vo.SmcMenuVo;
import ins.platform.vo.SysUserVo;

import javax.validation.Valid;

import org.apache.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 用户管理Action
 */
@Controller
@RequestMapping("/showcase/formmodel")
public class FormModelAction extends BaseAjaxAction {

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView edit() {
		// 1.参数校验
		// 2.组织业务数据（包括处理主子表关系）
		SysUserVo user = new SysUserVo();
		user.setUserCode("admin");
		user.setUserName("管理员");
		SmcMenuVo menu = new SmcMenuVo();
		menu.setMenuCName("测试");
		menu.setMenuEName("Test");
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", user);
		mav.addObject("smcMenu", menu);
		mav.setViewName("showcase/formmodel/FormModelEdit");
		return mav;
	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@FormModel("user") @Valid SysUserVo user,
			@FormModel("menu") @Valid SmcMenuVo menu,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		System.out.println("用户名：" + user.getUserCode());
		System.out.println("菜单中文名：" + menu.getMenuCName());
		// 1.参数校验
		// Assert.hasText(prpDuser.getEmail(), "电子邮箱地址不能为空");

		// 2.组织业务数据（包括处理主子表关系）
		String result = "UserCode=" + user.getUserCode() + "&nbsp,UserName="
				+ user.getUserName() + "&nbsp,MenuCName="
				+ menu.getMenuCName() + "&nbsp,MenuEName="
				+ menu.getMenuEName();
		System.out.println(result);
		// 4.返回处理结果e
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(result);
		return ajaxResult;

	}

}