package ins.platform.sysareadict.service.facade;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SysAreaDictVo;
@Rpc
public interface SysAreaDictService extends BaseCrudService<SysAreaDictVo, String> {

}
