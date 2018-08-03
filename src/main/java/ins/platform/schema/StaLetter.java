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
 * POJO Class StaLetter
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "STA_LETTER")
public class StaLetter implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private Integer version;
	private String userCode;
	private String receiver;
	private String content;
	private String theme;
	private Date sendTime;
	private Date receiveTime;
	private String sender;
	private String readFlag;
	private String validFlagRec;
	private String validFlagSend;
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
	@Column(name = "USER_CODE", length=64)
	public String getUserCode() {
		return this.userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	@Column(name = "RECEIVER", nullable = false, length=64)
	public String getReceiver() {
		return this.receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	@Column(name = "CONTENT")
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	@Column(name = "THEME", length=64)
	public String getTheme() {
		return this.theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "SEND_TIME", length=7)
	public Date getSendTime() {
		return this.sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "RECEIVE_TIME", length=7)
	public Date getReceiveTime() {
		return this.receiveTime;
	}

	public void setReceiveTime(Date receiveTime) {
		this.receiveTime = receiveTime;
	}
	@Column(name = "SENDER", length=64)
	public String getSender() {
		return this.sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}
	@Column(name = "READ_FLAG", length=2)
	public String getReadFlag() {
		return this.readFlag;
	}

	public void setReadFlag(String readFlag) {
		this.readFlag = readFlag;
	}
	@Column(name = "VALID_FLAG_REC", length=2)
	public String getValidFlagRec() {
		return this.validFlagRec;
	}

	public void setValidFlagRec(String validFlagRec) {
		this.validFlagRec = validFlagRec;
	}
	@Column(name = "VALID_FLAG_SEND", length=2)
	public String getValidFlagSend() {
		return this.validFlagSend;
	}

	public void setValidFlagSend(String validFlagSend) {
		this.validFlagSend = validFlagSend;
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