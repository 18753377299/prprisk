package ins.platform.sdd.service.spring;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.schema.SddCode;
import ins.platform.schema.SddType;
import ins.platform.sdd.service.facade.SddTypeService;
import ins.platform.vo.SddTypeVo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Rpc
@Service(value = "sddTypeService")
public class SddTypeServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SddType, String, SddTypeVo, String>
		implements SddTypeService {
	@Autowired
	DatabaseDao dataBaseDao;
	@Autowired
	DataTablesService dataTablesService;
	@Override
	public SddTypeVo findByPK(String id) {
		List<SddType> sddTypeList = dataBaseDao.findAllByHql(SddType.class, "from SddType where type=?", id);
		SddTypeVo vo = new SddTypeVo();
		if(sddTypeList!=null&&sddTypeList.size()>0){
			vo = Beans.copyDepth().from(sddTypeList.get(0)).to(SddTypeVo.class);
		};
		
		return vo;
	}
	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SddType";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "type",
				"typeDesc", "validStatus", "insertTimeForHis", "operateTimeForHis");
	}
	@Override
	public void deleteByPK(String id) {
		List<SddCode> codeList = dataBaseDao.findAllByHql(SddCode.class, "from SddCode where sddType.type=?",id);
		SddType type = dataBaseDao.findByPK(SddType.class,id);
		for(SddCode code : codeList){
			code.setCode(null);
			dataBaseDao.update(SddCode.class, code);
			dataBaseDao.deleteByObject(SddCode.class, code);
		}
		dataBaseDao.deleteByObject(SddType.class, type);
	}
	
}
