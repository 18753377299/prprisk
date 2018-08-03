package ins.platform.sdd.service.spring;

import org.springframework.stereotype.Service;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.schema.SddCode;
import ins.platform.sdd.service.facade.SddCodeService;
import ins.platform.vo.SddCodeVo;
@Rpc
@Service(value = "sddCodeService")
public class SddCodeServiceSpringImpl extends
		AbstractBaseCrudServiceSpringImpl<SddCode, String,SddCodeVo, String> implements
		SddCodeService {
	
}
