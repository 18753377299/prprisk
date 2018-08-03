package ins.platform.common.service.facade;

import java.util.Map;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.vo.SddCodeVo;
@Rpc
public interface CodeTranService extends ins.framework.service.CodeTranService {

	/**
	 * 获取类型的所有翻译
	 * 
	 * @param transType
	 *            类型
	 * @return 类型的所有翻译
	 */
	public Map<String, SddCodeVo> findCodeDictTransMap(String transType);

}
