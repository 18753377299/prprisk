package ins.platform.check.service.facade;

import java.util.Date;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.ImsCheckDetailVo;
@Rpc
public interface CheckDetailService extends BaseCrudService<ImsCheckDetailVo, String> {

	public ImsCheckDetailVo queryCheckByUserCodeAndWorkDay(String userCode, Date workDay);

}
