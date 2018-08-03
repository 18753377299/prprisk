package ins.platform.oauth2.service.spring;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.cache.CacheManager;
import ins.framework.cache.CacheService;
import ins.framework.rpc.annotation.Rpc;
import ins.platform.oauth2.service.facade.AuthService;
import ins.platform.oauth2.service.facade.ClientService;
/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-2-17
 * <p>Version: 1.0
 */
@Rpc
@Service(value="authService")
public class AuthServiceSpringImpl implements AuthService {

	private static final CacheService cacheManager = CacheManager.getInstance("Auth2");
    @Autowired
    private ClientService clientService;

    @Override
    public void addAuthCode(String authCode, String username) {
    	cacheManager.putCache(authCode, username);
    }

    @Override
    public void addAccessToken(String accessToken, String username) {
    	cacheManager.putCache(accessToken, username);
    }

    @Override
    public String getUsernameByAuthCode(String authCode) {
        return (String)cacheManager.getCache(authCode);
    }

    @Override
    public String getUsernameByAccessToken(String accessToken) {
        return (String)cacheManager.getCache(accessToken);
    }

    @Override
    public boolean checkAuthCode(String authCode) {
        return cacheManager.getCache(authCode) != null;
    }

    @Override
    public boolean checkAccessToken(String accessToken) {
        return cacheManager.getCache(accessToken) != null;
    }

    @Override
    public boolean checkClientId(String clientId) {
        return clientService.findByClientId(clientId) != null;
    }

    @Override
    public boolean checkClientSecret(String clientSecret) {
        return clientService.findByClientSecret(clientSecret) != null;
    }

    @Override
    public long getExpireIn() {
        return 3600L;
    }
}