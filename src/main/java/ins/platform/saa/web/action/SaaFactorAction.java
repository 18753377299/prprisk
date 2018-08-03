package ins.platform.saa.web.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.framework.web.bind.annotation.FormModel;
import ins.platform.saa.service.facade.SaaFactorService;
import ins.platform.saa.vo.SaaFactorFieldVo;
import ins.platform.saa.vo.SaaFactorVo;


/**
 * 权限因子管理Action
 */
@Controller
@RequestMapping("/saa/factor")
public class SaaFactorAction extends BaseAjaxAction {
	/**
	 * 注入需要使用的Service
	 */
	@Autowired
	SaaFactorService saaFactorService;

	/**
	 * 进入权限因子管理页面
	 */
	@RequestMapping("/list")
	public String list() {
		return "saa/factor/FactorList";
	}

	/**
	 * AJAX查询动作
	 */
	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) {
		Map<String, String[]> requestMap = (Map<String, String[]>) request
				.getParameterMap();
		return saaFactorService.findForDataTables(requestMap);
	}

	/**
	 * 进入编辑页面<br>
	 * editMode用于区分是新增(create)还是修改(update)
	 */
	@RequestMapping(value = "/edit/{factorCode}", method = RequestMethod.GET)
	public ModelAndView edit(
			@PathVariable(value = "factorCode") String factorCode,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		// 2.组织业务数据（包括处理主子表关系）
		SaaFactorVo saaFactor;
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			saaFactor = new SaaFactorVo();
		} else {
			saaFactor = saaFactorService.findByPK(factorCode);
		}
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaFactor", saaFactor);
		mav.addObject("editMode", editMode);
		mav.setViewName("saa/factor/FactorEdit");
		return mav;
	}
			

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@FormModel("saaFactor") SaaFactorVo saaFactor,
			@FormModel("saaFactorFieldList") List<SaaFactorFieldVo> saaFactorFieldList,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			saaFactorService.save(saaFactor,saaFactorFieldList);
		} else {
			saaFactorService.updatePowerAndField(saaFactor,saaFactorFieldList);
		}
		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(saaFactor.getFactorCode());
		return ajaxResult;
	}

	/**
	 * AJAX删除动作
	 * 
	 * @param factorCode
	 * @return
	 */
	@RequestMapping(value = "/delete/{factorCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(
			@PathVariable(value = "factorCode") String factorCode) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		saaFactorService.deleteByPK(factorCode);
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(factorCode);
		return ajaxResult;
	}

	/**
	 * AJAX批量删除动作
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/deleteAll/{ids}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteAll(
			@PathVariable(value = "ids") String factorCode) {
		// 1.参数校验
		if (!"".equals(factorCode)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] saaFactorIdArray = factorCode.split(",");
			for (int i = 0; i < saaFactorIdArray.length; i++) {
				String factorCode1 = saaFactorIdArray[i];
				saaFactorService.deleteByPK(factorCode1);
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}
}