package com.picc.platform.pdfcserver.service.facade;

import java.util.Map;

import ins.framework.rpc.annotation.Rpc;

import com.picc.platform.pdfcserver.schema.vo.PdfcServerVo;

@Rpc
public interface PdfcServerService {

	/**
	 * 根据id获取pdfcServer信息对象
	 * @param id
	 * @return PdfcServer
	 */
	public PdfcServerVo findByPK(java.lang.String id);



	/**
	 * 根据查询对象获取Page对象pdfcServer列表的json字符
	 * 
	 * @param paramMap
	 * @return String
	 */
	public String findForDataTables(Map<String, String[]> paramMap);

	/**
	 * 更新pdfcServer信息
	 * 
	 * @param pdfcServer
	 */
	public void update(PdfcServerVo pdfcServerVo);

	/**
	 * 保存pdfcServer信息
	 * 
	 * @param pdfcServer
	 * @return Long
	 */
	public java.lang.String save(PdfcServerVo pdfcServerVo);

	/**
	 * 刪除pdfcServer信息
	 * 
	 * @param id
	 */
	public void deleteByPK(java.lang.String id);

}
