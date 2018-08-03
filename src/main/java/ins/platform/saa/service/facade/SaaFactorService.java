package ins.platform.saa.service.facade;

import java.util.List;
import java.util.Map;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.vo.SaaFactorFieldVo;
import ins.platform.saa.vo.SaaFactorVo;
@Rpc
public interface SaaFactorService extends BaseCrudService<SaaFactorVo, String> {

	/**
	 * @param saaFactor
	 * 添加factor
	 */
	public void addFactor(SaaFactorVo saaFactor);

	/**
	 * @return
	 * 查询vo列表
	 */
	public List<SaaFactorVo> findFactors();
	
	public String findForDataTables(Map<String, String[]> paramMap);
	
	/* (non-Javadoc)
	 * @see ins.framework.service.BaseCrudService#findByPK(java.io.Serializable)
	 * 通过主键查找
	 */
	public SaaFactorVo findByPK(String factorCode);
	
	/* (non-Javadoc)
	 * @see ins.framework.service.BaseCrudService#deleteByPK(java.io.Serializable)
	 * 通过主键删除
	 */
	public void deleteByPK(String factorCode);
	
	public List<SaaFactorVo> findAll();
	
	public String save(SaaFactorVo vo,List<SaaFactorFieldVo> saaFactorFieldList);
	
	public void update(SaaFactorVo vo);
	/**
	 * 更新factor
	 * @param saaFactorVo 提交的表单
	 * @param factorOldCode 修改前的代码
	 */
	public void updatePowerAndField(SaaFactorVo saaFactorVo,List<SaaFactorFieldVo> saaFactorFieldList);
	
}