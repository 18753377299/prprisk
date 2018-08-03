package ins.platform.common.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.common.AppConf;
import ins.platform.common.service.facade.CodeDictService;
import ins.platform.schema.SysCodeDict;
import ins.platform.schema.SysCodeDictId;
import ins.platform.vo.SysCodeDictIdVo;
import ins.platform.vo.SysCodeDictVo;

@Rpc
@Service(value = "codeDictService")
public class CodeDictServiceSpringImpl
		extends
		AbstractBaseCrudServiceSpringImpl<SysCodeDict, SysCodeDictId, SysCodeDictVo, SysCodeDictIdVo>
		implements CodeDictService {
	@Autowired
	private DatabaseDao databaseDao;

	@Override
	public List<SysCodeDictVo> findCodeList(String codeType) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("id.codeType", codeType);
		queryRule.addEqual("isValid", "Y");
		queryRule.addAscOrder("serialNo");

		List<SysCodeDict> poList = databaseDao.findTop(SysCodeDict.class,
				queryRule, AppConf.getTopRecordLimit());
		List<SysCodeDictVo> voList = new ArrayList<SysCodeDictVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SysCodeDict po = poList.get(i);
			SysCodeDictVo vo = new SysCodeDictVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public List<SysCodeDictVo> findCodeList(String codeType, String keyValue) { 
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("id.codeType", codeType);

		queryRule.addLike("codeName", keyValue + "%");
		queryRule.addEqual("isValid", "Y");
		queryRule.addAscOrder("serialNo");

		List<SysCodeDict> poList = databaseDao.findTop(SysCodeDict.class,
				queryRule, AppConf.getTopRecordLimit());
		List<SysCodeDictVo> voList = new ArrayList<SysCodeDictVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SysCodeDict po = poList.get(i);
			SysCodeDictVo vo = new SysCodeDictVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public List<SysCodeDictVo> findCodeListByUppCode(String codeType,
			String upperCode) {
		// TODO Auto-generated method stub
		return null;
	}

}
