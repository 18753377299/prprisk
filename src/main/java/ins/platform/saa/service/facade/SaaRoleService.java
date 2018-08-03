package ins.platform.saa.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.saa.vo.SaaRoleVo;
@Rpc
public interface SaaRoleService extends BaseCrudService<SaaRoleVo, String> {

	public List<SaaRoleVo> findAll();

	public void updateRoleAndRoleTask(SaaRoleVo saaRoleVo);

}
