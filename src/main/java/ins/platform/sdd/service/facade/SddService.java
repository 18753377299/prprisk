package ins.platform.sdd.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.vo.SddCodeVo;
import ins.platform.vo.SddTypeVo;

/**
 * Sinosoft Data Dict 中科软数据字典服务
 * 
 * 
 */
@Rpc
public interface SddService {
	/**
	 * 获取所有有效字典类型
	 * 
	 * @return 所有有效字典类型
	 */
	public List<SddTypeVo> findAllValidType();

	/**
	 * 根据字典类型和语言获取所有有效字典代码
	 * 
	 * @param type
	 *            字典类型
	 * @param language
	 *            语言代码
	 * @return 所有有效字典代码
	 */
	public List<SddCodeVo> findValidCodeByTypeAndLanguage(String type, String language);

	/**
	 * 根据字典类型获取所有有效字典代码
	 * 
	 * @param type
	 *            字典类型
	 * @return 所有有效字典代码
	 */
	public List<SddCodeVo> findValidCodeByType(String type);

	/**
	 * 根据Code获取App_Conf类型的代码对象
	 * 
	 * @param code
	 *            代码Code
	 * @return SddCodeVo
	 */
	public SddCodeVo findAppConfCodeByCode(String code);
	/**
	 * 更新代码信息
	 * @param sddType 代码类型
	 * @param sddCodeList 代码列表
	 */
	public void update(SddTypeVo sddType,List<SddCodeVo> sddCodeList);
	/**
	 * 保存代码信息
	 * @param sddType 代码类型
	 * @param sddCodeList 代码列表
	 */
	public void save(SddTypeVo sddType,List<SddCodeVo> sddCodeList);
}
