package ins.platform.schema;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;
import org.hibernate.annotations.GenericGenerator;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * POJO Class SysUserProperty
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "SYS_USER_PROPERTY")
public class SysUserProperty implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private Integer version;
	private String userCode;
	private String code;
	private String value;
	private Date insertTimeForHis;
	private Date operateTimeForHis;
	@Id
	@GeneratedValue(generator = "generator")
	@GenericGenerator(name = "generator", strategy = "native")
	
	@Column(name = "ID", unique = true, nullable = false, precision=18, scale=0)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	@Version
	@Column(name = "VERSION", nullable = false, precision=9, scale=0)
	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
	@Column(name = "USER_CODE", nullable = false, length=60)
	public String getUserCode() {
		return this.userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	@Column(name = "CODE", nullable = false, length=22)
	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	@Column(name = "VALUE", nullable = false, length=8)
	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
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
}
