package com.picc.platform.pdfcserver.schema.model;

// 采用自动代码生成工具生成，请勿手工修改
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import static javax.persistence.GenerationType.SEQUENCE;

import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumns;
import javax.persistence.JoinColumn;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.alibaba.fastjson.JSON;

import org.apache.http.HttpStatus;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotBlank;

/**
 * POJO�?pdfc_server
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "pdfc_server")
public class PdfcServer implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private java.lang.String id;
	private java.lang.String hostName;
	private java.lang.String os;
	private java.lang.String cpu;
	private java.lang.String mem;
	private java.lang.String hd;
	private java.lang.String hdInfo;
	private java.lang.String ip;
	private java.lang.String remark;

	/**
	 * PdfcServer的默认构造方
	 */
	public PdfcServer() {
	}

	
	 @Id
	 @Column(name = "ID")
	 public java.lang.String getId() {
	     return this.id;
	 }

	public void setId(java.lang.String id) {
		this.id = id;
	}
	  
	 @Column(name = "HOST_NAME")
	 public java.lang.String getHostName() {
	     return this.hostName;
	 }

	public void setHostName(java.lang.String hostName) {
		this.hostName = hostName;
	}
	  
	 @Column(name = "OS")
	 public java.lang.String getOs() {
	     return this.os;
	 }

	public void setOs(java.lang.String os) {
		this.os = os;
	}
	  
	 @Column(name = "CPU")
	 public java.lang.String getCpu() {
	     return this.cpu;
	 }

	public void setCpu(java.lang.String cpu) {
		this.cpu = cpu;
	}
	  
	 @Column(name = "MEM")
	 public java.lang.String getMem() {
	     return this.mem;
	 }

	public void setMem(java.lang.String mem) {
		this.mem = mem;
	}
	  
	 @Column(name = "HD")
	 public java.lang.String getHd() {
	     return this.hd;
	 }

	public void setHd(java.lang.String hd) {
		this.hd = hd;
	}
	  
	 @Column(name = "HD_INFO")
	 public java.lang.String getHdInfo() {
	     return this.hdInfo;
	 }

	public void setHdInfo(java.lang.String hdInfo) {
		this.hdInfo = hdInfo;
	}
	  
	 @Column(name = "IP")
	 public java.lang.String getIp() {
	     return this.ip;
	 }

	public void setIp(java.lang.String ip) {
		this.ip = ip;
	}
	  
	 @Column(name = "REMARK")
	 public java.lang.String getRemark() {
	     return this.remark;
	 }

	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
	  
	
}
