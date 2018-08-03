package ins.platform.saa.service.facade;

import java.util.List;
import java.util.Map;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.schema.SaaFactorField;
import ins.platform.saa.vo.SaaFactorFieldVo;
@Rpc
public interface SaaFactorFieldService extends BaseCrudService<SaaFactorFieldVo, String> {

	public void addField(SaaFactorFieldVo saaFactorField);

	public List<SaaFactorFieldVo> findByFactorCode(String factorCode);

	public String findForDataTables(Map<String, String[]> paramMap);
	
	/**
	 * @param id 主键
	 * @return saaFactorField
	 */
	public SaaFactorField findByPK(long id);
	
	/**
	 * @param vo
	 * @return 保存表
	 */
	public String save(SaaFactorFieldVo vo);
	/**
	 * @param vo
	 * 更新表信息
	 */ 
	public void update(SaaFactorFieldVo vo);
	

	public void deleteByPK(Long id);
}