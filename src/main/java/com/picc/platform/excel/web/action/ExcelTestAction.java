package com.picc.platform.excel.web.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.picc.platform.excel.service.facade.ExcelTestService;
import com.picc.platform.excel.vo.ExcelTestVo;

import ins.platform.common.web.util.XlsxParser;
import ins.platform.common.web.util.XlsxUserExport;

@Controller
@RequestMapping("/excelTest")
public class ExcelTestAction {

	@Autowired
	ExcelTestService excelTestService;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private static final Logger logger = LoggerFactory
			.getLogger(ExcelTestAction.class);
	
	//反馈信息
	private static final ThreadLocal<StringBuffer> sb = new ThreadLocal<StringBuffer>() {
		@Override
		protected StringBuffer initialValue() {
			return new StringBuffer();
		}
	};
	//成功条数
	private static final ThreadLocal<Integer> successFlag = new ThreadLocal<Integer>() {
		@Override
		protected Integer initialValue() {
			return 0;
		}
	};
	//失败条数
	private static final ThreadLocal<Integer> errorFlag = new ThreadLocal<Integer>() {
		@Override
		protected Integer initialValue() {
			return 0;
		}
	};
	//核准List
	private static final ThreadLocal<List<ExcelTestVo>> excelTestList = new	ThreadLocal<List<ExcelTestVo>>() {
		@Override
		protected List<ExcelTestVo> initialValue() {
			return new ArrayList<ExcelTestVo>();
		}
	};
	
	@RequestMapping("/show")
	public String show(){
		return "showcase/excel/Show";
	}
	
	@RequestMapping(value = "/export")
	public void exportForBank(HttpServletRequest request,
			HttpServletResponse response) throws ServletException {
		XlsxUserExport xlsxUserExport = new XlsxUserExport();
//		Map<String, String[]> map = (Map<String, String[]>) request
//				.getParameterMap();
//		String status = map.get("status")[0];// 状态
//		String loanType = map.get("[form][loanType][value]")[0];// 档案类型
		List<ExcelTestVo> excelTests = new ArrayList<ExcelTestVo>();
		excelTests = excelTestService.findAll();
		try {
			xlsxUserExport.writeExcelExcelTest(response, excelTests);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error("导出失败 {}", e);
		}
	}
	
	@RequestMapping(value = "/upload.dialog")
	public ModelAndView upload(HttpServletRequest request,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		String result = "";// 导入结果
		if (file == null) {
			result = "请选择上传的文件！";
		} else {
			StringBuffer msg = new StringBuffer();// 返回信息
			String fileName = file.getOriginalFilename().toString();
			String fileType = fileName.substring(fileName.lastIndexOf('.') + 1);
			if (!(fileType == null) &&fileType.equals("xls")) {

			} else {
//				CommonsMultipartFile cf = (CommonsMultipartFile) file;// 转换文件类型
//				DiskFileItem fi = (DiskFileItem) cf.getFileItem();
//				File f = fi.getStoreLocation();
				// 设置上传文件目录  
				String uploadPath = request.getSession().getServletContext().getRealPath("/") + File.separator + "exceltemp" + File.separator;
				// 设置目标文件  不存在是创建
				File pathFile = new File(uploadPath);
				if(!pathFile.exists()){
					pathFile.mkdir();
				}
				File f = new File(uploadPath, file.getOriginalFilename());
				try {
					file.transferTo(f);
				} catch (Exception e) {
//					logger.error(e.getMessage(), e);
				}
				AImport aImport = new AImport();// 核准导入
				aImport.setTitleRow(1);				
				try {
					aImport.processOneSheet(f, 0);// 将数据插入temp表
					excelTestService.batchUpdate(excelTestList.get());
					excelTestList.set(new ArrayList<ExcelTestVo>());
					StringBuffer err = new StringBuffer();
					err = sb.get();
					int success = successFlag.get();
					int error = errorFlag.get();
					// 将数据从temp表导入主表
					String selectApprovedRe = "select a.id from excel_test_temp a,"
								+ "(select id,min(row_id) row_id from excel_test_temp group by id having count(1) > 1) b "
								+ "where a.id = b.id "
								+ "and a.row_id > b.row_id";
					List<Map<String, Object>> list = jdbcTemplate
							.queryForList(selectApprovedRe);// 查询temp表中重复数据
					if (list.size() > 0) {
						List<Long> ids = new ArrayList<Long>();// 用来保存重复字段供删除
						Set<String> setMsg = new HashSet<String>();
						for (Map<String, Object> map : list) {
							Long id = Long.parseLong(map.get("id").toString());
							ids.add(id);
							// 返回重复信息
							if(setMsg.add(id.toString())){
							msg.append("文件中有多个Id为：" + id
									+ "的数据---");
							success--;
							error++;
							}
							success--;
							error++;
						}	
						excelTestService.batchDelete(ids);
					}
//					String safeModeOff = "SET SQL_SAFE_UPDATES=0";
//					jdbcTemplate.update(safeModeOff.toString());// 关闭safemode
//					String delApprovedRe = "delete from excel_test_temp as a,"
//							+ "(select *,min(row_id) from excel_test_temp group by id having count(1) > 1) as b "
//							+ "where a.id = b.id "
//							+ "and a.row_id > b.row_id";
//					jdbcTemplate.update(delApprovedRe.toString());// 删除temp表中重复数据						
					
					String approvedRe = "select sct.id "
							+ "from excel_test_temp sct "
							+ "INNER JOIN excel_test sc "
							+ "on (sc.id=sct.id)";
					List<Map<String, Object>> list2 = jdbcTemplate
							.queryForList(approvedRe);// 查询temp表中与主表重复数据
					if (list2.size() > 0) {
						List<Long> ids = new ArrayList<Long>();
						Set<String> setMsg = new HashSet<String>();
						for (Map<String, Object> map : list2) {
							Long id = Long.parseLong(map.get("id").toString());
							ids.add(id);
							// 返回重复信息
							if(setMsg.add(id.toString())){
							msg.append("Id为：" + id.toString()
									+ "的数据 已存在  ---");}
							success--;
							error++;
						}
						
						excelTestService.batchDelete(ids);// 删除temp表中与主表重复数据
					}
					// create temporary table tmp_wrap select * from
					// excel_test_temp group by contract_no,id_no having
					// count(1)
					// >= 1;
					
//					String approvedUniqueOff = "set unique_checks = 0";
//					String approvedForeignOff = "set foreign_key_checks = 0";
//					jdbcTemplate.update(approvedUniqueOff);// 禁止对唯一索引的检查
//					jdbcTemplate.update(approvedForeignOff);// 禁止对外键的检查
					String sql = "INSERT INTO excel_test ("
							+ "id,code,name,remark,valid_status,"
							+ "insert_time_for_his,operate_time_for_his) "
							+ " SELECT id,code,name,remark,valid_status,"
							+ "insert_time_for_his,operate_time_for_his"
							+ " FROM excel_test_temp";
					jdbcTemplate.update(sql);// 将tmp表中数据插入主表
//					String approvedUnique = "set unique_checks = 1";
//					String approvedForeign = "set foreign_key_checks = 1";
//					jdbcTemplate.update(approvedUnique);// 启动对唯一索引的检查
//					jdbcTemplate.update(approvedForeign);// 启动对外键的检查
					String approvedClear = "TRUNCATE TABLE excel_test_temp";
					jdbcTemplate.update(approvedClear);// 清空temp表
					if (err.length() != 0) {
						msg.append(err);
					}
					sb.set(new StringBuffer());
					msg.append("导入完毕！成功" + success + "条,失败" + error + "条---");
					successFlag.set(0);
					errorFlag.set(0);
				}catch(RuntimeException e){
					throw e;
				} catch (Exception e) {
//					e.printStackTrace();
					logger.error("导入失败 {}"+ e.getMessage(), e);
//					throw new BusinessException("导入失败" + e.getMessage(), false);
				}finally{
					if(f.exists()){
						f.delete();
					}
					if(pathFile.exists()){
						pathFile.delete();
					}
				}
				result = msg.toString();
			}
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("showcase/excel/Success");
		return mav;
	}
	
	class AImport extends XlsxParser {
		public void optRows(int sheetIndex, String sheetName, int curRow,
				List<String>rowList) throws Exception {

			StringBuffer err = new StringBuffer();
			err = sb.get();
			int success = successFlag.get();
			int error = errorFlag.get();
			if (rowList.size() == 7) {

				StringBuffer rowerr = new StringBuffer();
				ExcelTestVo excelTest = new ExcelTestVo();

				if (StringUtils.isBlank(rowList.get(0))
						|| StringUtils.isBlank(rowList.get(1))
						|| StringUtils.isBlank(rowList.get(2))) {
					rowerr.append("第" + (curRow + 1) + "行");
					if (StringUtils.isBlank(rowList.get(0))){
						rowerr.append(" ID");}
					rowerr.append(" 为空---");
				}
				
				excelTest.setId(Long.parseLong(rowList.get(0)));
				if (StringUtils.isNotBlank(rowList.get(1))){
					excelTest.setCode(rowList.get(1));
				}
				if (StringUtils.isNotBlank(rowList.get(2))){
					excelTest.setName(rowList.get(2));
				}
				if (StringUtils.isNotBlank(rowList.get(3))){
					excelTest.setRemark(rowList.get(3));
				}
				if (StringUtils.isNotBlank(rowList.get(4))){
					excelTest.setValidStatus(rowList.get(4));
				}
				if (StringUtils.isNotBlank(rowList.get(5))){
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Date date = sdf.parse(rowList.get(5));
					excelTest.setInsertTimeForHis(new java.sql.Date(date.getTime()));
				}
				if (StringUtils.isNotBlank(rowList.get(6))){
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Date date = sdf.parse(rowList.get(6));
					excelTest.setOperateTimeForHis(new java.sql.Date(date.getTime()));
				}
				
				if (rowerr.length() == 0) {
					List<ExcelTestVo> list = new ArrayList<ExcelTestVo>();
					list = excelTestList.get();
					if (list.size() < 2000) {
						list.add(excelTest);
						excelTestList.set(list);
						successFlag.set(success + 1);
					} else {
						list.add(excelTest);
                        successFlag.set(success + 1);
						excelTestService.batchUpdate(list);
						list.clear();
						excelTestList.set(list);
					}

				} else {
					err.append(rowerr);
					sb.set(err);
					errorFlag.set(error + 1);
				}
			} else {
				if (err.length() == 0) {
					err.append("模板列数不正确！---");
					sb.set(err);
				}
				errorFlag.set(error + 1);
			}
		}
	}

	
}
