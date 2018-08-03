package ins.instance.vue.web.action;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.instance.vue.vo.Model;

import org.apache.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/risk")
public class InstanceOfVueAction extends BaseAjaxAction {

	// 定义静态变量存储数据，用于测试数据回显
	private static Model md = new Model();

	/**
	 * @功能：跳转编辑页面
	 * @param
	 * @return ModelAndView
	 * @作者：陈磊
	 * @日期：2017-9-13
	 * @修改记录：
	 */

	@RequestMapping(value = "/addVue", method = RequestMethod.GET)
	public ModelAndView listVue() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("instance/ComponentsModel");
		return mv;
	}

	/**
	 * @功能：接收js提交数据入库
	 * @param 暂存页面提交数据
	 * @return AjaxResult
	 * @作者：陈磊
	 * @日期：2017-9-13
	 * @修改记录：
	 */
	@RequestMapping(value = "/saveVue")
	@ResponseBody
	public AjaxResult mysaveVue(@RequestBody Model mo) {
		md = mo;
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setData(md);
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText("保存成功");
		return ajaxResult;

	}

	/**
	 * @功能：跳转回显页面
	 * @param
	 * @return ModelAndView
	 * @throws Exception
	 * @作者：陈磊
	 * @日期：2017-9-13
	 * @修改记录：
	 */
	@RequestMapping(value = "/showResultVue", method = RequestMethod.GET)
	public ModelAndView showResultVue(
			@RequestParam(value = "editMode", defaultValue = "browse") String editMode,
			@RequestParam(value = "id") String id) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("editMode", editMode);
		mv.addObject("id", id);
		mv.setViewName("instance/ComponentsModel");
		return mv;
	}

	/**
	 * @功能：ajax请求获取数据
	 * @param
	 * @return Model
	 * @作者：陈磊
	 * @日期：2017-9-13
	 * @修改记录：
	 */
	@RequestMapping(value = "/getmydatajsonVue")
	@ResponseBody
	public Model getDataJsonVue(
			@RequestParam(value = "editModel", defaultValue = "browse") String editModel,
			@RequestParam(value = "id") String id) {
		md.setEditModel(editModel);
		md.setScore(2);
		return md == null ? null : md;

	}

	/**
	 * @功能：查询带回方法
	 * @params codeFieldId nameFieldId
	 * @return ModelAndView
	 * @作者：陈磊
	 * @日期：2017-9-13
	 * @修改记录：
	 */
	@RequestMapping("/userLookUp.dialog")
	public ModelAndView userLookUp(
			@RequestParam("codeFieldId") String codeFieldId,
			@RequestParam("nameFieldId") String nameFieldId) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("codeFieldId", codeFieldId);
		mav.addObject("nameFieldId", nameFieldId);
		mav.setViewName("showcase/lookup/UserLookUpList");
		return mav;
	}

}
