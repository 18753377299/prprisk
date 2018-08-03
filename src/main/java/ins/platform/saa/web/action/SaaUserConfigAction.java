package ins.platform.saa.web.action;


import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.saa.service.facade.SaaFactorService;

@Controller
@RequestMapping("/saauserconfig")
public class SaaUserConfigAction extends BaseAjaxAction {
	@Autowired
	SaaFactorService saaFactorService;
	/**
	 * 进入查询页面
	 */
	@RequestMapping("/factorLookupList.dialog")
	public String list() {
		return "saa/userConfig/forLookup/FactorLookupList";
	}
	@RequestMapping(value = "/factorLookupSearch")
	@ResponseBody
	public String search(HttpServletRequest request) {
		Map<String, String[]> requestMap = (Map<String, String[]>) request
				.getParameterMap();
		return saaFactorService.findForDataTables(requestMap);
	}
	
}
