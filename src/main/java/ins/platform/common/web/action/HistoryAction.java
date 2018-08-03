package ins.platform.common.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HistoryAction {

	@RequestMapping(value = "/history")
	public String history() {
		return "History";
	}
	
}
