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
 * POJO Class ImsCheckDetail
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "IMS_CHECK_DETAIL")
public class ImsCheckDetail implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private Integer version;
	private String userCode;
	private Date workDay;
	private String checkType;
	private String checkInAddress;
	private Date checkInTime;
	private String checkInReason;
	private String checkOutAddress;
	private Date checkOutTime;
	private String checkOutReason;
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
	@Column(name = "VERSION", precision=9, scale=0)
	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
	@Column(name = "USER_CODE", length=64)
	public String getUserCode() {
		return this.userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "WORK_DAY", length=7)
	public Date getWorkDay() {
		return this.workDay;
	}

	public void setWorkDay(Date workDay) {
		this.workDay = workDay;
	}
	@Column(name = "CHECK_TYPE", length=30)
	public String getCheckType() {
		return this.checkType;
	}

	public void setCheckType(String checkType) {
		this.checkType = checkType;
	}
	@Column(name = "CHECK_IN_ADDRESS", length=32)
	public String getCheckInAddress() {
		return this.checkInAddress;
	}

	public void setCheckInAddress(String checkInAddress) {
		this.checkInAddress = checkInAddress;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CHECK_IN_TIME", length=7)
	public Date getCheckInTime() {
		return this.checkInTime;
	}

	public void setCheckInTime(Date checkInTime) {
		this.checkInTime = checkInTime;
	}
	@Column(name = "CHECK_IN_REASON")
	public String getCheckInReason() {
		return this.checkInReason;
	}

	public void setCheckInReason(String checkInReason) {
		this.checkInReason = checkInReason;
	}
	@Column(name = "CHECK_OUT_ADDRESS", length=32)
	public String getCheckOutAddress() {
		return this.checkOutAddress;
	}

	public void setCheckOutAddress(String checkOutAddress) {
		this.checkOutAddress = checkOutAddress;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CHECK_OUT_TIME", length=7)
	public Date getCheckOutTime() {
		return this.checkOutTime;
	}

	public void setCheckOutTime(Date checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	@Column(name = "CHECK_OUT_REASON")
	public String getCheckOutReason() {
		return this.checkOutReason;
	}

	public void setCheckOutReason(String checkOutReason) {
		this.checkOutReason = checkOutReason;
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