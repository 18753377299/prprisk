package ins.platform.saa.service.facade;

import ins.framework.common.KeyValueVo;
import ins.framework.rpc.annotation.Rpc;
@Rpc
public interface SaaDataPowerService {

	/**
	 * 处理find条件和数据（对应条件添加业务范围限制HQL，数据添加业务权限范围限制值）
	 * 
	 * @param queryString
	 *            传入的hql条件
	 * @param params
	 *            传入的参数
	 * @return KeyValueVo
	 */
	public KeyValueVo processFind(String queryString, Object... params);

}