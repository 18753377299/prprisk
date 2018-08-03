package ins.platform.systransconfig.service.facade;

import java.util.Map;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SysTransConfigVo;
@Rpc
public interface SysTransConfigService extends BaseCrudService<SysTransConfigVo, String> {
	/**
	 * 返回DataTable查询的JSON字符串
	 * 
	 * @param paramMap
	 *            request请求参数
	 * @return JSON字符串形式的查询结果
	 */
	public String findForDataTables(Map<String, String[]> paramMap);
}
