package ins.platform.common.web.action;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UnAuthorizedAction {
	@RequestMapping(value = "/unauthorized")
	public String fail(
			@RequestParam(value = FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, required = false) String userName,
			Model model) {
		model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM,
				userName);
		return "index/unauthorized";
	}
}
