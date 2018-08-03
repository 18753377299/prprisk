package com.picc.platform.showcase.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ins.framework.web.action.BaseAjaxAction;

@Controller
@RequestMapping("/showcase/forms")
public class FormsAction extends BaseAjaxAction {
	
	@RequestMapping(value = "/generalElements")
	public String generalElements() {
		return "showcase/forms/GereralElements";
	}
	
	@RequestMapping(value = "/advancedElements")
	public String advancedElements() {
		return "showcase/forms/AdvancedElements";
	}
	
	@RequestMapping(value = "/editors")
	public String editors() {
		return "showcase/forms/Editors";
	}
	/**
	 * 查找带回
	 * @return
	 */
	@RequestMapping(value = "/lookup")
	public String showLookUp() {
		return "showcase/forms/LookUp";
	}
	
}
