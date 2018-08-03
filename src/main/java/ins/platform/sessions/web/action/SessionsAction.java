package ins.platform.sessions.web.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.apache.http.HttpStatus;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.sessions.vo.SessionVo;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

@Controller
@RequestMapping("/sessions")
public class SessionsAction extends BaseAjaxAction {
//	@Autowired  
    private SessionDAO sessionDAO;  
	@Autowired
	private SysUserService sysUserService;
	
    @RequestMapping("/list")  
    public ModelAndView list() {  
        Collection<Session> sessions =  sessionDAO.getActiveSessions(); 
        
        Iterator<Session> iterator = sessions.iterator();
        List<SessionVo> vos = new ArrayList<SessionVo>();
        while(iterator.hasNext()){
        	SessionVo vo = new SessionVo();
        	Session next = iterator.next();
        	if(next.getAttribute("session_force_logout_key") == null){
	        	String userCode =  (String)next.getAttribute("userCode");
	        	if(userCode != null){
		        	SysUserVo sysUserVo = sysUserService.findByUserCode(userCode);
		        	vo.setSysUserVo(sysUserVo);
		        	vo.setId(next.getId());
		        	vo.setHost(next.getHost());
		        	vo.setTimeout(next.getTimeout()/(1000*60));
		        	vo.setLastAccessTime(next.getLastAccessTime());
		        	vo.setStartTimesStamp(next.getStartTimestamp());
		        	vos.add(vo);
	        	}
        	}
        }
        
        ModelAndView mod = new ModelAndView();
        mod.addObject("vos", vos);
        mod.setViewName("sessions/List");
        return mod;  
    }  
    
    @RequestMapping(value = "/forceLogout/{sessionId}", produces = { "application/json;charset=UTF-8" })
    @ResponseBody
    public AjaxResult forceLogout(@PathVariable("sessionId") String sessionId) {  
    	AjaxResult ajaxResult = new AjaxResult();
        try {  
            Session session = sessionDAO.readSession(sessionId);  
            if(session != null) {  
                session.setAttribute("session_force_logout_key", Boolean.TRUE);  
                ajaxResult.setStatus(HttpStatus.SC_OK);
                ajaxResult.setStatusText("success");
                return ajaxResult;
            }
            ajaxResult.setStatus(HttpStatus.SC_SERVICE_UNAVAILABLE);
            ajaxResult.setStatusText("error");
            return ajaxResult;
        } catch (Exception e) {
        	ajaxResult.setStatus(HttpStatus.SC_INTERNAL_SERVER_ERROR);
        	ajaxResult.setStatusText("error");
        	return ajaxResult;
        }  
    } 
    
}
