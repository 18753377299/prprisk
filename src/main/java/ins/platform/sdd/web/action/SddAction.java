package ins.platform.sdd.web.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.httpclient.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.web.AjaxResult;
import ins.framework.web.bind.annotation.FormModel;
import ins.platform.common.web.action.BaseAction;
import ins.platform.sdd.service.facade.SddService;
import ins.platform.sdd.service.facade.SddTypeService;
import ins.platform.vo.SddCodeVo;
import ins.platform.vo.SddTypeVo;

@Controller
@RequestMapping("/sdd")
public class SddAction extends BaseAction {
	@Autowired
	private SddTypeService sddTypeService;
	@Autowired
	private SddService sddService;
//	@Autowired
//	private SddCodeService sddCodeService;

	/**
	 * **************************Function Start******************************
	 */
	/**
	 * 查询
	 * 
	 * @return
	 */
	@RequestMapping("/list")
	public String list() {
		return "sdd/SddTypeList";
	}

	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) {
		Map<String, String[]> requestMap = new HashMap<String, String[]>(request.getParameterMap());
		return sddTypeService.findForDataTables(requestMap);
	}

	/**
	 * 编辑或者新增
	 * 
	 * @return
	 */
	@RequestMapping(value = "/edit/{codeType}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable(value = "codeType") String codeType,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		SddTypeVo sddTypeVo;
		// 识别是编辑模式是新增create 还是修改 upadte
		if ("create".equalsIgnoreCase(editMode)) {
			sddTypeVo = new SddTypeVo();
		} else {
			sddTypeVo = sddTypeService.findByPK(codeType);
		}
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sddType", sddTypeVo);
		mav.addObject("editMode", editMode);
		mav.setViewName("sdd/SddTypeEdit");
		return mav;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
		@FormModel("sddType") SddTypeVo sddType,
		@FormModel("sddCodeList") List<SddCodeVo> sddCodeList,
		@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 识别更新或 新增
		if ("create".equalsIgnoreCase(editMode)) {
			sddService.save(sddType,sddCodeList);
		} else {
			sddService.update(sddType,sddCodeList);
		}
		// 返回结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText("");
		return ajaxResult;
	}
	@RequestMapping(value = "/view/{codeType}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable(value = "codeType") String codeType) {

		SddTypeVo sddType = sddTypeService.findByPK(codeType);
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sddType", sddType);
		mav.setViewName("sdd/SddTypeView");
		return mav;
	}
	/**
	 * AJAX删除动作
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/delete/{codeType}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(
			@PathVariable(value = "codeType") String codeType) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		sddTypeService.deleteByPK(codeType);
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(codeType);
		return ajaxResult;
	}
}
