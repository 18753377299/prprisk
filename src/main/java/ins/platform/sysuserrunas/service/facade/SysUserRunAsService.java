package ins.platform.sysuserrunas.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.vo.SysUserVo;
@Rpc
public interface SysUserRunAsService {

	public void grantRunAs(String fromUserCode, String toUserCode);

	public void revokeRunAs(String fromUserCode, String toUserCode);

	public boolean exists(String fromUserCode, String toUserCode);

	public List<SysUserVo> findFromUserCodes(String toUserCode);

	public List<SysUserVo> findToUserCodes(String fromUserCode);

	public List<SysUserVo> findGrantList(String fromUserCode);

}
