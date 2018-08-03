package ins.platform.sysuserrunas.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.utils.Beans;
import ins.platform.schema.SysUser;
import ins.platform.schema.SysUserRunAs;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.sysuserrunas.service.facade.SysUserRunAsService;
import ins.platform.vo.SysUserVo;

@Rpc
@Service(value="sysUserRunAsService")
public class SysUserRunAsServiceSpringImpl implements SysUserRunAsService{

	@Autowired
	DatabaseDao databaseDao;
	
	@Autowired
	SysUserService sysUserService;
	
	@Override
	public void grantRunAs(String fromUserCode, String toUserCode) {
		if(!exists(fromUserCode,toUserCode)){
			SysUserRunAs sysUserRunAs = new SysUserRunAs();
			sysUserRunAs.setFromUserCode(fromUserCode);
			sysUserRunAs.setToUserCode(toUserCode);
			databaseDao.save(SysUserRunAs.class, sysUserRunAs);
		}
		
	}

	@Override
	public void revokeRunAs(String fromUserCode, String toUserCode) {
		String queryString = "from SysUserRunAs where fromUserCode = ? and toUserCode = ?";
		List<SysUserRunAs> pos = databaseDao.findTopByHql(SysUserRunAs.class,queryString, 1, fromUserCode,toUserCode);
		if(pos != null && pos.size() >= 1){
			databaseDao.deleteByObject(SysUserRunAs.class, pos.get(0));
		}
		
	}

	@Override
	public boolean exists(String fromUserCode, String toUserCode) {
		String queryString = "from SysUserRunAs where fromUserCode = ? and toUserCode = ?";
		List<SysUserRunAs> pos = databaseDao.findTopByHql(SysUserRunAs.class,queryString, 1, fromUserCode,toUserCode);
		if(pos != null && pos.size() >= 1){
			return true;
		} 
//		else {
//			return false;
//		}
		return false;
	}

	@Override
	public List<SysUserVo> findFromUserCodes(String toUserCode) {
		String queryString = "from SysUserRunAs where toUserCode = ?";
		List<SysUserRunAs> list = databaseDao.findAllByHql(SysUserRunAs.class,queryString, toUserCode);
		if(list != null && list.size() >= 1){
			List<SysUserVo> vos = new ArrayList<SysUserVo>();
			for(SysUserRunAs sysUserRunAs : list){
				SysUserVo vo = sysUserService.findByUserCode(sysUserRunAs.getFromUserCode());
				vos.add(vo);
			}
			return vos;
		} else {
			return null;
		}
	}

	@Override
	public List<SysUserVo> findToUserCodes(String fromUserCode) {
		String queryString = "from SysUserRunAs where fromUserCode = ?";
		List<SysUserRunAs> list = databaseDao.findAllByHql(SysUserRunAs.class,queryString, fromUserCode);
		if(list != null && list.size() >= 1){
			List<SysUserVo> vos = new ArrayList<SysUserVo>();
			for(SysUserRunAs sysUserRunAs : list){
				SysUserVo vo = sysUserService.findByUserCode(sysUserRunAs.getToUserCode());
				vos.add(vo);
			}
			return vos;
		} else {
			return null;
		}
	}

	@Override
	public List<SysUserVo> findGrantList(String fromUserCode) {
		String hql = "from SysUser s where s.validStatus = 1";
		List<SysUser> sysUsers = databaseDao.findAllByHql(SysUser.class, hql);
		List<SysUserVo> toUserVos = this.findToUserCodes(fromUserCode);
		List<String> userCodes = new ArrayList<String>();
		List<SysUser> newSysUsers = new ArrayList<SysUser>();
		if(toUserVos != null && toUserVos.size() >= 1){
			for(SysUserVo vo : toUserVos){
				userCodes.add(vo.getUserCode());
			}
			for(SysUser sysUser : sysUsers){
				if(!userCodes.contains(sysUser.getUserCode())){
					newSysUsers.add(sysUser);
				}
			}
		} else {
			newSysUsers = sysUsers;
		}
		List<SysUserVo> sysUserVos = new ArrayList<SysUserVo>();
		for(SysUser sysUser : newSysUsers){
			SysUserVo sysUserVo = new SysUserVo();
			Beans.from(sysUser).to(sysUserVo);
			sysUserVos.add(sysUserVo);
		}
		return sysUserVos;
	}

}
