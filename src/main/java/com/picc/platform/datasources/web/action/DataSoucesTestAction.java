package com.picc.platform.datasources.web.action;

import org.apache.commons.httpclient.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.picc.platform.datasources.service.facade.DataSourcesTestService;

import ins.framework.web.AjaxResult;

@Controller
@RequestMapping("/dataSources")
public class DataSoucesTestAction {

	@Autowired
	DataSourcesTestService dataSourcesTestService;
	
	@RequestMapping(value = "pre")
	public String pre(){
		return "showcase/datasources/List";
	}
	
	@ResponseBody
	@RequestMapping(value = "/aAndB")
	public AjaxResult aAndB(){
		AjaxResult ajaxResult = new AjaxResult();
		String methodA = dataSourcesTestService.methodA();
		String methodB = dataSourcesTestService.methodB();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(methodA + "--" + methodB);
		return ajaxResult;
	}
	
	@ResponseBody
	@RequestMapping(value = "/bAndA")
	public AjaxResult bAndA(){
		AjaxResult ajaxResult = new AjaxResult();
		String methodB = dataSourcesTestService.methodB();
		String methodA = dataSourcesTestService.methodA();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(methodB + "--" + methodA);
		return ajaxResult;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cToD")
	public AjaxResult cToD(){
		AjaxResult ajaxResult = new AjaxResult();
		String methodC = dataSourcesTestService.methodC();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(methodC);
		return ajaxResult;
	}
	
	@ResponseBody
	@RequestMapping(value = "/dToC")
	public AjaxResult dToC(){
		AjaxResult ajaxResult = new AjaxResult();
		String methodD = dataSourcesTestService.methodD();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(methodD);
		return ajaxResult;
	}
	
}
