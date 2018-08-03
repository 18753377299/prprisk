package ins.platform.saa.service.spring;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.cache.CacheManager;
import ins.framework.cache.CacheService;
import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.framework.web.util.ResponseUtils;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.saa.schema.SaaRole;
import ins.platform.saa.schema.SaaUserRole;
import ins.platform.saa.service.facade.SaaUserRoleService;
import ins.platform.saa.vo.SaaRoleVo;
import ins.platform.saa.vo.SaaUserRoleVo;
import ins.platform.vo.SysUserVo;

@Rpc
@Service(value = "saaUserRoleService")
public class SaaUserRoleServiceSpringImpl extends AbstractBaseCrudServiceSpringImpl<SaaUserRole, String, SaaUserRoleVo, String>
		implements SaaUserRoleService {
	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;
	private static final CacheService cacheManager = CacheManager.getInstance("SmcMenu");

	@Override
	public List<String> findUserRoles(String userCode) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", userCode);
		List<SaaUserRole> poList = databaseDao.findAll(SaaUserRole.class,
				queryRule);

		List<String> roleCodeList = new ArrayList<String>(poList.size());
		for (SaaUserRole po : poList) {
			roleCodeList.add(po.getSaaRole().getRoleCode());
		}

		return roleCodeList;
	}

	public List<SaaUserRoleVo> findUserRoleList(String userCode) {
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", userCode);
		List<SaaUserRole> poList = databaseDao.findAll(SaaUserRole.class,
				queryRule);
		List<SaaUserRoleVo> voList = new ArrayList<SaaUserRoleVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			SaaUserRole po = poList.get(i);
			SaaUserRoleVo vo = new SaaUserRoleVo();
			vo = Beans.copyDepth().from(po).to(SaaUserRoleVo.class);
			voList.add(vo);
		}
		return voList;
	}
	
	@Override
	public SaaUserRoleVo findByPK(String userCode) {
		SaaUserRole po = databaseDao.findByPK(SaaUserRole.class, userCode);
		SaaUserRoleVo vo = copyTo(SaaUserRoleVo.class,po);
		vo.setSaaRole(copyTo(SaaRoleVo.class,po.getSaaRole()));
		vo.getSaaRole().setSaaRoleTasks(null);
		vo.getSaaRole().setSaaUserRoles(null);
		return vo;
	};
	
	@Override
	public void update(SaaUserRoleVo vo){
		SaaUserRole po = Beans.copyDepth().from(vo).to(SaaUserRole.class);
		po.setSaaRole(databaseDao.findByPK(SaaRole.class, vo.getSaaRole().getRoleCode()));
		System.out.println("po:" + po.getId() + "," + po.getUserCode() + "," + 
							po.getStartDate() + "," + po.getEndDate() + "," + 
							po.getSaaRole().getRoleCode());
		databaseDao.deleteByPK(SaaUserRole.class, po.getId());
		po.setId(null);
		databaseDao.save(SaaUserRole.class, po);
//		databaseDao.update(SaaUserRole.class, po);
	}
	
	@Override
	public String save(SaaUserRoleVo vo){
		SaaUserRole po = copyTo(SaaUserRole.class,vo);
		po.setSaaRole(databaseDao.findByPK(SaaRole.class, vo.getSaaRole().getRoleCode()));
		databaseDao.save(SaaUserRole.class, po);
		return po.getId().toString();
	}
	
	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SaaUserRole";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return ResponseUtils.toDataTableJson(page,"id", "userCode","saaRole.roleCode","startDate","endDate");
	}
	
	public SaaUserRole findUserRolesById(Long id){
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("id", id);
		SaaUserRole saaUserRole = databaseDao.findByPK(SaaUserRole.class, id);
		return saaUserRole;
	}

	@Override
	public void deleteUserById(Long id) {
		databaseDao.deleteByPK(SaaUserRole.class, id);
	}

	@Override
	public void updateUserRolesByUserCode(SysUserVo user, SaaUserRoleVo saaUserRole,String[] roleCodeArray) {
		// TODO Auto-generated method stub
		List<SaaUserRole> userRoleVos = (List<SaaUserRole>) databaseDao.findAllByHql(SaaUserRole.class,"from SaaUserRole where userCode=?", user.getUserCode());
		List<SaaUserRole> newUserRole = new ArrayList<SaaUserRole>();
		if(userRoleVos!=null&&userRoleVos.size()>0){
			for(SaaUserRole userRoleVo : userRoleVos){
				if(userRoleVo!=null&&userRoleVo.getId()!=null){
					userRoleVo.setSaaRole(null);
					databaseDao.update(SaaUserRole.class, userRoleVo);
					databaseDao.deleteByObject(SaaUserRole.class, userRoleVo);
				}
			}
		}
		for (int i = 0; i < roleCodeArray.length; i++) {
			SaaUserRole userRole = new SaaUserRole();
			String id = roleCodeArray[i];
			SaaRole saaRole = databaseDao.findByPK(SaaRole.class,id);
			System.out.println(saaRole.getRoleCode());
			userRole.setSaaRole(saaRole);
			userRole.setUserCode(saaUserRole.getUserCode());
			userRole.setStartDate(saaUserRole.getStartDate());
			userRole.setEndDate(saaUserRole.getEndDate());
			userRole.setInsertTimeForHis(new Date());
			userRole.setVersion(0);
			newUserRole.add(userRole);
		}
		if(newUserRole!=null&&newUserRole.size()>0){
			for(SaaUserRole userRole : newUserRole){
				if(userRole!=null){
					databaseDao.save(SaaUserRole.class,userRole);
				}

			}
		}
		String userCode = user.getUserCode();
		String key = cacheManager.generateCacheKey("platform","findSystemMenu", userCode, "pdfb4");
		cacheManager.remove(key);
	}

}
