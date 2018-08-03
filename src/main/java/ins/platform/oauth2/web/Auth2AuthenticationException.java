package ins.platform.oauth2.web;

import org.apache.shiro.authc.AuthenticationException;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-2-18
 * <p>Version: 1.0
 */
public class Auth2AuthenticationException extends AuthenticationException {

    public Auth2AuthenticationException(Throwable cause) {
        super(cause);
    }
}