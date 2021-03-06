package ins.platform.schema;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * POJO Class SddType
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "SDD_TYPE")
public class SddType implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String type;
	private Integer version;
	private String typeDesc;
	private String newType;
	private String validStatus;
	private String flag;
	private Date insertTimeForHis;
	private Date operateTimeForHis;
	private List<SddCode> sddCodes = new ArrayList<SddCode>(0);
	@Id
	@Column(name = "TYPE", unique = true, nullable = false, length=250)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
	@Version
	@Column(name = "VERSION", nullable = false, precision=9, scale=0)
	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
	@Column(name = "TYPE_DESC", length=250)
	public String getTypeDesc() {
		return this.typeDesc;
	}

	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
	}
	@Column(name = "NEW_TYPE", length=250)
	public String getNewType() {
		return this.newType;
	}

	public void setNewType(String newType) {
		this.newType = newType;
	}
	@Column(name = "VALID_STATUS", length=1)
	public String getValidStatus() {
		return this.validStatus;
	}

	public void setValidStatus(String validStatus) {
		this.validStatus = validStatus;
	}
	@Column(name = "FLAG", length=45)
	public String getFlag() {
		return this.flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "INSERT_TIME_FOR_HIS",insertable = false, updatable = false)
	public Date getInsertTimeForHis() {
		return this.insertTimeForHis;
	}

	public void setInsertTimeForHis(Date insertTimeForHis) {
		this.insertTimeForHis = insertTimeForHis;
	}
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "OPERATE_TIME_FOR_HIS",insertable = false)
	public Date getOperateTimeForHis() {
		return this.operateTimeForHis;
	}

	public void setOperateTimeForHis(Date operateTimeForHis) {
		this.operateTimeForHis = operateTimeForHis;
	}
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="sddType")
	public List<SddCode> getSddCodes() {
		return this.sddCodes;
	}

	public void setSddCodes(List<SddCode> sddCodes) {
		this.sddCodes = sddCodes;
	}
}
