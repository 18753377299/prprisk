package com.picc.platform.showcase.web.action;

import ins.framework.web.action.BaseAjaxAction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 练习管理Action
 */
@Controller
@RequestMapping("/showcase/rpc")
public class RpcAction extends BaseAjaxAction {

	/**
	 * 注入需要使用的Service
	 */  

	/**
	 * 进入查询页面
	 */
	@RequestMapping("/echo")
	public String list() {
		return "showcase/rpc/RpcEcho";
	}

	 
}
