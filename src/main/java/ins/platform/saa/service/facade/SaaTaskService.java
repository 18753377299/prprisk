package ins.platform.saa.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.vo.SaaTaskVo;
@Rpc
public interface SaaTaskService extends BaseCrudService<SaaTaskVo, String> {

	public List<SaaTaskVo> findAll();

	public void updateTaskAndTaskRole(SaaTaskVo saaTaskVo);

}
