package ins.platform.sysuserproperty.service.facade;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SysUserPropertyVo;
@Rpc
public interface SysUserPropertyService extends BaseCrudService<SysUserPropertyVo, String> {

	public SysUserPropertyVo findByUserCode(String userCode);

}
