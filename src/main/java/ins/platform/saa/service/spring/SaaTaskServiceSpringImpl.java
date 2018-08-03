package ins.platform.saa.service.spring;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.cache.CacheManager;
import ins.framework.cache.CacheService;
import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.lang.Datas;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.web.util.ResponseUtils;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.saa.schema.SaaRole;
import ins.platform.saa.schema.SaaRoleTask;
import ins.platform.saa.schema.SaaTask;
import ins.platform.saa.service.facade.SaaTaskService;
import ins.platform.saa.vo.SaaRoleTaskVo;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaTaskVo;

@Rpc
@Service(value = "saaTaskService")
public class SaaTaskServiceSpringImpl extends AbstractBaseCrudServiceSpringImpl<SaaTask, String, SaaTaskVo, String>
		implements SaaTaskService {

	@Autowired
	DatabaseDao databaseDao;
	@Autowired
	DataTablesService dataTablesService;
	private static final CacheService cacheManager = CacheManager.getInstance("SmcMenu");
	@Override
	public List<SaaTaskVo> findAll() {
		List<SaaTask> pos = databaseDao.findAll(SaaTask.class);
		List<SaaTaskVo> vos = new ArrayList<SaaTaskVo>();
		for(int i=0;i<pos.size();i++){
			SaaTaskVo vo = new SaaTaskVo();
			SaaTask po = pos.get(i);
			Datas.copySimpleObjectToTargetFromSource(vo, po);
			vos.add(vo);
		}
		return vos;
	}
	
	@Override
	public SaaTaskVo findByPK(String taskCode) {
		SaaTask po = databaseDao.findByPK(SaaTask.class, taskCode);
		SaaTaskVo vo = new SaaTaskVo();
		Datas.copySimpleObjectToTargetFromSource(vo, po);
		for(SaaRoleTask srt : po.getSaaRoleTasks()){
			SaaRoleTaskVo saaRoleTaskVo = new SaaRoleTaskVo();
			SaaRoleVo saaRoleVo = new SaaRoleVo();
			Datas.copySimpleObjectToTargetFromSource(saaRoleVo, srt.getSaaRole());
			saaRoleTaskVo.setSaaRole(saaRoleVo);
			Datas.copySimpleObjectToTargetFromSource(saaRoleTaskVo, srt);
			vo.getSaaRoleTasks().add(saaRoleTaskVo);
		}
		return vo;
	};
	
	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SaaTask";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return ResponseUtils.toDataTableJson(page, "taskCode","groupName","taskCName","taskTName",
				"taskEName","url","validInd");
	}
	
	@Override
	public void updateTaskAndTaskRole(SaaTaskVo saaTaskVo) {
		SaaTask saaTask = null;
		if(databaseDao.findByPK(SaaTask.class, saaTaskVo.getTaskCode()) != null){
			//根据角色查找中间表
			String queryString = "select s from SaaRoleTask s where s.saaTask.taskCode = ?";
			List<SaaRoleTask> saaRoleTasks = databaseDao.findAllByHql(SaaRoleTask.class, queryString, saaTaskVo.getTaskCode());
			//删除SaaRole和SaaTask表的中间表SaaRoleTask中与该角色关联的数据
			if(saaRoleTasks != null){
				for(SaaRoleTask saaRoleTask : saaRoleTasks){
					databaseDao.deleteByPK(SaaRoleTask.class, saaRoleTask.getId());
				}
			}
			//更新角色表数据
			saaTask = databaseDao.findByPK(SaaTask.class, saaTaskVo.getTaskCode());
			Datas.copySimpleObjectToTargetFromSource(saaTask, saaTaskVo);
			databaseDao.update(SaaTask.class, saaTask);
		} else {
			saaTask = new SaaTask();
			Datas.copySimpleObjectToTargetFromSource(saaTask, saaTaskVo);
			databaseDao.save(SaaTask.class, saaTask);
		}
		//更新中间表数据
		for(SaaRoleTaskVo saaRoleTaskVo : saaTaskVo.getSaaRoleTasks()){
			SaaRoleTask saaRoleTask = new SaaRoleTask();
			SaaRole saaRole = databaseDao.findByPK(SaaRole.class, saaRoleTaskVo.getSaaRole().getRoleCode());
			Datas.copySimpleObjectToTargetFromSource(saaRoleTask, saaRoleTaskVo);
			saaRoleTask.setSaaRole(saaRole);
			saaRoleTask.setSaaTask(saaTask);
			databaseDao.save(SaaRoleTask.class, saaRoleTask);
		}
		cacheManager.clearAllCacheManager();
	}
	
}
