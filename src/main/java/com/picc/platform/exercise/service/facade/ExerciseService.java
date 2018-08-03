package com.picc.platform.exercise.service.facade;

import com.picc.platform.exercise.vo.ExerciseVo;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
/**
 * 
 * 用户登录服务接口<br>
 * 继承基础的CRUD方法后，这里只需要声明业务特定的方法即可
 * 
 */
@Rpc
public interface ExerciseService extends BaseCrudService<ExerciseVo, String>{
	
}
