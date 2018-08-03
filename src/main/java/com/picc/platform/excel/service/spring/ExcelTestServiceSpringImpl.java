package com.picc.platform.excel.service.spring;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.picc.platform.excel.schema.ExcelTest;
import com.picc.platform.excel.service.facade.ExcelTestService;
import com.picc.platform.excel.vo.ExcelTestVo;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;

@Rpc
@Service(value = "excelTestService")
public class ExcelTestServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<ExcelTest, Long, ExcelTestVo, Long>
		implements ExcelTestService {

	@Autowired
	JdbcTemplate jdbcTemplate;
	@Autowired
	DatabaseDao databaseDao;
	
	@Override
	public List<ExcelTestVo> findAll() {
		List<ExcelTest> pos = databaseDao.findAll(ExcelTest.class);
		List<ExcelTestVo> vos = new ArrayList<ExcelTestVo>();
		for(ExcelTest po : pos){
			ExcelTestVo vo = super.copyTo(ExcelTestVo.class, po);
			vos.add(vo);
		}
		return vos;
	}
	
	@Override
	public void batchUpdate(List<ExcelTestVo> excelTestList) {
		final List<ExcelTestVo> excelTests = excelTestList;
		String sql = "INSERT INTO excel_test_temp (row_id,id,code,name," + 
				"remark,valid_status,insert_time_for_his,operate_time_for_his) " + 
				" VALUES (seq_excel_test_temp.nextval,?,?,?,?,?,?,?)";
		jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
			public void setValues(PreparedStatement ps, int i)
					throws SQLException {
				ps.setLong(1, excelTests.get(i).getId());
				ps.setString(2, excelTests.get(i).getCode());
				ps.setString(3, excelTests.get(i).getName());
				ps.setString(4, excelTests.get(i).getRemark());
				ps.setString(5, excelTests.get(i).getValidStatus());
				if(excelTests.get(i).getInsertTimeForHis() == null){
					ps.setDate(6, null);
				}else{
					ps.setDate(6, new java.sql.Date(excelTests.get(i).getInsertTimeForHis().getTime()));
				}
				if(excelTests.get(i).getOperateTimeForHis() == null){
					ps.setDate(7, null);
				}else{
					ps.setDate(7, new java.sql.Date(excelTests.get(i).getOperateTimeForHis().getTime()));
				}
			}

			public int getBatchSize() {
				return excelTests.size();
			}
		});
	}

	@Override
	public void batchDelete(List<Long> idList) {
		final List<Long> ids = idList;
		String sql = "DELETE FROM excel_test_temp WHERE id = ?";
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

}
