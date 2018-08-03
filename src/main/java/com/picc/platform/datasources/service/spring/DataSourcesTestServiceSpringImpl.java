package com.picc.platform.datasources.service.spring;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.picc.platform.datasources.service.facade.DataSourcesTestService;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;

@Rpc
@Service("dataSourcesTestService")
public class DataSourcesTestServiceSpringImpl implements DataSourcesTestService{

	@Autowired
	JdbcTemplate jdbcTemplate;
	@Autowired
	DatabaseDao databaseDao;
	
	private String query(){
		String sql = "select USERNAME from USER_USERS";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);
		if(list != null && list.size() > 0){
			return list.get(0).get("username").toString();
		}
		return null;
	}
	
	@Override
	public String methodA() {
		return query();
	}

	@Override
	public String methodB() {
		return query();
	}

	@Override
	public String methodC() {
		String str1 = query();
		String str2 = methodB();
		String str3 = query();
		return str1 + "--" + str2 + "--" + str3;
	}

	@Override
	public String methodD() {
		String str1 = query();
		String str2 = methodA();
		String str3 = query();
		return str1 + "--" + str2 + "--" + str3;
	}

}
