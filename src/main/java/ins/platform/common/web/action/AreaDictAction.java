package ins.platform.common.web.action;

import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.service.facade.AreaDictService;
import ins.platform.vo.SysAreaDictVo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/areadict")
public class AreaDictAction extends BaseAjaxAction {

	@Autowired
	AreaDictService areaDictService;

	/**
	 * 查询地区 
	 * @return 
	 */

	@RequestMapping(value = "/findArea", produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public String getTwo(@RequestParam(value = "upperCode") String upperCode) {
		List<SysAreaDictVo> list = areaDictService.findChildArea(upperCode);
		return JSON.toJSONString(list);

	}
}
