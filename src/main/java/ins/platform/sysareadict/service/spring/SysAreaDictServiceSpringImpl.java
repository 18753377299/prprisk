package ins.platform.sysareadict.service.spring;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.common.ResultPage;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.schema.SysAreaDict;
import ins.platform.sysareadict.service.facade.SysAreaDictService;
import ins.platform.vo.SysAreaDictVo;
@Rpc
@Service(value = "sysAreaDictService")
public class SysAreaDictServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SysAreaDict, String,SysAreaDictVo, String> implements
		SysAreaDictService {

	@Autowired
	private DataTablesService dataTablesService;

	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SysAreaDict";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "areaCode",
				"areaName", "fullName", "areaLevel",
				"postCode");
	}
}
