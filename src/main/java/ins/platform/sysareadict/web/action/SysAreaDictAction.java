package ins.platform.sysareadict.web.action;

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
import ins.platform.sysareadict.service.facade.SysAreaDictService;
import ins.platform.vo.SysAreaDictVo;

@Controller
@RequestMapping("/sysAreaDict")
public class SysAreaDictAction extends BaseAjaxAction {

	@Autowired
	SysAreaDictService sysAreaDictService;

	// 查询页面
	@RequestMapping("/list")
	public String list() {
		return "sysAreaDict/SysAreaDictList";
	}

	// ajax 查询
	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) {

		Map<String, String[]> requestMap = new HashMap<String, String[]>(request
				.getParameterMap());
		return sysAreaDictService.findForDataTables(requestMap);

	}

	// 编辑 editMode 用于区分是新增 create 还是修改 update ，默认修改
	@RequestMapping(value = "/edit/{areaCode}", method = RequestMethod.GET)
	public ModelAndView edit(
			@PathVariable(value = "areaCode") String areaCode,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {

		SysAreaDictVo sysAreaDict;
		// 识别是编辑模式是新增create 还是修改 upadte
		if ("create".equalsIgnoreCase(editMode)) {
			sysAreaDict = new SysAreaDictVo();
		} else {
			sysAreaDict = sysAreaDictService.findByPK(areaCode);
		}
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysAreaDict", sysAreaDict);
		mav.addObject("editMode", editMode);
		mav.setViewName("sysAreaDict/SysAreaDictEdit");
		return mav;

	}

	// AJAX保存
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@ModelAttribute("sysAreaDict") @Valid SysAreaDictVo sysAreaDict,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {

		// 识别更新或 新增
		if ("create".equalsIgnoreCase(editMode)) {
			sysAreaDictService.save(sysAreaDict);
		} else {
			sysAreaDictService.update(sysAreaDict);
		}
		// 返回结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(sysAreaDict.getAreaCode());
		return ajaxResult;
	}

	// 显示页面
	@RequestMapping(value = "/view/{areaCode}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable(value = "areaCode") String areaCode) {

		SysAreaDictVo sysAreaDict = sysAreaDictService
				.findByPK(areaCode);
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysAreaDict", sysAreaDict);
		mav.setViewName("sysAreaDict/SysAreaDictView");
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
				sysAreaDictService.deleteByPK(id);
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
	@RequestMapping(value = "/delete/{areaCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "areaCode") String areaCode) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		sysAreaDictService.deleteByPK(areaCode);
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(areaCode);
		return ajaxResult;
	}
	
}
