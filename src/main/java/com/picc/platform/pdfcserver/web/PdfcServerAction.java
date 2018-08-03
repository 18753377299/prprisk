package com.picc.platform.pdfcserver.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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

import ins.framework.web.AjaxResult;
import ins.platform.common.web.action.BaseAction;

import com.picc.platform.pdfcserver.service.facade.PdfcServerService;
import com.picc.platform.pdfcserver.schema.vo.PdfcServerVo;


@Controller
@RequestMapping("/pdfcserver")
public class PdfcServerAction extends BaseAction {
	/** pdfcServer服务 */
	@Autowired
	private PdfcServerService pdfcServerService;
	private static final Log logger = LogFactory.getLog(PdfcServerAction.class);
	

	/** **************************Function Start****************************** */
	/**
	 * 准备查询方法
	 * 
	 * @return
	 */
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public String list() {
		logger.debug("pdfcServer菜单跳转");
		
		return "platform/pdfcserver/PdfcServerList";
	}

	/**
	 * pdfcServer列表查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	@ResponseBody
	public String index(HttpServletRequest request) {
		logger.debug("查询满足条件pdfcServer信息");
		
		//将request的parameterMap改为HashMap，否则无法过RPC进行传输
		Map<String, String[]> paramMap = new HashMap<String, String[]>(request.getParameterMap());
		String result = pdfcServerService.findForDataTables(paramMap);
		
		return result;
	}

	/**
	 * 准备增加pdfcServer信息，进入增加页�?
	 * 
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView _new(@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
		logger.debug("准备增加pdfcServer信息");
		
		PdfcServerVo pdfcServer=new PdfcServerVo();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pdfcServer", pdfcServer);
		mav.addObject("editMode", editMode);
		mav.setViewName("platform/pdfcserver/PdfcServerEdit");
		
		return mav;
	}

	/**
	 * 保存
	 * editMode用于区分是新(create)还是修改(update)，默认修
	 * 
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult create(
			@ModelAttribute("pdfcServer") @Valid PdfcServerVo pdfcServer,
			@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
		
		// 识别编辑模式是新�?(create)还是修改(update)
		pdfcServerService.save(pdfcServer);
		
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText("保存成功");
		
		return ajaxResult;
	}
		
	/**
	* 根据主键进入查看页面
	* 
	*/
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView show(@PathVariable(value = "id") java.lang.String id) {
		// 根据id查询
		PdfcServerVo pdfcServer = pdfcServerService.findByPK(id);

		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("pdfcServer", pdfcServer);
		mav.setViewName("platform/pdfcserver/PdfcServerView");
		
		return mav;
	}	
	
	/**
	* 根据主键进入修改页面
	* 
	*/
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView edit(
		@PathVariable(value = "id") java.lang.String id,
		@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		PdfcServerVo pdfcServer = pdfcServerService.findByPK(id);

		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("pdfcServer", pdfcServer);
		mav.addObject("editMode", editMode);
		mav.setViewName("platform/pdfcserver/PdfcServerEdit");
		
		return mav;
	}
	
	/**
	* 根据主键修改
	* 
	*/
	@RequestMapping(value="/{id}",method = RequestMethod.PUT)
	@ResponseBody
	public AjaxResult update(
			@PathVariable(value = "id") java.lang.String id,
			@ModelAttribute("pdfcServer") @Valid PdfcServerVo pdfcServer,
			@RequestParam(value = "editMode", defaultValue = "create") String editMode) {

		// 识别编辑模式是新建(create)还是修改(update)
		pdfcServerService.update(pdfcServer);
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		//ajaxResult.setStatusText(pdfcServer.getId().toString());
		
		return ajaxResult;
	}
	
	/**
	 * 根据主键删除
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "id") java.lang.String id) {
		// 根据ID删除用户
		pdfcServerService.deleteByPK(id);
		
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		//ajaxResult.setStatusText(id+"");
		
		return ajaxResult;
	}
	
	/**
	 * AJAX批量删除
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(value = "/deleteAll/{ids}", method = RequestMethod.DELETE)
	@ResponseBody
	public AjaxResult batchDelete(@PathVariable(value = "ids") String ids) {
		if (!"".equals(ids)) {
			String[] idArray = ids.split(",");
			for (int i = 0; i < idArray.length; i++) {
				
				java.lang.String id = idArray[i];
				pdfcServerService.deleteByPK(id);
			}
		}
		
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		
		return ajaxResult;
	}
	
}
