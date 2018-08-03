package com.picc.platform.exercise.service.spring;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.picc.platform.exercise.schema.Exercise;
import com.picc.platform.exercise.service.facade.ExerciseService;
import com.picc.platform.exercise.vo.ExerciseVo;
import ins.framework.common.ResultPage;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.web.util.ResponseUtils;
import ins.platform.common.service.facade.DataTablesService;

@Rpc
@Service(value = "exerciseService")
public class ExerciseServiceSpringImpl extends AbstractBaseCrudServiceSpringImpl<Exercise, String, ExerciseVo, String> implements ExerciseService {
//	@Autowired
//	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;
	
	@Override
	public String findForDataTables(Map<String, String[]> paramMap) {
		String hql = "from Exercise e";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return ResponseUtils.toDataTableJson(page, "userCode","userName","insertTimeForHis","operateTimeForHis");
	}
	
}
