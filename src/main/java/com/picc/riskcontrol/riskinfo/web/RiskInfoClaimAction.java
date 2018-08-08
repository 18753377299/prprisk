package com.picc.riskcontrol.riskinfo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.picc.riskcontrol.riskinfo.vo.RiskInfoResponseVo;


@Controller
@RequestMapping("/riskinfo")
public class RiskInfoClaimAction {
	
	// 必须使用spring-web4.2以上的版本，否则不能导入
	@CrossOrigin(origins = "*", maxAge = 3600)
	@RequestMapping(value="/queryClaimInfo",method={RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public RiskInfoResponseVo queryRiskInfoClaim(){
		RiskInfoResponseVo riskInfoResponseVo=new RiskInfoResponseVo();
		System.out.println("小子，成功了没22");
		String claim="success222";
		riskInfoResponseVo.setErrorMessage(claim);
		return riskInfoResponseVo;
	}
	

}
