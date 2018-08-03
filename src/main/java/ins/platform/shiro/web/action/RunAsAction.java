package ins.platform.shiro.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.HttpStatus;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.web.AjaxResult;
import ins.platform.shiro.service.spring.SysUserDbRealm;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.sysuserrunas.service.facade.SysUserRunAsService;
import ins.platform.vo.SysUserVo;

@Controller
@RequestMapping(value = "/runas")
public class RunAsAction {
	
	@Autowired
	SysUserRunAsService sysUserRunAsService;
	@Autowired
	SysUserService sysUserService;
	
	@RequestMapping(value = "/grantList")
	public ModelAndView grantList(HttpServletRequest request){
		String userCode = request.getRemoteUser();
		List<SysUserVo> list = sysUserRunAsService.findGrantList(userCode);
		
		ModelAndView model = new ModelAndView();
		model.addObject("sysUsers", list);
		model.setViewName("runas/GrantList");
		return model;
	}
	
	@RequestMapping(value = "/switchList")
	public ModelAndView switchList(HttpServletRequest request) {
		String toUserCode = request.getRemoteUser();
		List<SysUserVo> sysUsers = sysUserRunAsService.findFromUserCodes(toUserCode);
		
		ModelAndView model = new ModelAndView();
		model.addObject("sysUsers", sysUsers);
		model.setViewName("runas/SwitchList");
		return model;
	}
	
	@RequestMapping(value = "/revokeList")
	public ModelAndView revokeList(HttpServletRequest request) {
		String userCode = request.getRemoteUser();
		List<SysUserVo> sysUsers = sysUserRunAsService.findToUserCodes(userCode);
		
		ModelAndView model = new ModelAndView();
		model.addObject("sysUsers", sysUsers);
		model.setViewName("runas/RevokeList");
		return model;
	}
	
	@RequestMapping(value = "/grant/{toUserCode}")
	@ResponseBody
	public AjaxResult grant(HttpServletRequest request ,
			@PathVariable("toUserCode") String toUserCode){
		String userCode = request.getRemoteUser();
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		if(userCode.equals(toUserCode)){
			ajaxResult.setStatusText("您不能授予身份给自己");
			return ajaxResult;
		}
		sysUserRunAsService.grantRunAs(userCode, toUserCode);
		ajaxResult.setStatusText("操作成功！");
		return ajaxResult;
	}
	
	@RequestMapping(value = "/switchTo/{switchToUserCode}")
	@ResponseBody
	public AjaxResult swithcTo(HttpServletRequest request,
			@PathVariable("switchToUserCode") String switchToUserCode){
		String userCode = request.getRemoteUser();
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		if(switchToUserCode == null || !sysUserRunAsService.exists(switchToUserCode, userCode)){
			ajaxResult.setStatusText("对方没有授予您权限，不能切换身份！");
			return ajaxResult;
		}
		if(userCode.equals(switchToUserCode)){
			ajaxResult.setStatusText("不能切换身份到自己！");
			return ajaxResult;
		}
		ajaxResult.setStatusText("操作成功！");
		Subject subject = SecurityUtils.getSubject();
		subject.runAs(new SimplePrincipalCollection(new SysUserDbRealm.ShiroUser(switchToUserCode, switchToUserCode), ""));
		return ajaxResult;
	}
	
	@RequestMapping(value = "/switchBack")
	@ResponseBody
	public AjaxResult switchBack(HttpServletRequest request){
		AjaxResult ajaxResult = new AjaxResult();
		Subject subject = SecurityUtils.getSubject();
		ajaxResult.setStatus(HttpStatus.SC_OK);

        if(subject.isRunAs()) {
           subject.releaseRunAs();
           ajaxResult.setStatusText("操作成功！");
        } else {
        	ajaxResult.setStatusText("已经是最后一个了！");
        }
		return ajaxResult;
	}
	
	@RequestMapping(value = "revoke/{toUserCode}")
	@ResponseBody
	public AjaxResult revoke(HttpServletRequest request,
			@PathVariable("toUserCode") String toUserCode) {
		String userCode = request.getRemoteUser();
		sysUserRunAsService.revokeRunAs(userCode, toUserCode);
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText("操作成功！");
		return ajaxResult;
	}
}
