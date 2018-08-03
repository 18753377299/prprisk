package com.picc.platform.showcase.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/showcase")
public class ShowCaseAction {
	
	@RequestMapping("/showcase")
	public String showcase(){
		return "showcase/ShowCase";
	}
	@RequestMapping("/echarts")
	public String echarts(){
		return "showcase/echarts/EChartsEdit";
	}
}
