package com.picc.riskcontrol.common.schema;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 典型案例分析表
 * */

@SuppressWarnings("serial")
@Entity
@Table(name="riskinfo_claim")
public class RiskInfoClaim implements Serializable{
	
	private static final long SerialVersionUID = 1L;
	
	private Integer serialNo;
	private String claimName;
	private String riskName;
	private String riskCname;
	private String claimReason;
	private String profession;
	private BigDecimal claimAmount;
	private String claimYear;
	private String sender;
	private String url;
	private String validstatus;
	private Date insertTimeForHis;
	private Date operateTimeForHis;
	private String comCode;
	private String operatorCode;
	private String operatorName;
	private String remark;
	
	@Id
//	@GeneratedValue   //指定了标识符的生成策略(定义自动增长的主键的生成策略.)
	@Column(name="serialNo",nullable =false)
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	@Column(name="claimName")
	public String getClaimName() {
		return claimName;
	}
	public void setClaimName(String claimName) {
		this.claimName = claimName;
	}
	@Column(name="riskName")
	public String getRiskName() {
		return riskName;
	}
	public void setRiskName(String riskName) {
		this.riskName = riskName;
	}
	@Column(name="riskCname")
	public String getRiskCname() {
		return riskCname;
	}
	public void setRiskCname(String riskCname) {
		this.riskCname = riskCname;
	}
	@Column(name="claimReason")
	public String getClaimReason() {
		return claimReason;
	}
	public void setClaimReason(String claimReason) {
		this.claimReason = claimReason;
	}
	@Column(name="profession")
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	@Column(name="claimAmount")
	public BigDecimal getClaimAmount() {
		return claimAmount;
	}
	public void setClaimAmount(BigDecimal claimAmount) {
		this.claimAmount = claimAmount;
	}
	@Column(name="claimYear")
	public String getClaimYear() {
		return claimYear;
	}
	public void setClaimYear(String claimYear) {
		this.claimYear = claimYear;
	}
	@Column(name="sender")
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	@Column(name="url")
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Column(name="validstatus")
	public String getValidstatus() {
		return validstatus;
	}
	public void setValidstatus(String validstatus) {
		this.validstatus = validstatus;
	}
	@Column(name="insertTimeForHis")
	public Date getInsertTimeForHis() {
		return insertTimeForHis;
	}
	public void setInsertTimeForHis(Date insertTimeForHis) {
		this.insertTimeForHis = insertTimeForHis;
	}
	@Column(name="operateTimeForHis")
	public Date getOperateTimeForHis() {
		return operateTimeForHis;
	}
	public void setOperateTimeForHis(Date operateTimeForHis) {
		this.operateTimeForHis = operateTimeForHis;
	}
	@Column(name="comCode")
	public String getComCode() {
		return comCode;
	}
	public void setComCode(String comCode) {
		this.comCode = comCode;
	}
	@Column(name="operatorCode")
	public String getOperatorCode() {
		return operatorCode;
	}
	public void setOperatorCode(String operatorCode) {
		this.operatorCode = operatorCode;
	}
	@Column(name="operatorName")
	public String getOperatorName() {
		return operatorName;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	@Column(name="remark")
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
		
}
