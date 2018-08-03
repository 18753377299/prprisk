package ins.platform.sdd.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.utils.Beans;
import ins.platform.schema.SddCode;
import ins.platform.schema.SddType;
import ins.platform.sdd.service.facade.SddService;
import ins.platform.vo.SddCodeVo;
import ins.platform.vo.SddTypeVo;

@Rpc
@Service(value = "sddService")
public class SddServiceSpringImpl implements SddService {
	@Autowired
	private DatabaseDao databaseDao;
//	@Autowired
//	private SddTypeService sddTypeService;
//	@Autowired
//	private SddCodeService sddCodeService;

	@Override
	public List<SddTypeVo> findAllValidType() {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("validStatus", "1");
		List<SddType> poList = databaseDao.findAll(SddType.class, queryRule);
		List<SddTypeVo> voList = new ArrayList<SddTypeVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SddType po = poList.get(i);
			SddTypeVo vo = new SddTypeVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public List<SddCodeVo> findValidCodeByTypeAndLanguage(String type, String language) {

		List<SddCode> poList = databaseDao.findAllByHql(SddCode.class,
				"from SddCode o where o.sddType.type  = ? and o.language=?", type, language);

		if (poList.isEmpty()) {
			poList = databaseDao.findAllByHql(SddCode.class,
					"from SddCode o where o.sddType.type  = ? and o.language is null", type);
		}

		return po2vo(poList);
	}

	@Override
	public List<SddCodeVo> findValidCodeByType(String type) {
		List<SddCode> poList = databaseDao.findAllByHql(SddCode.class, "from SddCode o where o.sddType.type  = ?",
				type);
		return po2vo(poList);
	}

	private List<SddCodeVo> po2vo(List<SddCode> poList) {
		List<SddCodeVo> voList = new ArrayList<SddCodeVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SddCode po = poList.get(i);
			SddCodeVo vo = new SddCodeVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public SddCodeVo findAppConfCodeByCode(String code) {

		List<SddCode> poList = databaseDao.findTopByHql(SddCode.class,
				"from SddCode o where o.sddType.type  = ? and o.code=?", 1, "App_Conf", code);

		SddCodeVo vo = null;
		// 如果有值，则取去第一条并转为VO
		if (!poList.isEmpty()) {
			SddCode po = poList.get(0);
			vo = new SddCodeVo();
			Beans.from(po).to(vo);
		}

		return vo;
	}

	@Override
	public void update(SddTypeVo sddType, List<SddCodeVo> sddCodeList) {
		List<SddCode> codeList = databaseDao.findAllByHql(SddCode.class, "from SddCode where sddType.type=?",sddType.getType());
		SddType type = databaseDao.findByPK(SddType.class, sddType.getType());
		Beans.copy().from(sddType).to(type);
		databaseDao.update(SddType.class,type);
		for(SddCode code:codeList){
			code.setSddType(null);
			databaseDao.update(SddCode.class, code);
			databaseDao.deleteByObject(SddCode.class,code);
		}
		type = databaseDao.findByPK(SddType.class, type.getType());
		for(SddCodeVo codeVo : sddCodeList){
			if(codeVo!=null){
				SddCode code = new SddCode();
				Beans.copy().from(codeVo).to(code);
				code.setSddType(type);
				code.setId(null);
				databaseDao.save(SddCode.class, code);
			}		
		}
	}

	@Override
	public void save(SddTypeVo sddType, List<SddCodeVo> sddCodeList) {
		SddType type = new SddType();
		Beans.copy().from(sddType).to(type);
		type.setVersion(0);
		databaseDao.save(SddType.class, type);
		for(SddCodeVo codeVo : sddCodeList){
			if(codeVo!=null){
				SddCode code = new SddCode();
				Beans.copy().from(codeVo).to(code);
				code.setVersion(0);
				code.setSddType(type);
				code.setId(null);
				databaseDao.save(SddCode.class, code);
			}		
		}
	}
}
