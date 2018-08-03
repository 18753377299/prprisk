package ins.platform.staletter.service.facade;

import java.util.List;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.vo.StaLetterVo;
@Rpc
public interface StaLetterService {
	public StaLetterVo findByPK(String id);

	public void save(StaLetterVo staLetter);

	public void deleteSend(String id);

	public void deleteRec(String id);

	public List<StaLetterVo> findStaLettersRec(String userCode);

	public List<StaLetterVo> findStaLettersSent();

}
