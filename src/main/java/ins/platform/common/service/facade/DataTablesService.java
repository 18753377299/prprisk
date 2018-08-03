package ins.platform.common.service.facade;

import java.util.Map;

import ins.framework.common.ResultPage;
import ins.framework.rpc.annotation.Rpc;

/**
 * DataTables接口
 * 
 */
@Rpc
public interface DataTablesService {

	/**
	 * 给前端页面提供的查询功能<br>
	 * 例如以下代码查询条件为匹配的数据
	 * 
	 * <pre>
	 * 	&lt;code&gt;
	 * 	 
	 * &lt;/code&gt;
	 * </pre>
	 * 
	 * @param paramMap
	 *            前端页面Controler传入的参数Map
	 * @param hql
	 *            预置hql
	 * @return 符合条件的记录
	 */
	public ResultPage<?> findForPage(Map<String, String[]> paramMap, String hql);

}
