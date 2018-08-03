package ins.platform.vo;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import java.util.Date;


/**
 * Vo Base Class of PO SysUserRunAs
 */ 
public class SysUserRunAsVoBase implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private Integer version;
	private String fromUserCode;
	private String toUserCode;
	private Date insertTimeForHis;
	private Date operateTimeForHis;

    protected SysUserRunAsVoBase() {
	
    }

    
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getFromUserCode() {
		return this.fromUserCode;
	}

	public void setFromUserCode(String fromUserCode) {
		this.fromUserCode = fromUserCode;
	}

	public String getToUserCode() {
		return this.toUserCode;
	}

	public void setToUserCode(String toUserCode) {
		this.toUserCode = toUserCode;
	}

	public Date getInsertTimeForHis() {
		return this.insertTimeForHis;
	}

	public void setInsertTimeForHis(Date insertTimeForHis) {
		this.insertTimeForHis = insertTimeForHis;
	}

	public Date getOperateTimeForHis() {
		return this.operateTimeForHis;
	}

	public void setOperateTimeForHis(Date operateTimeForHis) {
		this.operateTimeForHis = operateTimeForHis;
	}
}
