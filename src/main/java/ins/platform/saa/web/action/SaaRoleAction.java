package ins.platform.saa.web.action;

import ins.framework.cache.CacheManager;
import ins.framework.cache.CacheService;
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.web.util.SpringUtils;
import ins.platform.saa.service.facade.SaaRoleService;
import ins.platform.saa.service.facade.SaaRoleTaskService;
import ins.platform.saa.service.facade.SaaTaskService;
import ins.platform.saa.service.facade.SaaUserRoleService;
import ins.platform.saa.vo.SaaRoleTaskVo;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaTaskVo;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/saa/role")
public class SaaRoleAction extends BaseAjaxAction {
	
	@Autowired
	SaaRoleService saaRoleService;
	@Autowired
	SaaTaskService saaTaskService;
	@Autowired
	SaaRoleTaskService saaRoleTaskService;
	@Autowired
	SaaUserRoleService saaUserRoleService;
//	@Autowired
	ShiroFilterFactoryBean shiroFilter;
	

	/**
	 * 进入显示权限warm页面
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list() {
		return "saa/role/RoleList";
	}
	
	@RequestMapping(value = "/search" , method = RequestMethod.POST)
	@ResponseBody
	public String search(HttpServletRequest request) {
		// 将request的parameterMap改为HashMap，否则无法通过RPC进行传输
		Map<String, String[]> paramMap = new HashMap<String, String[]>(
				request.getParameterMap());
		return saaRoleService.findForDataTables(paramMap);
	}
	
	/**
	 * 编辑<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView edit(
		@PathVariable(value = "id") String id,
		@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		
		// 2.组织业务数据（包括处理主子表关系）
		SaaRoleVo saaRole;
		List<SaaTaskVo> ast = saaTaskService.findAll();;
		List<SaaTaskVo> ost;
		List<SaaTaskVo> st;
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			saaRole = new SaaRoleVo();
			ost = ast;
		} else {
			saaRole = saaRoleService.findByPK(id);
			st = new ArrayList<SaaTaskVo>();
			ost = new ArrayList<SaaTaskVo>();
			ost.addAll(ast);
			for(int i=0;i<saaRole.getSaaRoleTasks().size();i++){
				st.add(saaRole.getSaaRoleTasks().get(i).getSaaTask());
			}
			for(int i=0;i<ost.size();i++){
				for(int j=0;j<st.size();j++){
					if(ost.get(i).getTaskCode().equals(st.get(j).getTaskCode())){
						ost.remove(i);
						i--;
						st.remove(j);
						break;
					}
				}
			}
		}

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaRole", saaRole);
		mav.addObject("saaTask",ost);
		mav.addObject("editMode", editMode);
		mav.setViewName("saa/role/RoleEdit");
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
			@ModelAttribute("saaRole") @Valid SaaRoleVo saaRole,
			@ModelAttribute("nodes1") @Valid String ids,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
//		Assert.hasText(saaRole.getRoleCName(), "测试人员姓名不能为空");
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)
		String[] idArray = {};
		if(ids != null && !"".equals(ids)){
			idArray = ids.split(",");
		}
		if ("create".equalsIgnoreCase(editMode)) {
			saaRole.setCreateTime(new Date());
			saaRoleService.save(saaRole);
		} else {
			saaRole.setUpdateTime(new Date());		
		for (int i = 0; i < idArray.length; i++) {
			SaaRoleTaskVo saaRoleTask = new SaaRoleTaskVo();
			SaaTaskVo saaTask = new SaaTaskVo();
			String id = idArray[i];
			saaTask.setTaskCode(id);
			saaRoleTask.setSaaTask(saaTask);
			saaRoleTask.setSaaRole(saaRole);
			saaRoleTask.setInsertTimeForHis(new Date());
			saaRole.getSaaRoleTasks().add(saaRoleTask);
		}
		saaRoleService.updateRoleAndRoleTask(saaRole);
		}
		//重置授权信息
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		ajaxResult.setStatusText(saaRole.getRoleCode().toString());
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
		SaaRoleVo saaRole = saaRoleService.findByPK(id);

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaRole", saaRole);
		mav.setViewName("saa/role/RoleView");
		return mav;
	}

	/**
	 * AJAX删除动作
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete/{roleCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "roleCode") String roleCode) {
		// 1.参数校验
		// 2.一次交易处理保存操作（查询可多次）
		saaRoleService.deleteByPK(roleCode);
		// 3.返回处理结果
//		//重置授权信息
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		ajaxResult.setStatusText(roleCode.toString());
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
				saaRoleService.deleteByPK(id);
			}
			// 3.返回处理结果
		}
//		//重置授权信息
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		return ajaxResult;
	}

}
