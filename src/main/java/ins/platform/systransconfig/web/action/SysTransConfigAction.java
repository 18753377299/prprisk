package ins.platform.systransconfig.web.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.httpclient.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.systransconfig.service.facade.SysTransConfigService;
import ins.platform.vo.SysTransConfigVo;

@Controller
@RequestMapping("/sysTransConfig")
public class SysTransConfigAction extends BaseAjaxAction {

	@Autowired
	SysTransConfigService sysTransConfigService;

	// 查询页面
	@RequestMapping("/list")
	public String list() {
		return "sysTransConfig/SysTransConfigList";
	}

	// ajax 查询
	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) {

		Map<String, String[]> requestMap = new HashMap<String, String[]>(request
				.getParameterMap());
		return sysTransConfigService.findForDataTables(requestMap);

	}

	// 编辑 editMode 用于区分是新增 create 还是修改 update ，默认修改
	@RequestMapping(value = "/edit/{transType}", method = RequestMethod.GET)
	public ModelAndView edit(
			@PathVariable(value = "transType") String transType,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {

		SysTransConfigVo sysTransConfig;
		// 识别是编辑模式是新增create 还是修改 upadte
		if ("create".equalsIgnoreCase(editMode)) {
			sysTransConfig = new SysTransConfigVo();
		} else {
			sysTransConfig = sysTransConfigService.findByPK(transType);
		}
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysTransConfig", sysTransConfig);
		mav.addObject("editMode", editMode);
		mav.setViewName("sysTransConfig/SysTransConfigEdit");
		return mav;

	}

	// AJAX保存
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@ModelAttribute("sysTransConfig") @Valid SysTransConfigVo sysTransConfig,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {

		// 识别更新或 新增
		if ("create".equalsIgnoreCase(editMode)) {
			sysTransConfigService.save(sysTransConfig);
		} else {
			sysTransConfigService.update(sysTransConfig);
		}
		// 返回结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(sysTransConfig.getTransType());
		return ajaxResult;
	}

	// 显示页面
	@RequestMapping(value = "/view/{transType}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable(value = "transType") String transType) {

		SysTransConfigVo sysTransConfig = sysTransConfigService
				.findByPK(transType);
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysTransConfig", sysTransConfig);
		mav.setViewName("sysTransConfig/SysTransConfigView");
		return mav;
	}

	// Ajax批量删除
	@RequestMapping(value = "/deleteAll/{ids}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteAll(@PathVariable(value = "ids") String ids) {
		if (!"".equals(ids)) {
			String[] idArray = ids.split(",");
			for (int i = 0; i < idArray.length; i++) {
				String id = idArray[i];
				sysTransConfigService.deleteByPK(id);
			}
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * AJAX删除动作
	 * 
	 *
	 */
	@RequestMapping(value = "/delete/{transType}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "transType") String transType) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		sysTransConfigService.deleteByPK(transType);
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(transType);
		return ajaxResult;
	}

}
