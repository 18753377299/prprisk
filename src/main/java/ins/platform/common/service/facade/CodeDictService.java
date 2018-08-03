package ins.platform.common.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SysCodeDictIdVo;
import ins.platform.vo.SysCodeDictVo;
@Rpc
public interface CodeDictService extends BaseCrudService<SysCodeDictVo, SysCodeDictIdVo> {
	/**
	 * 根据代码类型查询代码列表
	 * 
	 * @param codeType
	 *            代码类型
	 * @return 代码列表
	 */
	public List<SysCodeDictVo> findCodeList(String codeType);

	public List<SysCodeDictVo> findCodeList(String codeType, String keyValue);

	/**
	 * 查询某个代码类型的下级代码列表
	 * 
	 * @param codeType
	 *            代码类型
	 * @param upperCode
	 *            上级代码
	 * @return 下级代码列表
	 */
	public List<SysCodeDictVo> findCodeListByUppCode(String codeType, String upperCode);
}
