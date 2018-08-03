package ins.platform.check.service.facade;

import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ins.framework.dao.database.DatabaseDao;
import ins.platform.schema.ImsCheckDetail;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test/spring/*.xml" })
public class CheckDetailTest {
	
	@Autowired
	DatabaseDao databaseDao;

	@Test
	public void doTest() {
//		ImsCheckDetail po = new ImsCheckDetail();
//		po.setId(Uuids.shortUuid());
//		po.setWorkDay(new Date());
//		po.setCheckInTime(new Date());
//		databaseDao.save(ImsCheckDetail.class, po);
		
//		String str = "from ImsCheckDetail i where i.userCode = ? and to_char(i.workDay,'yyyy-MM-dd') = ?";
		String str2 = "from ImsCheckDetail i where i.userCode = ? and workDay = ?";
		Date date = new Date(2015-1900,8,15);
		DateTime dateTime = new DateTime(2015,9,15,0,0);
		DateTime parse = DateTime.parse("2015-9-15");
		Date date2 = parse.toDate();
		System.out.println(date);
		List<ImsCheckDetail> list = databaseDao.findAllByHql(ImsCheckDetail.class, str2, "admin",date2);
		for(ImsCheckDetail ims : list){
			System.out.println(ims.getUserCode() + "," + ims.getWorkDay() + "," + ims.getCheckInTime());
		}
	}
	
}
