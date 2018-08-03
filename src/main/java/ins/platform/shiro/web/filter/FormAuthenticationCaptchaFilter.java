package ins.platform.shiro.web.filter;

import java.util.Date;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import ins.platform.shiro.exception.CaptchaException;
import ins.platform.shiro.web.token.UsernamePasswordCaptchaToken;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.sysuserproperty.service.facade.SysUserPropertyService;
import ins.platform.vo.SysUserVo;

public class FormAuthenticationCaptchaFilter extends FormAuthenticationFilter {
	@Autowired
	SysUserService sysUserService;
	@Autowired
	SysUserPropertyService sysUserPropertyService;
	
	@Override
	protected boolean executeLogin(ServletRequest request,
			ServletResponse response) throws Exception {
		UsernamePasswordCaptchaToken token = createToken(request, response);  
        try { 
        	Subject currentUser = SecurityUtils.getSubject();
    		Session session = currentUser.getSession();
    		if(session.getAttribute("needCaptcha")!=null&&(Boolean)(session.getAttribute("needCaptcha"))){
    			doCaptchaValidate((HttpServletRequest) request, token);
    		}
            Subject subject = getSubject(request, response);  
            subject.login(token);//正常验证  
            return onLoginSuccess(token, subject, request, response);  
        }catch (AuthenticationException e) {    
            return onLoginFailure(token, e, request, response);  
        }  
	}
	
	@Override
	protected boolean onLoginSuccess(AuthenticationToken token, Subject subject,
            ServletRequest request, ServletResponse response) throws Exception {
		issueSuccessRedirect(request, response);
		
		//we handled the success redirect directly, prevent the chain from continuing:
		UsernamePasswordToken authcToken = (UsernamePasswordToken) token;
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		session.setAttribute("userCode", authcToken.getUsername());
		session.setAttribute("needCaptcha",false);
		//添加sysUser登录状态参数，ip地址，登录时间，登录状态
		String userCode=authcToken.getUsername();
        Date date = new Date();
        String lastIp=session.getHost();
		SysUserVo sysUser = sysUserService.findByUserCode(userCode);
		SysUserVo sysUserLastTime=new SysUserVo();
		sysUserLastTime.setUserCode(sysUser.getUserCode());
		sysUserLastTime.setLastIp(sysUser.getLastIp());
		sysUserLastTime.setLastLoginFailed(sysUser.getLastLoginFailed());
		sysUserLastTime.setLastTime(sysUser.getLastTime());
		session.setAttribute("sysUserLastLogin",sysUserLastTime );
		//0 表示登录成功，1表示登录失败
		
		sysUser.setLastLoginFailed((long) 0);
		sysUser.setLastTime(date);
		sysUser.setLastIp(lastIp);
		sysUserService.updateByUserCode(userCode, sysUser);
		return false;
	}

	@Override
	protected boolean onLoginFailure(AuthenticationToken token, AuthenticationException e, ServletRequest request,
			ServletResponse response) {
		// TODO Auto-generated method stub
		String className = e.getClass().getName();
        request.setAttribute(getFailureKeyAttribute(), className);
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
		session.setAttribute("needCaptcha",true);
		//添加sysUser登录状态参数，ip地址，登录时间，登录状态
		UsernamePasswordToken authcToken = (UsernamePasswordToken) token;
		        Date date = new Date();
		        String lastIp=session.getHost();
		        String userCode=authcToken.getUsername();
				SysUserVo sysUser = sysUserService.findByUserCode(userCode);
				//0 表示登录成功，1表示登录失败
				sysUser.setLastLoginFailed((long) 1);
				sysUser.setLastTime(date);
				sysUser.setLastIp(lastIp);
				sysUserService.updateByUserCode(userCode, sysUser);	
//				session.setAttribute("sysUserLastLogin",sysUser );
		return true;
	}

	@Override
	protected UsernamePasswordCaptchaToken createToken(ServletRequest request, ServletResponse response) {
		// TODO Auto-generated method stub
		String username = getUsername(request);  
        String password = getPassword(request);  
        String captcha = WebUtils.getCleanParam(request,"captcha");  
        boolean rememberMe = isRememberMe(request);  
        String host = getHost(request);  
  
        return new UsernamePasswordCaptchaToken(username,  
                password.toCharArray(), rememberMe, host, captcha);  
	}
	protected void doCaptchaValidate(HttpServletRequest request,  
			UsernamePasswordCaptchaToken token) {
        String captcha = (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);   
        if (captcha != null && !captcha.equalsIgnoreCase(token.getCaptcha())) {  
            throw new CaptchaException("验证码错误！");  
        }  
    }  
	
}
