package com.picc.platform.showcase.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户管理Action
 */
@Controller
@RequestMapping("/showcase/insure")
public class InsureAction {

	@RequestMapping("/create")
	public String create() {
		return "showcase/insure/QuotationIframe";
	}

	@RequestMapping("/createIframe")
	public String createIframe() {
		return "showcase/insure/QuotationEdit";
	}
}
