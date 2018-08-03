package ins.platform.common.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.vo.SysAreaDictVo;
@Rpc
public interface AreaDictService {

	/**
	 * 查询某个地区的下级
	 * 
	 * @param upperCode
	 *            地区代码
	 * @return 某个地区的下级
	 */
	public List<SysAreaDictVo> findChildArea(String upperCode);
}
