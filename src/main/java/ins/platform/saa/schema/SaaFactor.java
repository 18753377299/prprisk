package ins.platform.saa.schema;

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
 * POJO Class SaaFactor
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "SAA_FACTOR")
public class SaaFactor implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String factorCode;
	private Integer version;
	private String factorDesc;
	private String dataType;
	private Date insertTimeForHis;
	private Date operateTimeForHis;
	private List<SaaUserPower> saaUserPowers = new ArrayList<SaaUserPower>(0);
	private List<SaaFactorField> saaFactorFields = new ArrayList<SaaFactorField>(0);
	@Id
	@Column(name = "FACTOR_CODE", unique = true, nullable = false, length=60)
	public String getFactorCode() {
		return this.factorCode;
	}

	public void setFactorCode(String factorCode) {
		this.factorCode = factorCode;
	}
	@Version
	@Column(name = "VERSION", nullable = false, precision=9, scale=0)
	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
	@Column(name = "FACTOR_DESC", length=60)
	public String getFactorDesc() {
		return this.factorDesc;
	}

	public void setFactorDesc(String factorDesc) {
		this.factorDesc = factorDesc;
	}
	@Column(name = "DATA_TYPE", nullable = false, length=60)
	public String getDataType() {
		return this.dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
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
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="saaFactor")
	public List<SaaUserPower> getSaaUserPowers() {
		return this.saaUserPowers;
	}

	public void setSaaUserPowers(List<SaaUserPower> saaUserPowers) {
		this.saaUserPowers = saaUserPowers;
	}
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="saaFactor")
	public List<SaaFactorField> getSaaFactorFields() {
		return this.saaFactorFields;
	}

	public void setSaaFactorFields(List<SaaFactorField> saaFactorFields) {
		this.saaFactorFields = saaFactorFields;
	}
}