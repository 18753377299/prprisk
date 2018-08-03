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
import ins.platform.saa.schema.SaaUserRole;
import ins.platform.saa.service.facade.SaaRoleService;
import ins.platform.saa.vo.SaaRoleTaskVo;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaTaskVo;
import ins.platform.saa.vo.SaaUserRoleVo;

@Rpc
@Service( value = "SaaRoleService")
public class SaaRoleServiceSpringImpl extends 
		AbstractBaseCrudServiceSpringImpl<SaaRole, String, SaaRoleVo, String>
		implements SaaRoleService {
	
	@Autowired
	DatabaseDao databaseDao;
	@Autowired
	DataTablesService dataTablesService;
	private static final CacheService cacheManager = CacheManager.getInstance("SmcMenu");
	@Override
	public SaaRoleVo findByPK(String roleCode) {
		SaaRole po = databaseDao.findByPK(SaaRole.class, roleCode);
		SaaRoleVo vo = new SaaRoleVo();
		Datas.copySimpleObjectToTargetFromSource(vo, po);
		for(SaaRoleTask srt : po.getSaaRoleTasks()){
			SaaRoleTaskVo saaRoleTaskVo = new SaaRoleTaskVo();
			SaaTaskVo saaTaskVo = new SaaTaskVo();
			Datas.copySimpleObjectToTargetFromSource(saaTaskVo, srt.getSaaTask());
			saaRoleTaskVo.setSaaTask(saaTaskVo);
			Datas.copySimpleObjectToTargetFromSource(saaRoleTaskVo, srt);
			vo.getSaaRoleTasks().add(saaRoleTaskVo);
		}
		for(SaaUserRole sur : po.getSaaUserRoles()){
			SaaUserRoleVo saaUserRoleVo = new SaaUserRoleVo();
			Datas.copySimpleObjectToTargetFromSource(saaUserRoleVo, sur);
			vo.getSaaUserRoles().add(saaUserRoleVo);
		}
		return vo;
	};
	
	@Override
	public List<SaaRoleVo> findAll() {
		List<SaaRole> pos = databaseDao.findAll(SaaRole.class);
		List<SaaRoleVo> vos = new ArrayList<SaaRoleVo>();
		for(int i=0;i<pos.size();i++){
			SaaRoleVo vo = new SaaRoleVo();
			SaaRole po = pos.get(i);
			if("1".equals(po.getValidInd())){
				Datas.copySimpleObjectToTargetFromSource(vo, po);
				vos.add(vo);
			}
		}
		return vos;
	}
	
	@Override
	public void deleteByPK(String roleCode) {
		databaseDao.deleteByPK(SaaRole.class, roleCode);
	}
	
	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SaaRole saaRole";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return ResponseUtils.toDataTableJson(page, "roleCode","comCode","roleCName","roleTName",
				"roleEName","validInd");
	}
	
	@Override
	public String save(SaaRoleVo vo){
		SaaRole saaRole = copyTo(SaaRole.class,vo);
		databaseDao.save(SaaRole.class, saaRole);
		return saaRole.getRoleCode();
	}
	
	@Override
	public void updateRoleAndRoleTask(SaaRoleVo saaRoleVo){
		SaaRole saaRole = null;
		if(databaseDao.findByPK(SaaRole.class, saaRoleVo.getRoleCode()) != null){
			//根据角色查找中间表
			String queryString = "select s from SaaRoleTask s where s.saaRole.roleCode = ?";
			List<SaaRoleTask> saaRoleTasks = databaseDao.findAllByHql(SaaRoleTask.class, queryString, saaRoleVo.getRoleCode());
			//删除SaaRole和SaaTask表的中间表SaaRoleTask中与该角色关联的数据
			if(saaRoleTasks != null){
				for(SaaRoleTask saaRoleTask : saaRoleTasks){
					databaseDao.deleteByPK(SaaRoleTask.class, saaRoleTask.getId());
				}
			}
			//更新角色表数据
			saaRole = databaseDao.findByPK(SaaRole.class, saaRoleVo.getRoleCode());
			Datas.copySimpleObjectToTargetFromSource(saaRole, saaRoleVo);
			if(saaRoleVo.getSaaUserRoles() != null){
				for(SaaUserRoleVo saaUserRoleVo : saaRoleVo.getSaaUserRoles()){
					SaaUserRole saaUserRole = new SaaUserRole();
					Datas.copySimpleObjectToTargetFromSource(saaUserRole, saaUserRoleVo);
					saaRole.getSaaUserRoles().add(saaUserRole);
				}
			}
			databaseDao.update(SaaRole.class, saaRole);
		} else {
			saaRole = new SaaRole();
			Datas.copySimpleObjectToTargetFromSource(saaRole, saaRoleVo);
			databaseDao.save(SaaRole.class, saaRole);
		}
		//更新中间表数据
		for(SaaRoleTaskVo saaRoleTaskVo : saaRoleVo.getSaaRoleTasks()){
			SaaRoleTask saaRoleTask = new SaaRoleTask();
			SaaTask saaTask = databaseDao.findByPK(SaaTask.class, saaRoleTaskVo.getSaaTask().getTaskCode());
			Datas.copySimpleObjectToTargetFromSource(saaRoleTask, saaRoleTaskVo);
			saaRoleTask.setSaaRole(saaRole);
			saaRoleTask.setSaaTask(saaTask);
			databaseDao.save(SaaRoleTask.class, saaRoleTask);
		}
		String roleCode = saaRoleVo.getRoleCode();
		String saaUserRoleHql = "from SaaUserRole ur where ur.saaRole.roleCode = ?";
		List<SaaUserRole> userRoles = databaseDao.findAllByHql(SaaUserRole.class, saaUserRoleHql, roleCode);
		if(userRoles!=null&&userRoles.size()>0){
			for(SaaUserRole userRole : userRoles){
				String userCode = userRole.getUserCode();
				String key = cacheManager.generateCacheKey("platform","findSystemMenu", userCode, "pdfb4");
				cacheManager.remove(key);
			}
		}
	}
	
}
