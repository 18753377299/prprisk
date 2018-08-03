package com.picc.platform.showcase.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.web.action.BaseAjaxAction;

@Controller
@RequestMapping("/lookup")
public class LookUpAction extends BaseAjaxAction {
	
	@RequestMapping("/userLookUp.dialog")
	public ModelAndView userLookUp(@RequestParam("codeFieldId") String codeFieldId,@RequestParam("nameFieldId") String nameFieldId){
		ModelAndView mav = new ModelAndView();
		mav.addObject("codeFieldId", codeFieldId);
		mav.addObject("nameFieldId", nameFieldId);
		mav.setViewName("showcase/lookup/UserLookUpList");
		return mav;
	}

}
