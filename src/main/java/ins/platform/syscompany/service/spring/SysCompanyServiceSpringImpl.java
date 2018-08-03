package ins.platform.syscompany.service.spring;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Service;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.common.service.facade.DataTablesService;
import ins.platform.common.web.util.CompanyUtils;
import ins.platform.common.web.util.DataTableResponseUtils;
import ins.platform.schema.SysCompany;
import ins.platform.syscompany.service.facade.SysCompanyService;
import ins.platform.syscompany.vo.ComConfigVo;
import ins.platform.vo.SysCompanyVo;

@Rpc
@Service(value = "sysCompanyService")
public class SysCompanyServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SysCompany, Long, SysCompanyVo, Long>
		implements SysCompanyService  {

	@Autowired
	private DataTablesService dataTablesService;
	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from SysCompany";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return DataTableResponseUtils.toDataTableJson(page, "id",
				"comCode", "name", "comPath","createdAt","updatedAt",
				"description");
	}

	@Override
	public boolean hasSubCompany(String comCode) {
		List<SysCompanyVo> vos = this.findAll();
		if(comCode == null || "".equals(comCode)){
			return false;
		}
		for(SysCompanyVo vo : vos){
			if(vo.getComPath() == null || "".equals(vo.getComPath())){
				continue;
			}
			if(vo.getComPath().contains(comCode + "/")){
				return true;
			}
		}
		return false;
	}

	@Override
	public SysCompanyVo findCompanyByComCode(String comCode) {
		String hql = "from SysCompany where comCode = ?";
		List<SysCompany> pos = databaseDao.findTopByHql(SysCompany.class, hql, 1, comCode);
		if(pos == null || pos.size() == 0){
			return null;
		}
		SysCompanyVo vo = super.copyTo(SysCompanyVo.class, pos.get(0));
		return vo;
	}

	@Override
	public List<SysCompanyVo> findAll() {
		List<SysCompany> pos = databaseDao.findAll(SysCompany.class);
		List<SysCompanyVo> vos = new ArrayList<SysCompanyVo>();
		for(SysCompany po : pos){
			SysCompanyVo vo = super.copyTo(SysCompanyVo.class, po);
			vos.add(vo);
		}
		return vos;
	}

	@Override
	public Long getParentId(Long id) {
		SysCompanyVo vo = this.findByPK(id);
		String pComCode = CompanyUtils.findParentComCode(vo.getComPath());
		return this.findCompanyByComCode(pComCode).getId();
	}

	@Override
	public List<SysCompanyVo> findTopComForConfig() {
		List<SysCompanyVo> topVos = new ArrayList<SysCompanyVo>();
		List<SysCompanyVo> vos = this.findAll();
		for(SysCompanyVo vo : vos){
			if(vo.getComPath().equals(vo.getComCode())){
				topVos.add(vo);
			}
		}
		return topVos;
	}

	@Override
	public List<SysCompanyVo> findSubComForConfig(Long upperId) {
		List<SysCompanyVo> vos = new ArrayList<SysCompanyVo>();
		String hql = "from SysCompany where comPath like ?";
		String pComPath = this.findByPK(upperId).getComPath();
		List<SysCompany> pos = databaseDao.findAllByHql(SysCompany.class, hql, "%" + pComPath);
		for(SysCompany po : pos){
			SysCompanyVo vo = super.copyTo(SysCompanyVo.class, po);
			vos.add(vo);
		}
		return vos;
	}

	@Override
	public void updateComForDrop(ComConfigVo comConfigVo) {
		SysCompany sysCompany = databaseDao.findByPK(SysCompany.class,
				comConfigVo.getId());
		SysCompanyVo tarVo = this.findByPK(comConfigVo.getTargetId());
		if ("inner".equals(comConfigVo.getMoveType())) {// 成为目标菜单的子节点
			sysCompany.setComPath(tarVo.getComPath() + "/" + sysCompany.getComCode());
		} else if ("prev".equals(comConfigVo.getMoveType())
				|| "next".equals(comConfigVo.getMoveType())) {// 成为目标菜单的同级节点
			sysCompany.setComPath(tarVo.getComPath().replace(tarVo.getComCode(), sysCompany.getComCode()));
		} else if ("noTarget".equals(comConfigVo.getMoveType())) {// 没有目标节点时为顶级菜单
			sysCompany.setComPath(sysCompany.getComCode());
		}
		databaseDao.update(SysCompany.class, sysCompany);
		
	}

	@Override
	public List<SysCompanyVo> findComLike(String str) {
		List<SysCompanyVo> vos = new ArrayList<SysCompanyVo>();
		String hql = "from SysCompany where comCode like ? or comCName like ? or comEName like ?";
		List<SysCompany> pos = databaseDao.findAllByHql(SysCompany.class, hql, "%"+str+"%","%"+str+"%","%"+str+"%");
		for(SysCompany po : pos){
			SysCompanyVo vo = super.copyTo(SysCompanyVo.class, po);
			vos.add(vo);
		}
		return vos;
	}

	@Override
	public void batchUpdate(List<SysCompanyVo> sysCompanyList) {
		final List<SysCompanyVo> sysCompanys = sysCompanyList;
		String sql = "INSERT INTO sys_company_temp (row_id,id,com_code,com_path," + 
				"com_cname,com_ename,address_cname,address_ename,post_code," + 
				"phone_number,fax_number,upper_com_code,insurer_name," + 
				"com_type,manager,accountant,remark,new_com_code," + 
				"valid_status,acnt_unit,article_code,flag," + 
				"insert_time_for_his,operate_time_for_his) " 
				+ " VALUES (seq_sys_company_temp.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
			public void setValues(PreparedStatement ps, int i)
					throws SQLException {
				ps.setLong(1, sysCompanys.get(i).getId());
				ps.setString(2, sysCompanys.get(i).getComCode());
				ps.setString(3, sysCompanys.get(i).getComPath());
				ps.setString(4, sysCompanys.get(i).getComCName());
				ps.setString(5, sysCompanys.get(i).getComEName());
				ps.setString(6, sysCompanys.get(i).getAddressCName());
				ps.setString(7, sysCompanys.get(i).getAddressEName());
				ps.setString(8, sysCompanys.get(i).getPostCode());
				ps.setString(9, sysCompanys.get(i).getPhoneNumber());
				ps.setString(10, sysCompanys.get(i).getFaxNumber());
				ps.setString(11, sysCompanys.get(i).getUpperComCode());
				ps.setString(12, sysCompanys.get(i).getInsurerName());
				ps.setString(13, sysCompanys.get(i).getComType());
				ps.setString(14, sysCompanys.get(i).getManager());
				ps.setString(15, sysCompanys.get(i).getAccountant());
				ps.setString(16, sysCompanys.get(i).getRemark());
				ps.setString(17, sysCompanys.get(i).getNewComCode());
				ps.setString(18, sysCompanys.get(i).getValidStatus());
				ps.setString(19, sysCompanys.get(i).getAcntUnit());
				ps.setString(20, sysCompanys.get(i).getArticleCode());
				ps.setString(21, sysCompanys.get(i).getFlag());
				if(sysCompanys.get(i).getInsertTimeForHis() == null){
					ps.setDate(22, null);
				}else{
					ps.setDate(22, new java.sql.Date(sysCompanys.get(i).getInsertTimeForHis().getTime()));
				}
				if(sysCompanys.get(i).getOperateTimeForHis() == null){
					ps.setDate(23, null);
				}else{
					ps.setDate(23, new java.sql.Date(sysCompanys.get(i).getOperateTimeForHis().getTime()));
				}
			}

			public int getBatchSize() {
				return sysCompanys.size();
			}
		});
	}

	@Override
	public void batchDelete(List<Long> idList) {
		final List<Long> ids = idList;
		String sql = "DELETE FROM sys_company_temp WHERE id = ?";
		jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
			public void setValues(PreparedStatement ps, int i)
					throws SQLException {
				ps.setLong(1, ids.get(i));
			}
			public int getBatchSize() {
				return ids.size();
			}
		});
	}

	@Override
	public void deleteThisAndSub(Long id) {
		final String comPath = findByPK(id).getComPath();
		String sql = "DELETE FROM sys_company WHERE com_path like ?";
		jdbcTemplate.update(sql , new PreparedStatementSetter(){

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, comPath + "%");
			}
			
		});
	}
	
}
