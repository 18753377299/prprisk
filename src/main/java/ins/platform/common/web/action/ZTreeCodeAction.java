/******************************************************************************
* CREATETIME : 2014年6月20日 上午11:09:24
******************************************************************************/
package ins.platform.common.web.action;

import ins.framework.web.action.BaseAjaxAction;
import ins.platform.common.service.facade.CodeDictService;
import ins.platform.common.vo.ZTreeNodeVo;
import ins.platform.vo.SysCodeDictVo;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

/**
 * 树形代码选择控件Action
 * 
 * @author ★LiuPing
 */
@Controller
@RequestMapping("/ztree")
public class ZTreeCodeAction extends BaseAjaxAction {

	@Autowired
	CodeDictService codeDictService;

 

	/**
	 * 机构树查询
	 * @param search 查询的关键字，为空表示查询全部机构
	 * @param uppCode 上级机构代码
	 * @return
	 * @modified: ☆LiuPing(2014年6月20日 上午11:39:23): <br>
	 */
	@RequestMapping(value = "/codeDict", produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public String getCodeDict(String codeType, String search, String uppCode) {
		List<SysCodeDictVo> list = null;
		if (StringUtils.isBlank(search)) {
			list = codeDictService.findCodeList(codeType);
		} else {
			list = codeDictService.findCodeList(codeType, search);
		}

		List<ZTreeNodeVo> voList = new ArrayList<ZTreeNodeVo>();
		for (SysCodeDictVo codeDict : list) {
			ZTreeNodeVo treeNodeVo = new ZTreeNodeVo();
			treeNodeVo.setId(codeDict.getId().getCodeCode());
			treeNodeVo.setPId(codeDict.getUpperCode());
			treeNodeVo.setName(codeDict.getCodeName());
			treeNodeVo.setIsParent("true");
			if (!StringUtils.isBlank(search)) {
				treeNodeVo.setOpen(true);
			}
			voList.add(treeNodeVo);
		}
		return JSON.toJSONString(voList);
	}
}
