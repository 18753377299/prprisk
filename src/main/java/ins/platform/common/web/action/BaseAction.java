package ins.platform.common.web.action;

//import java.util.HashMap;
import java.util.Map;

//import ins.framework.exception.BusinessException;
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;

import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//import org.apache.shiro.SecurityUtils;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.HandlerExceptionResolver;
//import org.springframework.web.servlet.ModelAndView;

/**
 * Action基类，集成一些action常用的方法，适用于处理AJAX方式的查询、修改的Action
 * 
 */

public class BaseAction extends BaseAjaxAction {

	@ExceptionHandler
	@ResponseBody
	public AjaxResult handlerAjaxException(HttpServletRequest request,
			Exception ex) {
		Map<String,Object> map = ExceptionHandle.callBackExceptionCasuse(ex);
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
		ajaxResult.setDatas(map);
		request.setAttribute("ajaxResult", ajaxResult);
		request.setAttribute("ex", ex);
		return ajaxResult;
	}
}  