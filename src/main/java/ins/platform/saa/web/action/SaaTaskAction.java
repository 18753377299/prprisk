package ins.platform.saa.web.action;

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
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.web.util.SpringUtils;
import ins.platform.saa.service.facade.SaaRoleService;
import ins.platform.saa.service.facade.SaaRoleTaskService;
import ins.platform.saa.service.facade.SaaTaskService;
import ins.platform.saa.vo.SaaRoleTaskVo;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaTaskVo;

/**
 * 权限公共Action
 */
@Controller
@RequestMapping("/saa/task")
public class SaaTaskAction extends BaseAjaxAction {
	
	@Autowired
	SaaTaskService saaTaskService;
	@Autowired
	SaaRoleService saaRoleService;
	@Autowired
	SaaRoleTaskService saaRoleTaskService;
//	@Autowired
	ShiroFilterFactoryBean shiroFilter;
	/**
	 * 进入显示权限warm页面
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list() {
		return "saa/task/TaskList";
	}
	
	@RequestMapping(value = "/search" , method = RequestMethod.POST)
	@ResponseBody
	public String search(HttpServletRequest request) {
		// 将request的parameterMap改为HashMap，否则无法通过RPC进行传输
		Map<String, String[]> paramMap = new HashMap<String, String[]>(
				request.getParameterMap());
		return saaTaskService.findForDataTables(paramMap);
	}
	
	/**
	 * AJAX保存<br>
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
		SaaTaskVo saaTask;
		List<SaaRoleVo> art = saaRoleService.findAll();
		List<SaaRoleVo> ort;
		List<SaaRoleVo> rt;
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			saaTask = new SaaTaskVo();
			ort = art;
		} else {
			saaTask = saaTaskService.findByPK(id);
			rt = new ArrayList<SaaRoleVo>();
			ort = new ArrayList<SaaRoleVo>();
			ort.addAll(art);
			for(int i=0;i<saaTask.getSaaRoleTasks().size();i++){
				rt.add(saaTask.getSaaRoleTasks().get(i).getSaaRole());
			}
			for(int i=0;i<ort.size();i++){
				for(int j=0;j<rt.size();j++){
					if(ort.get(i).getRoleCode().equals(rt.get(j).getRoleCode())){
						ort.remove(i);
						i--;
						rt.remove(j);
						break;
					}
				}
			}
		}

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaTask", saaTask);
		mav.addObject("saaRole",ort);
		mav.addObject("editMode", editMode);
		mav.setViewName("saa/task/TaskEdit");
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
			@ModelAttribute("saaTask") @Valid SaaTaskVo saaTask,
			@ModelAttribute("roleCodes") @Valid String roleCodes,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
//		Assert.hasText(saaTask.getTaskCName(), "测试人员姓名不能为空");
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)
		String[] roleCodeArray = {};
		if(roleCodes != null && !"".equals(roleCodes)){
			roleCodeArray = roleCodes.split(",");
		}
		if ("create".equalsIgnoreCase(editMode)) {
			saaTask.setCreateTime(new Date());
		} else {
			saaTask.setUpdateTime(new Date());
//			saaTaskService.deleteByPK(saaTask.getTaskCode());
		}
//		saaTaskService.save(saaTask);
		for (int i = 0; i < roleCodeArray.length; i++) {
			SaaRoleTaskVo saaRoleTask = new SaaRoleTaskVo();
			SaaRoleVo saaRole = new SaaRoleVo();
			String id = roleCodeArray[i];
			saaRole.setRoleCode(id);
			saaRoleTask.setSaaTask(saaTask);
			saaRoleTask.setSaaRole(saaRole);
			saaRoleTask.setInsertTimeForHis(new Date());
//			saaRoleTaskService.save(saaRoleTask);
			saaTask.getSaaRoleTasks().add(saaRoleTask);
		}
		saaTaskService.updateTaskAndTaskRole(saaTask);
		//重置授权信息
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		ajaxResult.setStatusText(saaTask.getTaskCode().toString());
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
		SaaTaskVo saaTask = saaTaskService.findByPK(id);

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("saaTask", saaTask);
		mav.setViewName("saa/task/TaskView");
		return mav;
	}

	/**
	 * AJAX删除动作
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete/{taskCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "taskCode") String taskCode) {
		// 1.参数校验
		// 2.一次交易处理保存操作（查询可多次）
		saaTaskService.deleteByPK(taskCode);
		//重置授权信息
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		ajaxResult.setStatusText(taskCode.toString());
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
				saaTaskService.deleteByPK(id);
			}
			// 3.返回处理结果
		}
		//重置授权信息
		@SuppressWarnings("unchecked")
		Map<String,String> cdms = (Map<String,String>)SpringUtils.getObject("chainDefinitionSectionMetaSource");
		shiroFilter.setFilterChainDefinitionMap(cdms);
		SpringUtils.getObject("shiroFilter");
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.OK.value());
		return ajaxResult;
	}
	
}