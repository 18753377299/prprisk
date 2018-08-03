package ins.platform.schema;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * POJO Class Oauth2Client
 */
@Entity
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "OAUTH2_CLIENT")
public class Oauth2Client implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	private String clientName;
	private String clientId;
	private String clientSecret;
	@Id 
    @GeneratedValue(strategy=IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	@Column(name = "CLIENT_NAME", length=100)
	public String getClientName() {
		return this.clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	@Column(name = "CLIENT_ID", length=100)
	public String getClientId() {
		return this.clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	@Column(name = "CLIENT_SECRET", length=100)
	public String getClientSecret() {
		return this.clientSecret;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}
}