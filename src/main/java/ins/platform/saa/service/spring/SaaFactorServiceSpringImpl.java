package ins.platform.saa.service.spring;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.lang.Datas;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.saa.schema.SaaFactor;
import ins.platform.saa.schema.SaaFactorField;
import ins.platform.saa.schema.SaaUserPower;
import ins.platform.saa.service.facade.SaaFactorService;
import ins.platform.saa.vo.SaaFactorFieldVo;
import ins.platform.saa.vo.SaaFactorVo;
import ins.platform.saa.vo.SaaUserPowerVo;

@Rpc
@Service(value = "saaFactorService")
public class SaaFactorServiceSpringImpl
		extends AbstractBaseCrudServiceSpringImpl<SaaFactor, String, SaaFactorVo, String> implements SaaFactorService {
	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;

	@Override
	public void addFactor(SaaFactorVo vo) {
		super.save(vo);
	}

	@Override
	public List<SaaFactorVo> findFactors() {
		List<SaaFactor> poList = databaseDao.findAll(SaaFactor.class);
		List<SaaFactorVo> voList = new ArrayList<SaaFactorVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SaaFactor po = poList.get(i);
			SaaFactorVo vo = new SaaFactorVo();

			Beans.from(po).to(vo);
			voList.add(vo);
		}

		return voList;
	}

	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SaaFactor saaFactor ";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "factorCode", "factorDesc", "dataType");
	}

	public SaaFactorVo findByPK(String factorCode) {
		SaaFactor po = databaseDao.findByPK(SaaFactor.class, factorCode);
		SaaFactorVo vo = new SaaFactorVo();
		Datas.copySimpleObjectToTargetFromSource(vo, po);
		for (SaaUserPower sup : po.getSaaUserPowers()) {
			SaaUserPowerVo saaUserPowerVo = new SaaUserPowerVo();
			Datas.copySimpleObjectToTargetFromSource(saaUserPowerVo, sup);
			vo.getSaaUserPowers().add(saaUserPowerVo);
		}
		for (SaaFactorField sff : po.getSaaFactorFields()) {
			SaaFactorFieldVo saaFactorFieldVo = new SaaFactorFieldVo();
			Datas.copySimpleObjectToTargetFromSource(saaFactorFieldVo, sff);
			vo.getSaaFactorFields().add(saaFactorFieldVo);
		}
		return vo;

	}

	@Override
	public List<SaaFactorVo> findAll() {
		List<SaaFactor> pos = databaseDao.findAll(SaaFactor.class);
		List<SaaFactorVo> vos = new ArrayList<SaaFactorVo>();
		for (int i = 0; i < pos.size(); i++) {
			SaaFactor po = pos.get(i);
			SaaFactorVo vo = new SaaFactorVo();
			Datas.copySimpleObjectToTargetFromSource(vo, po);
			vos.add(vo);
		}
		return vos;
	}

	@Override
	public String save(SaaFactorVo vo, List<SaaFactorFieldVo> saaFactorFieldList) {
		SaaFactor factor = new SaaFactor();
		Beans.copy().from(vo).to(factor);
		factor.setVersion(0);
		databaseDao.save(SaaFactor.class, factor);
		for(SaaFactorFieldVo fieldVo : saaFactorFieldList){
			if(fieldVo!=null){
				SaaFactorField field = new SaaFactorField();
				Beans.copy().from(fieldVo).to(field);
				field.setSaaFactor(factor);
				field.setId(null);
				databaseDao.save(SaaFactorField.class, field);
			}		
		}
		return factor.getFactorCode();
	}

	public void update(SaaFactorVo vo) {
		SaaFactor saaFactor = copyTo(SaaFactor.class, vo);
		databaseDao.update(SaaFactor.class, saaFactor);
	}

	@Override
	public void updatePowerAndField(SaaFactorVo saaFactorVo, List<SaaFactorFieldVo> saaFactorFieldList) {
//		SaaFactor saaFactor = null;
		// 根据角色查找中间表
		String queryString = "select s from SaaFactorField s where s.saaFactor.factorCode = ?";
		List<SaaFactorField> saaFactorFields = databaseDao.findAllByHql(SaaFactorField.class, queryString,
				saaFactorVo.getFactorCode());
		SaaFactor factor = databaseDao.findByPK(SaaFactor.class, saaFactorVo.getFactorCode());
		Beans.copy().from(saaFactorVo).to(factor);
		databaseDao.update(SaaFactor.class,factor);
		// 更新角色表数据
		for (SaaFactorField field : saaFactorFields) {
			field.setSaaFactor(null);
			databaseDao.update(SaaFactorField.class, field);
			databaseDao.deleteByObject(SaaFactorField.class, field);
		}
		factor = databaseDao.findByPK(SaaFactor.class, factor.getFactorCode());
		for(SaaFactorFieldVo fieldVo : saaFactorFieldList){
			if(fieldVo!=null){
				SaaFactorField field = new SaaFactorField();
				Beans.copy().from(fieldVo).to(field);
				field.setSaaFactor(factor);
				field.setId(null);
				databaseDao.save(SaaFactorField.class, field);
			}		
		}
	}

	public void deleteByPK(String factorCode) {
		
		List<SaaFactorField> fieldList = databaseDao.findAllByHql(SaaFactorField.class, "from SaaFactorField where saaFactor.factorCode=?",factorCode);
		SaaFactor saaFactor = databaseDao.findByPK(SaaFactor.class,factorCode);
		for(SaaFactorField field : fieldList){
			field.setSaaFactor(null);
			databaseDao.update(SaaFactorField.class, field);
			databaseDao.deleteByObject(SaaFactorField.class, field);
		}
		databaseDao.deleteByObject(SaaFactor.class, saaFactor);
	}

}