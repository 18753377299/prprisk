package ins.platform.systransconfig.service.spring;

import ins.framework.common.ResultPage;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.schema.SysTransConfig;
import ins.platform.systransconfig.service.facade.SysTransConfigService;
import ins.platform.vo.SysTransConfigVo;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Rpc
@Service(value = "sysTransConfigService")
public class SysTransConfigServiceSpringImpl
		extends
		AbstractBaseCrudServiceSpringImpl<SysTransConfig, String, SysTransConfigVo, String>
		implements SysTransConfigService {

	@Autowired
	private DataTablesService dataTablesService;

	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SysTransConfig";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "transType",
				"transName", "selectTable", "selectCode", "selectName",
				"selectWhere", "pararmValue", "orderBy", "remark");
	}

}
