package ins.platform.oauth2.web.token;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-2-18
 * <p>Version: 1.0
 */
public class Auth2Token implements AuthenticationToken {

    public Auth2Token(String authCode) {
        this.authCode = authCode;
    }

    private String authCode;
    private String principal;

    public String getAuthCode() {
        return authCode;
    }

    public void setAuthCode(String authCode) {
        this.authCode = authCode;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    @Override
    public Object getCredentials() {
        return authCode;
    }
}