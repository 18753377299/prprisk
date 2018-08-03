package ins.platform.oauth2.schema;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import static javax.persistence.GenerationType.SEQUENCE;

/**
 * POJO Class OauthRefreshToken
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "OAUTH_REFRESH_TOKEN")
public class OauthRefreshToken implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String refreshToken;
	private String clientId;
	private String userId;
	private Date expires;
	private String scope;
	@Id
	@Column(name = "REFRESH_TOKEN", unique = true, nullable = false, length=40)
	public String getRefreshToken() {
		return this.refreshToken;
	}

	public void setRefreshToken(String refreshToken) {
		this.refreshToken = refreshToken;
	}
	@Column(name = "CLIENT_ID", nullable = false, length=80)
	public String getClientId() {
		return this.clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	@Column(name = "USER_ID")
	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "EXPIRES", nullable = false, length=19)
	public Date getExpires() {
		return this.expires;
	}

	public void setExpires(Date expires) {
		this.expires = expires;
	}
	@Column(name = "SCOPE", length=2000)
	public String getScope() {
		return this.scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}
}