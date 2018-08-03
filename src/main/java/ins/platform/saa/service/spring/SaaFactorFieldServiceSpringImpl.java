package ins.platform.saa.service.spring;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.saa.schema.SaaFactor;
import ins.platform.saa.schema.SaaFactorField;
import ins.platform.saa.service.facade.SaaFactorFieldService;
import ins.platform.saa.vo.SaaFactorFieldVo;

@Rpc
@Service(value = "saaFactorFieldService")
public class SaaFactorFieldServiceSpringImpl
		extends
		AbstractBaseCrudServiceSpringImpl<SaaFactorField, String, SaaFactorFieldVo, String>
		implements SaaFactorFieldService {
	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;

	@Override
	public void addField(SaaFactorFieldVo vo) {
		super.save(vo);
	}

	@Override
	public List<SaaFactorFieldVo> findByFactorCode(String factorCode) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("saaFactor.factorCode", factorCode);
		List<SaaFactorField> poList = databaseDao.findAll(SaaFactorField.class,
				queryRule);
		List<SaaFactorFieldVo> voList = new ArrayList<SaaFactorFieldVo>(
				poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SaaFactorField po = poList.get(i);
			SaaFactorFieldVo vo = new SaaFactorFieldVo();

			Beans.from(po).to(vo);
			voList.add(vo);
		}

		return voList;
	}

	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SaaFactorField";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "id",
				"saaFactor.factorCode", "fieldCode", "entityCode");
	}

	public SaaFactorField findByPK(long id) {

		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("id", id);
		SaaFactorField saaFactorField = databaseDao.findByPK(SaaFactorField.class, id);
		return saaFactorField;
	}

	@Override
	public String save(SaaFactorFieldVo vo) {
		SaaFactorField po = copyTo(SaaFactorField.class,vo);
		po.setSaaFactor(databaseDao.findByPK(SaaFactor.class, vo.getSaaFactor().getFactorCode()));
		databaseDao.save(SaaFactorField.class, po);
		return po.getId().toString();
	}

	@Override
	public void update(SaaFactorFieldVo vo) {
		SaaFactorField po = copyTo(SaaFactorField.class,vo);
		po.setSaaFactor(databaseDao.findByPK(SaaFactor.class, vo.getSaaFactor().getFactorCode()));
		System.out.println("po:" + po.getId() + "," + po.getEntityCode()+ "," + 
							po.getFieldCode() + "," + po.getVersion() + "," + 
							po.getSaaFactor().getFactorCode());
		databaseDao.deleteByPK(SaaFactorField.class, po.getId());
		databaseDao.save(SaaFactorField.class, po);
//		databaseDao.update(SaaUserRole.class, po);
		
	}

	@Override
	public void deleteByPK(Long id) {
		databaseDao.deleteByPK(SaaFactorField.class, id);
	}

}
