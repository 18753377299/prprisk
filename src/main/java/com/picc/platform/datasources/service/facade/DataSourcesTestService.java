package com.picc.platform.datasources.service.facade;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.common.db.annotation.DataSource;

@Rpc
public interface DataSourcesTestService {
	
	@DataSource("master")
	public String methodA();
	
	@DataSource("slave")
	public String methodB();
	
	@DataSource("master")
	public String methodC();
	
	@DataSource("slave")
	public String methodD();
	
}
