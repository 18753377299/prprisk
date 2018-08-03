package com.picc.platform.showcase.web.action;

import ins.framework.web.action.BaseAjaxAction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 练习管理Action
 */
@Controller
@RequestMapping("/showcase/anonymous")
public class AnonymousAction extends BaseAjaxAction {

	/**
	 * 注入需要使用的Service
	 */

	/**
	 * 进入查询页面
	 */
	@RequestMapping("/{page}")
	public String index(@PathVariable("page") String page) {
		return "showcase/anonymous/" + page;
	}

}
