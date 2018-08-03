package ins.platform.shiro.service.spring;

import ins.platform.saa.service.facade.SaaUserRoleService;

import java.util.List;

import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cas.CasRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class MyCasRealm extends CasRealm {

	@Autowired
	SaaUserRoleService saaUserRoleService;

    

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String username = (String)principals.getPrimaryPrincipal();

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		List<String> roleList = saaUserRoleService.findUserRoles(username);
		info.addRoles(roleList);
		return info;
	
    }
}
