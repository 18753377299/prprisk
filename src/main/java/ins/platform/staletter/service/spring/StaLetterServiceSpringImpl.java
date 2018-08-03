package ins.platform.staletter.service.spring;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.utils.Beans;
import ins.platform.common.AppConf;
import ins.platform.schema.StaLetter;
import ins.platform.staletter.service.facade.StaLetterService;
import ins.platform.vo.StaLetterVo;

@Rpc
@Service(value = "staLetterService")
public class StaLetterServiceSpringImpl implements StaLetterService {
	@Autowired
	DatabaseDao databaseDao;

	@Override
	public StaLetterVo findByPK(String id) {
		Assert.notNull(id, "id must have value.");
		StaLetter po = databaseDao.findByPK(StaLetter.class, id);

		StaLetterVo vo = new StaLetterVo();
		Beans.from(po).to(vo);
		return vo;
	}

	@Override
	public void save(StaLetterVo vo) {
		Assert.notNull(vo, "staLetter must have value.");
		StaLetter po = new StaLetter();
		Beans.from(vo).to(po); 
		databaseDao.save(StaLetter.class, po);
	}

	@Override
	public void deleteSend(String id) {
		Assert.notNull(id, "id must have value.");
		StaLetter po = databaseDao.findByPK(StaLetter.class, id);
		po.setValidFlagSend("0");
		databaseDao.save(StaLetter.class, po);
	}

	@Override
	public void deleteRec(String id) {
		Assert.notNull(id, "id must have value.");
		StaLetter po = databaseDao.findByPK(StaLetter.class, id);
		po.setValidFlagRec("0");
		databaseDao.save(StaLetter.class, po);
	}

	@Override
	public List<StaLetterVo> findStaLettersRec(String userCode) {
		Assert.hasText(userCode, "userCode must have value.");
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("receiver", userCode);

		queryRule.addEqual("validFlagRec", "1");
		List<StaLetter> poList = databaseDao.findTop(StaLetter.class,
				queryRule, AppConf.getTopRecordLimit());
		List<StaLetterVo> voList = new ArrayList<StaLetterVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			StaLetter po = poList.get(i);
			StaLetterVo vo = new StaLetterVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList;
	}

	@Override
	public List<StaLetterVo> findStaLettersSent() {
		String userCode = SecurityUtils.getSubject().getPrincipal().toString();
		QueryRule queryRule = QueryRule.getInstance();
		queryRule.addEqual("sender", userCode);

		queryRule.addEqual("validFlagSend", "1");
		List<StaLetter> poList = databaseDao.findTop(StaLetter.class,
				queryRule, AppConf.getTopRecordLimit());
		List<StaLetterVo> voList = new ArrayList<StaLetterVo>(poList.size());
		for (int i = 0; i < poList.size(); i++) {
			StaLetter po = poList.get(i);
			StaLetterVo vo = new StaLetterVo();
			Beans.from(po).to(vo);
			voList.add(vo);
		}
		return voList; 
	}

}
