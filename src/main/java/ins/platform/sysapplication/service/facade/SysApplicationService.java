package ins.platform.sysapplication.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SysApplicationVo;
@Rpc
public interface SysApplicationService extends BaseCrudService<SysApplicationVo, String> {

	public List<SysApplicationVo> findAll();

}
