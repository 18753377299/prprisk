package ins.platform.demo.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ins.framework.web.action.BaseAjaxAction;

@Controller
@RequestMapping("/coding")
public class CodingAction extends BaseAjaxAction{
	
	@RequestMapping(value = "/preCodingView")
	public String prepareCodingView(){
		return "demo/coding/formDemo/FormDemoFrame";
	}
	
	@RequestMapping(value = "/demoPage/prepareCheckBox")
	public String prepareCheckBox(){
		return "demo/coding/formDemo/demoPage/CheckBox";
	}
	
	@RequestMapping(value = "/demoPage/prepareSelectBox")
	public String prepareSelectBox(){
		return "demo/coding/formDemo/demoPage/SelectBox";
	}
	
	@RequestMapping(value = "/demoPage/prepareRadio")
	public String prepareRadio(){
		return "demo/coding/formDemo/demoPage/Radio";
	}
	
	@RequestMapping(value = "/demoPage/prepareValidation")
	public String prepareValidation(){
		return "demo/coding/formDemo/demoPage/Validation";
	}
	
	@RequestMapping(value = "/demoPage/prepareButton")
	public String prepareButton(){
		return "demo/coding/formDemo/demoPage/Button";
	}
	
	@RequestMapping(value = "/demoPage/prepareDate")
	public String prepareDate(){
		return "demo/coding/formDemo/demoPage/Date";
	}
	
	@RequestMapping(value = "/demoPage/prepareCodeTranslation")
	public String prepareCodeTranslation(){
		return "demo/coding/formDemo/demoPage/CodeTranslation";
	}
	
	@RequestMapping(value = "/demoPage/prepareMultiSelectBox")
	public String prepareMultiSelectBox(){
		return "demo/coding/formDemo/demoPage/MultiSelectBox";
	}
	
	@RequestMapping(value = "/demoPage/prepareTab")
	public String prepareTab(){
		return "demo/coding/formDemo/demoPage/Tab";
	}
	
	@RequestMapping(value = "/demoPage/prepareZtree")
	public String prepareZtree(){
		return "zTree/3.5.15/demo/cn/index";
	}
	
	@RequestMapping(value = "/demoPage/prepareSbadmin")
	public String prepareSbadmin(){
		return "widgets/sbadmin2_v1.0.5/index";
	}

}
