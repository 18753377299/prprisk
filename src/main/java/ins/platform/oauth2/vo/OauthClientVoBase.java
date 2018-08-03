package ins.platform.oauth2.vo;

// Generated by Hibernate Tools 3.2.5 (sinosoft version), Don't modify!


/**
 * Vo Base Class of PO OauthClient
 */ 
public class OauthClientVoBase implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String clientId;
	private String clientSecret;
	private String redirectUri;

    protected OauthClientVoBase() {
	
    }

    
	public String getClientId() {
		return this.clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getClientSecret() {
		return this.clientSecret;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}

	public String getRedirectUri() {
		return this.redirectUri;
	}

	public void setRedirectUri(String redirectUri) {
		this.redirectUri = redirectUri;
	}
}