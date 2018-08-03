package ins.platform.saa.service.facade;

import java.util.List;
import java.util.Map;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.schema.SaaUserPower;
import ins.platform.saa.vo.SaaUserPowerVo;

@Rpc
public interface  SaaUserPowerService extends  BaseCrudService<SaaUserPowerVo, String> {
	
	/**
	 * @param id
	 * @return
	 */
	public SaaUserPower findByPK(long id);
	
	/* (non-Javadoc)
	 * @see ins.framework.service.BaseCrudService#save(java.io.Serializable)
	 */
	public String save(SaaUserPowerVo vo);
	
	/* (non-Javadoc)
	 * @see ins.framework.service.BaseCrudService#update(java.io.Serializable)
	 */
	public void update(SaaUserPowerVo vo);
	
	/**
	 * @param id
	 */
	public void deleteByPK(Long id);
	
	/* (non-Javadoc)
	 * @see ins.framework.service.BaseCrudService#findForDataTables(java.util.Map)
	 */
	public String findForDataTables(Map<String, String[]> paramMap);
	public void addField(SaaUserPowerVo vo);
	/**
	 * 根据业务权限因子查找
	 * @param factorCode
	 * @return
	 */
	public List<SaaUserPowerVo> findByFactorCode(String factorCode);
	/**
	 * 根据用户代码查找
	 * @param userCode
	 * @return
	 */
	public List<SaaUserPowerVo> findByUserCode(String userCode);
	/**
	 * 更新用户权限
	 * @param saaUserPowerList 所有的factor
	 * @param selectfactors 已选择的factor
	 * @param userCode 用户代码
	 */
	public void updateUserPowers(List<SaaUserPowerVo> saaUserPowerList,String[] selectfactors,String userCode);
}
