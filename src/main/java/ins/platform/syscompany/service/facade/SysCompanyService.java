package ins.platform.syscompany.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.syscompany.vo.ComConfigVo;
import ins.platform.vo.SysCompanyVo;

@Rpc
public interface SysCompanyService extends BaseCrudService<SysCompanyVo, Long>  {

	/**
	 * 
	 * @param comCode
	 * @return 
	 */
	public boolean hasSubCompany(String comCode);
	
	/**
	 * 
	 * @param comCode
	 * @return
	 */
	public SysCompanyVo findCompanyByComCode(String comCode);
	
	/**
	 * 
	 * @return
	 */
	public List<SysCompanyVo> findAll();
	
	public Long getParentId(Long id);
	
	public List<SysCompanyVo> findTopComForConfig();
	
	public List<SysCompanyVo> findSubComForConfig(Long upperId);
	
	public void updateComForDrop(ComConfigVo comConfigVo);
	
	public List<SysCompanyVo> findComLike(String str);
	
	public void batchUpdate(List<SysCompanyVo> sysCompanyList);
	
	public void batchDelete(List<Long> idList);
	
	public void deleteThisAndSub(Long id);
	
}
