package com.picc.riskcontrol.riskinfo.service.spring;

import ins.framework.dao.database.DatabaseDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.picc.riskcontrol.common.schema.RiskInfoClaim;
import com.picc.riskcontrol.riskinfo.service.facade.RiskInfoService;


@Service(value="RiskInfoService")
public class RiskInfoServiceSpringImpl implements RiskInfoService{
	
	@Autowired
	DatabaseDao databaseDao;
	// 测试 Hibernate方法的是否可行
	public void testSave(){
		
		RiskInfoClaim riskInfoClaim=new RiskInfoClaim();
		riskInfoClaim.setSerialNo(229);
		riskInfoClaim.setClaimName("333333");
		riskInfoClaim.setRiskName("Q");
		riskInfoClaim.setClaimReason("cccc");
		riskInfoClaim.setProfession("dd");
		riskInfoClaim.setSender("ee");
		riskInfoClaim.setValidstatus("0");
		
		try {
			databaseDao.save(RiskInfoClaim.class, riskInfoClaim);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
