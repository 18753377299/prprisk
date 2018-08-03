package ins.platform.saa.service.spring;

import java.util.ArrayList;
import java.util.List;
import org.apache.shiro.util.AntPathMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.saa.schema.SaaRole;
import ins.platform.saa.schema.SaaRoleTask;
import ins.platform.saa.schema.SaaTask;
import ins.platform.saa.service.facade.SaaRoleTaskService;
import ins.platform.saa.vo.SaaRoleTaskVo;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaTaskVo;

@Rpc
@Service(value = "saaRoleTaskService")
public class SaaRoleTaskServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SaaRoleTask, String,SaaRoleTaskVo, String> implements
		SaaRoleTaskService {
	
	@Autowired
	DatabaseDao databaseDao;
	
//	private HibernateTemplate hibernateTemplate;
	public List<SaaRoleTaskVo> findAllSaaRoleTask(){
		String hql = "select o.saaRole.roleCode,o.saaTask.taskCode,o.saaTask.url from SaaRoleTask o where o.saaRole.validInd=? and o.saaTask.validInd=? order by o.saaTask.url asc";
//		Query query = hibernateTemplate.find(hql,"1","1");
//		query.setParameter(1, "1");
//		query.setParameter(2, "1");
		List<Object[]> list = databaseDao.findAllByHql(hql,"1","1");
		if(list != null){
			List<SaaRoleTaskVo> voList = new ArrayList<SaaRoleTaskVo>(list.size());
			for(Object[] o : list){
				SaaRoleTaskVo saaRoleTaskVo = new SaaRoleTaskVo();
				SaaRoleVo roleVo = new SaaRoleVo();
				saaRoleTaskVo.setSaaRole(roleVo);
				roleVo.setRoleCode((String)o[0]);
				
				SaaTaskVo taskVo = new SaaTaskVo();
				saaRoleTaskVo.setSaaTask(taskVo);
				taskVo.setTaskCode((String)o[1]);
				taskVo.setUrl((String)o[2]);
				voList.add(saaRoleTaskVo);
			}
			return voList;
		}
		return null;
	}
	
	public List<SaaRoleTaskVo> findUserTaskList(String userCode){
		String hql = "select o.saaRole.roleCode,o.saaTask.taskCode,o.saaTask.url from SaaUserRole userRole, SaaRoleTask o where userRole.userCode = ? and userRole.saaRole.roleCode = o.saaRole.roleCode and o.saaRole.validInd=? and o.saaTask.validInd=? order by o.saaTask.url asc";
		List<Object[]> list = databaseDao.findAllByHql(hql, userCode,"1","1");
		if(list != null){
			List<SaaRoleTaskVo> voList = new ArrayList<SaaRoleTaskVo>(list.size());
			for(Object[] o : list){
				
				SaaRoleTaskVo saaRoleTaskVo = new SaaRoleTaskVo();
				SaaRoleVo roleVo = new SaaRoleVo();
				saaRoleTaskVo.setSaaRole(roleVo);
				roleVo.setRoleCode((String)o[0]);
				
				SaaTaskVo taskVo = new SaaTaskVo();
				saaRoleTaskVo.setSaaTask(taskVo);
				taskVo.setTaskCode((String)o[1]);
				taskVo.setUrl((String)o[2]);
				voList.add(saaRoleTaskVo);
			}
			return voList;
		}
		return null;
	}
	
	public boolean hasUrlPower(String userCode,String url){
		if(url == null || "".equals(url)){
			return false;
		}
		List<SaaRoleTaskVo> saaRoleTaskVOList = this.findUserTaskList(userCode);
		AntPathMatcher antPathMatcher = new AntPathMatcher();
		for(SaaRoleTaskVo vo : saaRoleTaskVOList){
			if(antPathMatcher.matches(vo.getSaaTask().getUrl(),url)){
				return true;
			}
		}
		return false;
	}
	
	@Override
	public String save(SaaRoleTaskVo vo) {
		SaaRoleTask saaRoleTask = copyTo(SaaRoleTask.class,vo);
		saaRoleTask.setSaaRole(databaseDao.findByPK(SaaRole.class, vo.getSaaRole().getRoleCode()));
		saaRoleTask.setSaaTask(databaseDao.findByPK(SaaTask.class, vo.getSaaTask().getTaskCode()));
		databaseDao.save(SaaRoleTask.class, saaRoleTask);
		return saaRoleTask.getId().toString();
	}
	
}
