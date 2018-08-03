package com.picc.platform.excel.service.facade;

import java.util.List;

import com.picc.platform.excel.vo.ExcelTestVo;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;

@Rpc
public interface ExcelTestService extends BaseCrudService<ExcelTestVo, Long> {

	public void batchUpdate(List<ExcelTestVo> excelTestList);
	
	public void batchDelete(List<Long> idList);
	
	public List<ExcelTestVo> findAll();
	
}
