package com.picc.platform.showcase.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/showcase/requirejs")
public class RequireJsAction {

	@RequestMapping("/requireJs")
	public String requirejs(){
		return "showcase/requirejs/RequireJs";
	}
	
}
