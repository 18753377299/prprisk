package ins.platform.sysuserproperty.service.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.schema.SysUserProperty;
import ins.platform.sysuserproperty.service.facade.SysUserPropertyService;
import ins.platform.vo.SysUserPropertyVo;

@Rpc
@Service(value = "sysUserPropertyService")
public class SysUserPropertyServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SysUserProperty, String, SysUserPropertyVo, String>
		implements SysUserPropertyService {

	@Autowired
	DatabaseDao databaseDao;
	
	@Override
	public SysUserPropertyVo findByUserCode(String userCode) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", userCode);
		SysUserProperty po = databaseDao.findUnique(SysUserProperty.class, queryRule);
		if(po != null){
			SysUserPropertyVo vo = new SysUserPropertyVo();
			Beans.from(po).to(vo);
			return vo;
		}
		return null;
	}

}
