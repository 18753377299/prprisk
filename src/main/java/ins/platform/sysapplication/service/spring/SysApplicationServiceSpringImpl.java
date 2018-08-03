package ins.platform.sysapplication.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.schema.SysApplication;
import ins.platform.sysapplication.service.facade.SysApplicationService;
import ins.platform.vo.SysApplicationVo;

@Rpc
@Service(value = "sysApplicationService")
public class SysApplicationServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SysApplication, String,SysApplicationVo, String> implements
		SysApplicationService {
	
	@Autowired
	DatabaseDao databseDao;
	
	@Override
	public List<SysApplicationVo> findAll()	{
		List<SysApplication> pos = databseDao.findAll(SysApplication.class);
		List<SysApplicationVo> vos = new ArrayList<SysApplicationVo>();
		for(int i=0;i<pos.size();i++){
			SysApplicationVo vo = super.copyTo(SysApplicationVo.class,pos.get(i));
			vos.add(vo);
		}
		return vos;
	}
	
}
