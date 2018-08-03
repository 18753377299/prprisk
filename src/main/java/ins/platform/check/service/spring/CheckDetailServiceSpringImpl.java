package ins.platform.check.service.spring;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.platform.check.service.facade.CheckDetailService;
import ins.platform.schema.ImsCheckDetail;
import ins.platform.vo.ImsCheckDetailVo;

@Rpc
@Service(value = "checkDetailService")
public class CheckDetailServiceSpringImpl extends 
		AbstractBaseCrudServiceSpringImpl<ImsCheckDetail, String, ImsCheckDetailVo, String>
		implements CheckDetailService {
	
	@Autowired
	DatabaseDao databaseDao;

	@Override
	public ImsCheckDetailVo queryCheckByUserCodeAndWorkDay(String userCode, Date workDay) {
		String queryString = "from ImsCheckDetail i where i.userCode = ? and i.workDay = ?";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(workDay);
		DateTime dateTime = DateTime.parse(date);
		Date date2 = dateTime.toDate();
		List<ImsCheckDetail> list = databaseDao.findAllByHql(ImsCheckDetail.class, queryString, userCode,date2);
		if(list != null && list.size() != 0){
			ImsCheckDetail po = list.get(0);
			ImsCheckDetailVo vo = super.copyTo(ImsCheckDetailVo.class,po);
			return vo;
		}
		return null;
	}

}
