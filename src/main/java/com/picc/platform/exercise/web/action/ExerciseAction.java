 package com.picc.platform.exercise.web.action;
import ins.framework.web.AjaxResult;
import ins.platform.common.web.action.BaseAction;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.picc.platform.exercise.service.facade.ExerciseService;
import com.picc.platform.exercise.vo.ExerciseVo;


@Controller
@RequestMapping("/exercise")
public class ExerciseAction extends BaseAction  {
	private static final String EXERCISE="exercise";
	
		@Autowired
		ExerciseService exerciseService;
		/**
		 * 进入查询页面
		 * @return
		 * @throws Exception
		 */
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public String list() throws Exception {
			return "exercise/ExerciseList";
		}
		/**
		 * 查询
		 * @param request
		 * @return
		 */
		@RequestMapping(value = "/index", method = RequestMethod.GET)
		@ResponseBody
		public String index(HttpServletRequest request) {
			// 将request的parameterMap改为HashMap，否则无法通过RPC进行传输
			String result = "";
			Map<String, String[]> paramMap = new HashMap<String, String[]>(
						request.getParameterMap());
			result = exerciseService.findForDataTables(paramMap);
			return result;

		}
		/**
		 * 新增
		 * AJAX保存进入<br>
		 * editMode用于区分是新增(create)还是修改(update)，默认修改
		 * 
		 */
		@RequestMapping(value = "/new", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView _new(
				@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
			// 1.参数校验
			// 2.组织业务数据（包括处理主子表关系）
			// 3.一次交易处理保存操作（查询可多次）
			ExerciseVo exercise = new ExerciseVo();
			// 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject(EXERCISE, exercise);
			mav.addObject("editMode", editMode);
			mav.setViewName("exercise/ExerciseEdit");
			return mav;
		}

		/**
		 * 新增保存
		 * AJAX保存<br>
		 * editMode用于区分是新增(create)还是修改(update)，默认修改
		 * 
		 */
		@RequestMapping(method = RequestMethod.POST)
		@ResponseBody
		public AjaxResult create(
				@ModelAttribute("exercise") @Valid ExerciseVo exercise,
				@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
			// 1.参数校验
			// Assert.hasText(sysUser.getName(), "用户名不能为空");
			// 2.组织业务数据（包括处理主子表关系）
			// 3.一次交易处理保存操作（查询可多次）
			// 识别编辑模式是新增(create)还是修改(update)

			exerciseService.save(exercise);
			// 4.返回处理结果
			AjaxResult ajaxResult = new AjaxResult();
			ajaxResult.setStatus(HttpStatus.SC_OK);
			ajaxResult.setStatusText("保存成功");
			return ajaxResult;
		}
		/**
		 * 修改
		 * @param id
		 * @param editMode
		 * @return
		 */
		@RequestMapping(value = "/{id}/edit/", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView edit(
				@PathVariable(value = "id") String id,
				@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
			// 1.参数校验
			// 返回处理结果
			// 2.组织业务数据（包括处理主子表关系）
			// 3.一次交易处理保存操作（查询可多次）
			ExerciseVo exercise = exerciseService.findByPK(id);

			// 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject("exercise", exercise);
			mav.addObject("editMode", editMode);
			mav.setViewName("exercise/ExerciseEdit");
			return mav;
		}
		//保存修改
		@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
		@ResponseBody
		public AjaxResult update(
				@PathVariable(value = "id") String id,
				@ModelAttribute("exercise") @Valid ExerciseVo exercise,
				@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
			// 1.参数校验
			// Assert.hasText(sysUser.getName(), "用户名不能为空");
			// 2.组织业务数据（包括处理主子表关系）
			// 3.一次交易处理保存操作（查询可多次）
			// 识别编辑模式是新增(create)还是修改(update)
			exerciseService.update(exercise);
			// 4.返回处理结果
			AjaxResult ajaxResult = new AjaxResult();
			ajaxResult.setStatus(HttpStatus.SC_OK);
			ajaxResult.setStatusText(exercise.getUserCode());
			return ajaxResult;
		}
		
		@RequestMapping(value = "/{id}", method = RequestMethod.GET)
		public ModelAndView show(@PathVariable(value = "id") String id) {
			// 根据userCode查询出来该用户
			ExerciseVo exercise = exerciseService.findByPK(id);

			// 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject("exercise", exercise);
			mav.setViewName("exercise/ExerciseView");
			return mav;
		}

		/**
		 * AJAX删除动作，在此针对用户不做真正意义上的删除操作，只是将用户验证状态设置未验证
		 * 
		 * @param id
		 * @return
		 */
		@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
		@ResponseBody
		public AjaxResult delete(@PathVariable(value = "id") String id) {
			// 1.参数校验
			// 根据ID删除用户
			exerciseService.deleteByPK(id);
			// 3.返回处理结果
			AjaxResult ajaxResult = new AjaxResult();
			ajaxResult.setStatus(HttpStatus.SC_OK);
			ajaxResult.setStatusText(id + "");
			return ajaxResult;
		}
		/**
		 * AJAX批量删除动作,假删除，只是将用户表中一个字段的值
		 * 
		 * @param id
		 * @return
		 */
		@RequestMapping(value = "/{ids}/batchdelete/", method = RequestMethod.DELETE)
		@ResponseBody
		public AjaxResult batchDelete(@PathVariable(value = "ids") String ids) {
			// 1.参数校验
			if (!"".equals(ids)) {
				// 2.一次交易处理保存操作（查询可多次）
				String[] idArray = ids.split(",");
				for (int i = 0; i < idArray.length; i++) {
					String id = idArray[i];
					exerciseService.deleteByPK(id);
				}
				// 3.返回处理结果
			}
			AjaxResult ajaxResult = new AjaxResult();
			ajaxResult.setStatus(HttpStatus.SC_OK);
			return ajaxResult;
		}

}
