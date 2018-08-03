package ins.platform.saa.web.action;

import java.util.List;
import java.util.Map;
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.framework.web.bind.annotation.FormModel;
import ins.platform.common.web.util.SpringUtils;
import ins.platform.saa.service.facade.SaaFactorService;
import ins.platform.saa.service.facade.SaaUserPowerService;
import ins.platform.saa.vo.SaaFactorVo;
import ins.platform.saa.vo.SaaUserPowerVo;
import org.apache.http.HttpStatus;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * userPower管理Action
 *
 */
@Controller
@RequestMapping("/saa/userpower")
public class SaaUserPowerAction extends BaseAjaxAction {

	@Autowired
	SaaFactorService saaFactorService;

	@Autowired
	SaaUserPowerService saaUserPowerService;
	
//	@Autowired
	ShiroFilterFactoryBean shiroFilter;
	/**
	 * 进入编辑页面<br>
	 * editMode用于区分是新增(create)还是修改(update)
	 */
	@RequestMapping(value = "/edit/{userCode}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable(value = "userCode") String userCode,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		// 2.组织业务数据（包括处理主子表关系）
		List<SaaUserPowerVo> saaUserPowerList;
		List<SaaFactorVo> allSaaFactorList;
		// 识别编辑模式是新增(create)还是修改(update)
		allSaaFactorList = saaFactorService.findAll();
		saaUserPowerList = saaUserPowerService.findByUserCode(userCode);
		for (SaaUserPowerVo userPowerVo : saaUserPowerList) {
			for (SaaFactorVo factorVo : allSaaFactorList) {
				if (userPowerVo.getSaaFactor().getFactorCode().equals(factorVo.getFactorCode())) {
					allSaaFactorList.remove(factorVo);
					break;
				}
			}

		}
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaUserPowerList", saaUserPowerList);
		mav.addObject("allSaaFactorList", allSaaFactorList);
		mav.addObject("userCode", userCode);
		mav.addObject("editMode", editMode);
		mav.setViewName("saa/userpower/UserPowerEdit");
		return mav;

	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(@FormModel("saaUserPowerList") List<SaaUserPowerVo> saaUserPowerList,
			@ModelAttribute("factors") String factors, @ModelAttribute("userCode") String userCode,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		String[] factorCodes = {};
		if (factors != null && !"".equals(factors)) {
			factorCodes = factors.split(",");
			saaUserPowerService.updateUserPowers(saaUserPowerList, factorCodes, userCode);
		}
		
		// 4.返回处理结果
		// 重置授权信息
		@SuppressWarnings("unchecked")
		Map<String, String> cdms = (Map<String, String>) SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText("");
		return ajaxResult;
	}

	/**
	 * AJAX删除动作
	 * 
	 * @param factorID
	 * @return
	 */
	@RequestMapping(value = "/delete/{fieldID}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "fieldID") String fieldID) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		saaUserPowerService.deleteByPK(Long.parseLong(fieldID));
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(fieldID);
		return ajaxResult;
	}

	/**
	 * AJAX批量删除动作
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/deleteAll/{checkCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteAll(@PathVariable(value = "checkCode") String checkCode) {
		// 1.参数校验
		if (!"".equals(checkCode)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] saaFactorIdArray = checkCode.split(",");
			for (int i = 0; i < saaFactorIdArray.length; i++) {
				String fieldID = saaFactorIdArray[i];
				saaUserPowerService.deleteByPK(Long.parseLong(fieldID));
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

}