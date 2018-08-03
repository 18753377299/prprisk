package ins.platform.saa.web.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.web.util.SpringUtils;
import ins.platform.saa.schema.SaaUserRole;
import ins.platform.saa.service.facade.SaaRoleService;
import ins.platform.saa.service.facade.SaaUserRoleService;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaUserRoleVo;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

@Controller
@RequestMapping("/saa/user")
public class SaaUserRoleAction extends BaseAjaxAction {
	
	/**
	 * 注入需要使用的Service
	 */
	@Autowired
	SaaUserRoleService saaUserRoleService;
	@Autowired
	SaaRoleService   saaRoleService;
	@Autowired
	SysUserService sysUserService;
//	@Autowired
	ShiroFilterFactoryBean shiroFilter;
	/**
	 * 进入查询页面
	 */
	@RequestMapping("/list")
	public String list() {
		return "saa/user/UserRoleList";
	}

	/**
	 * AJAX查询动作
	 */
	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) {
		// 将request的parameterMap改为HashMap，否则无法通过RPC进行传输
		String result = "";
		Map<String, String[]> paramMap = new HashMap<String, String[]>(
					request.getParameterMap());
		result = sysUserService.findForDataTables(paramMap);
		return result;
	}

	/**
	 * 进入编辑页面<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 */
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(
			@PathVariable(value = "id") String id,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验

		// 2.组织业务数据（包括处理主子表关系）
		List<SaaUserRoleVo> saaUserRoles = null;
		List<SaaRoleVo> allSaaRole = saaRoleService.findAll();
		SysUserVo user = sysUserService.findByUserCode(id);
		// 识别编辑模式是新增(create)还是修改(update)
		if (!"create".equalsIgnoreCase(editMode)) {
			saaUserRoles = saaUserRoleService.findUserRoleList(id);
			for(SaaUserRoleVo userRoleVo : saaUserRoles){
				for(SaaRoleVo roleVo:allSaaRole){
					if(userRoleVo.getSaaRole().getRoleCode().equals(roleVo.getRoleCode())){
						allSaaRole.remove(roleVo);
						break;
					}
				}
				
			}
		} 
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaUserRoles", saaUserRoles);
		mav.addObject("allSaaRole", allSaaRole);
		mav.addObject("user", user);
		mav.addObject("editMode", editMode);
		mav.setViewName("saa/user/UserRoleEdit");
		return mav;
	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@ModelAttribute("userRole") @Valid SaaUserRoleVo saaUserRole,
			@ModelAttribute("roleCodes") @Valid String roleCodes,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		Assert.hasText(saaUserRole.getUserCode(), "姓名不能为空");
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)\
		String saaUserRoleId = "";
		String[] roleCodeArray = {};
		if(roleCodes != null && !"".equals(roleCodes)){
			roleCodeArray = roleCodes.split(",");
		}
//		List<SaaUserRoleVo> userRoles = new ArrayList<SaaUserRoleVo>();
		SysUserVo user = sysUserService.findByUserCode(saaUserRole.getUserCode());
		if (!"create".equalsIgnoreCase(editMode)) {
			//保存前生成主键
			saaUserRoleService.updateUserRolesByUserCode(user,saaUserRole,roleCodeArray);
		}
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		ajaxResult.setStatusText(saaUserRoleId);
		return ajaxResult;
	}

	/**
	 * 进入显示页面
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.组织业务数据（包括处理主子表关系）
		SaaUserRole saaUserRole = saaUserRoleService.findUserRolesById(Long.parseLong(id));

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("userRole", saaUserRole);
		mav.setViewName("saa/user/UserRoleView");
		return mav;
	}

	/**
	 * AJAX删除动作
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		// 3.返回处理结果
		saaUserRoleService.deleteUserById(Long.parseLong(id));
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		ajaxResult.setStatusText(id.toString());
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
	public AjaxResult deleteAll(@PathVariable(value = "ids") String ids) {
		
		// 1.参数校验
		if (!"".equals(ids)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] idArray = ids.split(",");
			for (int i = 0; i < idArray.length; i++) {
				String id = idArray[i];
				saaUserRoleService.deleteUserById(Long.parseLong(id));
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		return ajaxResult;
	}
	
}
