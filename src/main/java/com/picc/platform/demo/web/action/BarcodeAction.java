package com.picc.platform.demo.web.action;

import ins.framework.web.action.BaseAjaxAction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/demo/barcode")
public class BarcodeAction extends BaseAjaxAction{
	
//	@CrossOrigin(origins = "*", maxAge = 3600)
	@RequestMapping("/prepare")
	public String barCode(){
		return "demo/barcode/BarcodeForm";
		
	}

}
