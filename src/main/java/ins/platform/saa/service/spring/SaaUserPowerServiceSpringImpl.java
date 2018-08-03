package ins.platform.saa.service.spring;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;



import ins.framework.utils.Beans;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.saa.schema.SaaFactor;
import ins.platform.saa.schema.SaaUserPower;
import ins.platform.saa.service.facade.SaaUserPowerService;
import ins.platform.saa.vo.SaaUserPowerVo; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Rpc
@Service(value = "SaaUserPowerService")
public class SaaUserPowerServiceSpringImpl
		extends
		AbstractBaseCrudServiceSpringImpl<SaaUserPower, String, SaaUserPowerVo, String>
		implements SaaUserPowerService {

	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;
	
	@Override
	public SaaUserPower findByPK(long id) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("id", id);
		SaaUserPower saaUserPower=databaseDao.findByPK(SaaUserPower.class, id);
		return saaUserPower;
	}
	@Override
	public String save(SaaUserPowerVo vo){
		SaaUserPower po=copyTo(SaaUserPower.class,vo);
		po.setSaaFactor(databaseDao.findByPK(SaaFactor.class, vo.getSaaFactor().getFactorCode()));
		databaseDao.save(SaaUserPower.class,po);
		return po.getId().toString();
	}
	@Override
	public void update(SaaUserPowerVo vo) {
		SaaUserPower po=copyTo(SaaUserPower.class,vo);
		po.setSaaFactor(databaseDao.findByPK(SaaFactor.class, vo.getSaaFactor().getFactorCode()));
		databaseDao.deleteByPK(SaaUserPower.class,po.getId());
		po.setId(null);
		databaseDao.save(SaaUserPower.class,po);
	  	
	
	}
	
	@Override
	public void deleteByPK(Long id) {
		databaseDao.deleteByPK(SaaUserPower.class,id);
		
	}

	@Override
	public void addField(SaaUserPowerVo vo) {
		   super.save(vo);
		
	}

	@Override
	public List<SaaUserPowerVo> findByFactorCode(String factorCode) {
		
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("saaFactor.factorCode", factorCode);
		List<SaaUserPower> poList = databaseDao.findAll(SaaUserPower.class,
				queryRule);
		List<SaaUserPowerVo> voList = new ArrayList<SaaUserPowerVo>(
				poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SaaUserPower po = poList.get(i);
			SaaUserPowerVo vo = new SaaUserPowerVo();

			Beans.from(po).to(vo);
			voList.add(vo);
		}

		return voList;
	}
	public String findForDataTables(Map<String, String[]> paramMap){
		String hql = "from SaaUserPower";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "id",
				"userCode", "saaFactor.factorCode", "dataOper","dataValue","systemCode");
	}
	@Override
	public List<SaaUserPowerVo> findByUserCode(String userCode) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", userCode);
		List<SaaUserPower> poList = databaseDao.findAll(SaaUserPower.class,
				queryRule);
		List<SaaUserPowerVo> voList = new ArrayList<SaaUserPowerVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SaaUserPower po = poList.get(i);
			SaaUserPowerVo vo = new SaaUserPowerVo();
			vo = Beans.copyDepth().from(po).to(SaaUserPowerVo.class);
			voList.add(vo);
		}
		return voList;
	}
	@Override
	public void updateUserPowers(List<SaaUserPowerVo> saaUserPowerList, String[] selectfactors, String userCode) {
		List<SaaUserPower> userPowers = (List<SaaUserPower>) databaseDao.findAllByHql(SaaUserPower.class,"from SaaUserPower where userCode=?",userCode);
		for(SaaUserPower po :userPowers){
			po.setSaaFactor(null);
			databaseDao.update(SaaUserPower.class, po);
			databaseDao.deleteByObject(SaaUserPower.class, po);
		}
		//userPowers = new ArrayList<SaaUserPowerVo>(selectfactors.length);
		for(SaaUserPowerVo vo : saaUserPowerList){
			for(String s : selectfactors){
				String factorCode = vo.getSaaFactor().getFactorCode();
				if(factorCode.equals(s)){
					SaaFactor factor = databaseDao.findByPK(SaaFactor.class,factorCode);
					SaaUserPower userPower = Beans.copyDepth().from(vo).to(SaaUserPower.class);
					userPower.setId(null);
					userPower.setUserCode(userCode);
					userPower.setSaaFactor(factor);
					databaseDao.save(SaaUserPower.class,userPower);
				}
			}
		}
	}
	
}
