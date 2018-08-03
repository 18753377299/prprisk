package ins.platform.syscompany.web.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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

import com.alibaba.fastjson.JSON;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.vo.TreeNodeVo;
import ins.platform.common.web.util.CompanyUtils;
import ins.platform.syscompany.service.facade.SysCompanyService;
import ins.platform.syscompany.vo.ComConfigVo;
import ins.platform.vo.SysCompanyVo;

@Controller
@RequestMapping("/sysCompany")
public class SysCompanyAction extends BaseAjaxAction  {
	
	@Autowired
	SysCompanyService sysCompanyService;

	// 查询页面
	@RequestMapping("/list")
	public String list() {
		return "sysCompany/SysCompanyConfig";
	}

	// ajax 查询
	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) {

		Map<String, String[]> requestMap = new HashMap<String, String[]>(request
				.getParameterMap());
		return sysCompanyService.findForDataTables(requestMap);

	}

	// 编辑 editMode 用于区分是新增 create 还是修改 update ，默认修改
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(
			@PathVariable(value = "id") String id,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {

		SysCompanyVo sysCompany;
		// 识别是编辑模式是新增create 还是修改 upadte
		if ("create".equalsIgnoreCase(editMode)) {
			String comPath = sysCompanyService.findByPK(Long.parseLong(id)).getComPath();
			sysCompany = new SysCompanyVo();
			sysCompany.setComPath(comPath);
		} else {
			sysCompany = sysCompanyService.findByPK(Long.parseLong(id));
		}
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysCompany", sysCompany);
		mav.addObject("editMode", editMode);
		mav.setViewName("sysCompany/SysCompanyEdit");
		return mav;

	}

	// AJAX保存
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@ModelAttribute("sysCompany") @Valid SysCompanyVo sysCompany,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {

		// 识别更新或 新增
		if ("create".equalsIgnoreCase(editMode)) {
			sysCompanyService.save(sysCompany);
		} else {
			sysCompanyService.update(sysCompany);
		}
		// 返回结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
//		ajaxResult.setStatusText(sysCompany.getId().toString());
		return ajaxResult;
	}

	// 显示页面
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable(value = "id") String id) {

		SysCompanyVo sysCompany = sysCompanyService
				.findByPK(Long.parseLong(id));
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysCompany", sysCompany);
		mav.setViewName("sysCompany/SysCompanyView");
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
				sysCompanyService.deleteByPK(Long.parseLong(id));
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
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		sysCompanyService.deleteThisAndSub(Long.parseLong(id));
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(id);
		return ajaxResult;
	}
	
	@RequestMapping(value = "/setTreeNode")
	@ResponseBody
	public AjaxResult setTreeNode(String str){
		List<SysCompanyVo> vos;
		if(str == null || "".equals(str)){
			vos = sysCompanyService.findAll();
		}else{
			vos = sysCompanyService.findComLike(str);
		}
		List<TreeNodeVo> treeNodes = new ArrayList<TreeNodeVo>();
		for(int i=0;i<vos.size();i++){
			TreeNodeVo treeNodeVo = new TreeNodeVo();
			treeNodeVo.setId(vos.get(i).getId());
			treeNodeVo.setpId(sysCompanyService.getParentId(vos.get(i).getId()));
			treeNodeVo.setName(vos.get(i).getComCName());
			treeNodeVo.setLevel(CompanyUtils.getComLevel(vos.get(i).getComPath()));
			if(sysCompanyService.hasSubCompany(vos.get(i).getComCode())){
				treeNodeVo.setIsParent(true);
//				treeNodeVo.setIconOpen("/pdfb4/img/menu/1_open.png");
//				treeNodeVo.setIconClose("/pdfb4/img/menu/1_close.png");
			}else{
				treeNodeVo.setIsParent(false);
//				treeNodeVo.setIcon("/pdfb4/img/menu/2.png");
			}
			if(CompanyUtils.getComLevel(vos.get(i).getComPath()) == 1){
				treeNodeVo.setOpen(true);
			}
			treeNodes.add(treeNodeVo);
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setData(treeNodes);
		return ajaxResult;
	}
	
	@RequestMapping(value = "/add")
	@ResponseBody
	public AjaxResult add(HttpServletRequest request,String pId,String name) {
		SysCompanyVo vo = new SysCompanyVo();
		SysCompanyVo pVo = sysCompanyService.findByPK(Long.parseLong(pId));
		vo.setInsertTimeForHis(new Date());
		vo.setComCode("");
		vo.setComPath(pVo.getComPath() + "/");
		vo.setComCName(name + "_子机构");
		TreeNodeVo treeNode = new TreeNodeVo();
		Long id = sysCompanyService.save(vo);
		if(id != null){
			treeNode.setId(id);
			treeNode.setpId(sysCompanyService.getParentId(id));
			treeNode.setName(vo.getComCName());
			treeNode.setLevel(CompanyUtils.getComLevel(vo.getComPath()));
			treeNode.setIsParent(false);
//			treeNode.setIcon("/pdfb4/img/menu/2.png");
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setData(treeNode);
		return ajaxResult;
	}
	
	@RequestMapping(value = "/show", produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public String show(String pId) {
		List<SysCompanyVo> list  ;
		if (pId == null) {
			list = sysCompanyService.findTopComForConfig();
		} else {
			list = sysCompanyService.findSubComForConfig(Long.parseLong(pId));
		}
		List<ComConfigVo> voList = new ArrayList<ComConfigVo>();
		for (SysCompanyVo sysCompany : list) {
			ComConfigVo comConfig = new ComConfigVo();
			comConfig.setId(sysCompany.getId());
			comConfig.setpId(sysCompanyService.getParentId(sysCompany.getId()));
			comConfig.setName(sysCompany.getComCName());
			comConfig.setLevel(CompanyUtils.getComLevel(sysCompany.getComPath()));
			comConfig.setIsParent("true");
			voList.add(comConfig);
		}
		return JSON.toJSONString(voList);
	}

	@RequestMapping(value = "/update", produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public AjaxResult update(ComConfigVo vo) {
		sysCompanyService.updateComForDrop(vo);
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}
	
	/**
	 * 进入编辑页面<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 */
	@RequestMapping(value = "/configEdit")
	@ResponseBody
	public AjaxResult configEdit(String id) {
		// 1.参数校验
		SysCompanyVo vo = sysCompanyService.findByPK(Long.parseLong(id));
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setData(vo);
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

}
