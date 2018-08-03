package ins.platform.sdd.service.facade;

import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.BaseCrudService;
import ins.platform.vo.SddTypeVo;

/**
 * 中科软数据字典-字典类型服务接口<br>
 * 继承基础的CRUD方法后，这里只需要声明业务特定的方法即可
 * 
 */
@Rpc
public interface SddTypeService extends BaseCrudService<SddTypeVo, String> {
	
}
