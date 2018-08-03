package com.picc.platform.pdfcserver.service.spring;

import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.AbstractBaseCrudServiceSpringImpl;
import ins.framework.web.util.ResponseUtils;
import ins.platform.common.service.facade.DataTablesService;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.picc.platform.pdfcserver.schema.model.PdfcServer;
import com.picc.platform.pdfcserver.schema.vo.PdfcServerVo;
import com.picc.platform.pdfcserver.service.facade.PdfcServerService;

@Rpc
@Service(value="pdfcServerService")
public class PdfcServerServiceSpringImpl 
		extends AbstractBaseCrudServiceSpringImpl<PdfcServer,java.lang.String,PdfcServerVo,java.lang.String>
		implements PdfcServerService {
			
	@Autowired
	private DatabaseDao databaseDao;
	@Autowired
	private DataTablesService dataTablesService;
	private static final Log logger = LogFactory.getLog(PdfcServerServiceSpringImpl.class);

	/**
	 * 根据id获取pdfcServer信息对象
	 * @param id
	 * @return PdfcServerVo
	 */
	@Override
	public PdfcServerVo findByPK(java.lang.String id) {
		logger.debug("获取pdfcServer�? " + "id:"+id + "�?pdfcServer信息");
		return super.findByPK(id);
	}

	

	/**
	 * 根据查询对象获取Page对象�?pdfcServer列表的json字符�?
	 * 
	 * @param paramMap
	 * @return String
	 */
	@Override
	public String findForDataTables(Map<String, String[]> paramMap){
		logger.debug("获取pdfcServer信息列表");
		String hql = "from PdfcServer s where 1 = 1";
		ResultPage<?> page = dataTablesService.findForPage(paramMap, hql);
		return ResponseUtils.toDataTableJson(page,"id","hostName","os","cpu","mem","hd","hdInfo","ip","remark");
	}

	/**
	 * 刪除pdfcServer信息
	 * 
	 * @param pdfcServerVo
	 */
	@Override
	public void deleteByPK(java.lang.String id) {
		logger.debug("刪除 " + "id:"+id + "�?pdfcServer信息");
		super.deleteByPK(id);
	}

	/**
	 * 保存pdfcServer信息
	 * 
	 * @param pdfcServerVo
	 * @return Long
	 */
	@Override
	public java.lang.String save(PdfcServerVo pdfcServerVo) {
		logger.debug("保存pdfcServer信息");		
		return super.save(pdfcServerVo);
	}

	/**
	 * 更新pdfcServer信息
	 * 
	 * @param pdfcServerVo
	 */
	@Override
	public void update(PdfcServerVo pdfcServerVo) {
		logger.debug("更新 " + "id:"+pdfcServerVo.getId() + "pdfcServer信息");
		super.update(pdfcServerVo);
	}

}
