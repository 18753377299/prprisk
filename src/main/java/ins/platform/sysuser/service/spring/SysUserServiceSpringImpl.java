package ins.platform.sysuser.service.spring;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.lang.Encrypts;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.utils.Beans;
import ins.framework.web.util.ResponseUtils;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.schema.SysUser;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

@Rpc
@Service(value = "sysUserService")
public class SysUserServiceSpringImpl extends 
AbstractBaseCrudServiceSpringImpl<SysUser, Long, SysUserVo, Long> implements SysUserService {
	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;

	@Override
	public Long save(SysUserVo vo) {
		Assert.notNull(vo, "sysUser must have value.");
		Assert.hasText(vo.getPassword(),
				"sysUser.getPassword() must have value.");
		vo.setPassword(Encrypts.md5Encrypt(vo.getPassword()));
		if (vo.getVersion() == null || "".equals(vo.getVersion())) {
			vo.setVersion(1);
		}

		if (vo.getValidStatus() == null || "".equals(vo.getValidStatus())) {
			vo.setValidStatus("1");
		}
		if (vo.getChecked() == null || "".equals(vo.getChecked())) {
			vo.setChecked("0");
		}
		if (vo.getSalt() == null || "".equals(vo.getSalt())) {
			vo.setSalt("0");
		} 

		SysUser po = new SysUser();
		po = Beans.copyDepth().from(vo).to(SysUser.class);
		//po.setInsertTimeForHis(null);
		databaseDao.save(SysUser.class, po);
		return po.getId();
	}

	@Override
	public void updateByUserCode(String userCode, SysUserVo vo) {
		Assert.notNull(vo, "sysUser must have value.");
		Assert.hasText(vo.getUserCode(),
				"sysUser.getUserCode() must have value.");

		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", vo.getUserCode());
		SysUser po = databaseDao.findUnique(SysUser.class, queryRule);
		Beans.from(vo).to(po);
		databaseDao.update(SysUser.class, po);
	}

	@Override
	public void updateById(Long id, SysUserVo vo) {
		Assert.notNull(vo, "sysUser must have value.");
		Assert.hasText(vo.getId() + "", "sysUser.getId() must have value.");
		SysUser po = new SysUser();
		po = Beans.copyDepth().from(vo).to(SysUser.class);
		if(StringUtils.isNoneBlank(vo.getPassword())){
			po.setPassword(Encrypts.md5Encrypt(vo.getPassword()));
		}
		databaseDao.update(SysUser.class, po);
	}
	
	@Override
	public void updateByIdNoPassword(Long id, SysUserVo vo) {
		Assert.notNull(vo, "sysUser must have value.");
		Assert.hasText(vo.getId() + "", "sysUser.getId() must have value.");
		SysUser po = new SysUser();
		po = Beans.copyDepth().from(vo).to(SysUser.class);
//		if(StringUtils.isNoneBlank(vo.getPassword())){
//			po.setPassword(Encrypts.md5Encrypt(vo.getPassword()));
//		}
		databaseDao.update(SysUser.class, po);
	}
	

	@Override
	public SysUserVo findByUserCode(String userCode) {
		Assert.hasText(userCode, "userCode must have value.");

		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", userCode);
		SysUser po = databaseDao.findUnique(SysUser.class, queryRule);
		if(po == null){
			return null;
		}
		SysUserVo vo = new SysUserVo();
		vo = Beans.copyDepth().from(po).to(SysUserVo.class);
		return vo;
	}

	@Override
	public SysUserVo findByEmail(String email) {
		Assert.hasText(email, "email must hava value.");
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("email", email);
		SysUser po = databaseDao.findUnique(SysUser.class, queryRule);
		if(po == null){
			return null;
		}
		SysUserVo vo = new SysUserVo();
		Beans.from(po).to(vo);
		return vo;
	}

	@Override
	public void deleteByUserCode(String userCode) {
		Assert.hasText(userCode, "userCode must have value.");
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("userCode", userCode);
		SysUser po = databaseDao.findUnique(SysUser.class, queryRule);
		databaseDao.deleteByPK(SysUser.class, po.getId());
	}

	@Override
	public SysUserVo findByPK(Long id) {
		Assert.notNull(id, "id must have value.");
		SysUserVo po = super.findByPK(id);
		return po;
	}

	@Override
	public void deleteByPK(Long id) {
		Assert.notNull(id, "id must have value.");
		databaseDao.deleteByPK(SysUser.class, id);

	}
	
	@Override
	public String findForDataTables(Map<String,String[]> paramMap){
		String hql = "from SysUser";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return ResponseUtils.toDataTableJson(page, "id","userCode","userName","sex",
				"birthday","email","mobilePhone");
	}
	
}
