package com.picc.riskcontrol.riskinfo.vo.request;


public class RiskInfoRequestVo {
	
	private RiskInfoClaimVo riskInfoClaimVo;
	
	private int pageNo;
	private int pageSize;
	
	
	public RiskInfoClaimVo getRiskInfoClaimVo() {
		return riskInfoClaimVo;
	}
	public void setRiskInfoClaimVo(RiskInfoClaimVo riskInfoClaimVo) {
		this.riskInfoClaimVo = riskInfoClaimVo;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
