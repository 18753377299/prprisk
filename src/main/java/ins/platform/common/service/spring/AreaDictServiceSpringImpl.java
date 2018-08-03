package ins.platform.common.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.utils.Beans;
import ins.platform.common.service.facade.AreaDictService;
import ins.platform.schema.SysAreaDict;
import ins.platform.vo.SysAreaDictVo;

@Rpc
@Service(value = "areaDictService")
public class AreaDictServiceSpringImpl implements AreaDictService {
	@Autowired
	private DatabaseDao databaseDao;

	public List<SysAreaDictVo> findChildArea(String upperCode) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("upperCode", upperCode);
		queryRule.addEqual("isValid", "Y");
		queryRule.addAscOrder("serialNo");
		List<SysAreaDict> poList = databaseDao.findAll(SysAreaDict.class,
				queryRule);

		List<SysAreaDictVo> voList = new ArrayList<SysAreaDictVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SysAreaDict po = poList.get(i);
			SysAreaDictVo vo = new SysAreaDictVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	} 
}
