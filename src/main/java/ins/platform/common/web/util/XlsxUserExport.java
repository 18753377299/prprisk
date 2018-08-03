package ins.platform.common.web.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

import com.picc.platform.excel.vo.ExcelTestVo;

import ins.platform.vo.SysCompanyVo;


public class XlsxUserExport {

	public void writeExcelSysCompany(HttpServletResponse response,
			List<SysCompanyVo> sysCompanyList) throws IOException {
		SXSSFWorkbook wb = new SXSSFWorkbook(100);// 内存中保留 100 条数据，以免内存溢出
		Sheet sheet = wb.createSheet("机构表");

		try {
			Row row = sheet.createRow(0);
//			row.createCell(0).setCellValue("id");
//			row.createCell(1).setCellValue("comCode");
//			row.createCell(2).setCellValue("name");
//			row.createCell(3).setCellValue("comPath");
//			row.createCell(4).setCellValue("description");
//			row.createCell(5).setCellValue("createdAt");
//			row.createCell(6).setCellValue("updatedAt");
			row.createCell(0).setCellValue("id");
			row.createCell(1).setCellValue("comCode");
			row.createCell(2).setCellValue("comPath");
			row.createCell(3).setCellValue("comCName");
			row.createCell(4).setCellValue("comEName");
			row.createCell(5).setCellValue("addressCName");
			row.createCell(6).setCellValue("addressEName");
			row.createCell(7).setCellValue("postCode");
			row.createCell(8).setCellValue("phoneNumber");
			row.createCell(9).setCellValue("faxNumber");
			row.createCell(10).setCellValue("upperComCode");
			row.createCell(11).setCellValue("insurerName");
			row.createCell(12).setCellValue("comType");
			row.createCell(13).setCellValue("manager");
			row.createCell(14).setCellValue("accountant");
			row.createCell(15).setCellValue("remark");
			row.createCell(16).setCellValue("newComCode");
			row.createCell(17).setCellValue("validStatus");
			row.createCell(18).setCellValue("acntUnit");
			row.createCell(19).setCellValue("articleCode");
			row.createCell(20).setCellValue("flag");
			row.createCell(21).setCellValue("insertTimeForHis");
			row.createCell(22).setCellValue("operateTimeForHis");

			for (int i = 0; i < sysCompanyList.size(); i++) {
				SysCompanyVo sysCompany = sysCompanyList.get(i);
				row = sheet.createRow(i + 1);
//				row.createCell(0).setCellValue(sysCompany.getId());
//				row.createCell(1).setCellValue(sysCompany.getComCode());
//				row.createCell(2).setCellValue(sysCompany.getName());
//				row.createCell(3).setCellValue(sysCompany.getComPath());
//				row.createCell(4).setCellValue(sysCompany.getDescription());
//				row.createCell(5).setCellValue(sysCompany.getCreatedAt() == null?null:sysCompany.getCreatedAt().toString());
//				row.createCell(6).setCellValue(sysCompany.getUpdatedAt() == null?null:sysCompany.getUpdatedAt().toString());
				row.createCell(0).setCellValue(sysCompany.getId().toString());
				row.createCell(1).setCellValue(sysCompany.getComCode());
				row.createCell(2).setCellValue(sysCompany.getComPath());
				row.createCell(3).setCellValue(sysCompany.getComCName());
				row.createCell(4).setCellValue(sysCompany.getComEName());
				row.createCell(5).setCellValue(sysCompany.getAddressCName());
				row.createCell(6).setCellValue(sysCompany.getAddressEName());
				row.createCell(7).setCellValue(sysCompany.getPostCode());
				row.createCell(8).setCellValue(sysCompany.getPhoneNumber());
				row.createCell(9).setCellValue(sysCompany.getFaxNumber());
				row.createCell(10).setCellValue(sysCompany.getUpperComCode());
				row.createCell(11).setCellValue(sysCompany.getInsurerName());
				row.createCell(12).setCellValue(sysCompany.getComType());
				row.createCell(13).setCellValue(sysCompany.getManager());
				row.createCell(14).setCellValue(sysCompany.getAccountant());
				row.createCell(15).setCellValue(sysCompany.getRemark());
				row.createCell(16).setCellValue(sysCompany.getNewComCode());
				row.createCell(17).setCellValue(sysCompany.getValidStatus());
				row.createCell(18).setCellValue(sysCompany.getAcntUnit());
				row.createCell(19).setCellValue(sysCompany.getArticleCode());
				row.createCell(20).setCellValue(sysCompany.getFlag());
				row.createCell(21).setCellValue(sysCompany.getInsertTimeForHis() == null?null:sysCompany.getInsertTimeForHis().toString());
				row.createCell(22).setCellValue(sysCompany.getOperateTimeForHis() == null?null:sysCompany.getOperateTimeForHis().toString());
			}

			CellStyle cellStyle2 = wb.createCellStyle();
			cellStyle2.setAlignment(CellStyle.ALIGN_CENTER);
		} catch (Exception e) {
			e.printStackTrace();
		}
		File targetFile = File.createTempFile("TempTarget", ".xlsx");
		FileOutputStream output = new FileOutputStream(targetFile); // 读取的文件路径

		try {
			wb.write(output);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			output.flush();
			output.close();
			wb.close();
		}

		// 弹出下载框
		OutputStream out = null;
		InputStream input = null;
		try {
			response.setHeader("Content-Disposition", "attachment;"
					+ "filename=" + "sysCompany.xlsx");
			response.setContentType("application/msexcel");
			out = response.getOutputStream();
			input = new FileInputStream(targetFile);
			byte[] bytes = new byte[1024];
			int read = 0;
			while ((read = input.read(bytes)) > 0) {
				out.write(bytes, 0, read);
				out.flush();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 删除临时文件
			targetFile.delete();
			out.close();
			input.close();
		}
	}
	
	public void writeExcelExcelTest(HttpServletResponse response,
			List<ExcelTestVo> ExcelTestList) throws IOException {
		SXSSFWorkbook wb = new SXSSFWorkbook(100);// 内存中保留 100 条数据，以免内存溢出
		Sheet sheet = wb.createSheet("测试表");

		try {
			Row row = sheet.createRow(0);
			row.createCell(0).setCellValue("id");
			row.createCell(1).setCellValue("code");
			row.createCell(2).setCellValue("name");
			row.createCell(3).setCellValue("remark");
			row.createCell(4).setCellValue("validStatus");
			row.createCell(5).setCellValue("insertTimeForHis");
			row.createCell(6).setCellValue("operateTimeForHis");

			for (int i = 0; i < ExcelTestList.size(); i++) {
				ExcelTestVo ExcelTest = ExcelTestList.get(i);
				row = sheet.createRow(i + 1);
				row.createCell(0).setCellValue(ExcelTest.getId().intValue());
				row.createCell(1).setCellValue(ExcelTest.getCode());
				row.createCell(2).setCellValue(ExcelTest.getName());
				row.createCell(3).setCellValue(ExcelTest.getRemark());
				row.createCell(4).setCellValue(ExcelTest.getValidStatus());
				row.createCell(5).setCellValue(ExcelTest.getInsertTimeForHis() == null?null:ExcelTest.getInsertTimeForHis().toString());
				row.createCell(6).setCellValue(ExcelTest.getOperateTimeForHis() == null?null:ExcelTest.getOperateTimeForHis().toString());
			}

			CellStyle cellStyle2 = wb.createCellStyle();
			cellStyle2.setAlignment(CellStyle.ALIGN_CENTER);
		} catch (Exception e) {
			e.printStackTrace();
		}
		File targetFile = File.createTempFile("TempTarget", ".xlsx");
		FileOutputStream output = new FileOutputStream(targetFile); // 读取的文件路径

		try {
			wb.write(output);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			output.flush();
			output.close();
			wb.close();
		}

		// 弹出下载框
		OutputStream out = null;
		InputStream input = null;
		try {
			response.setHeader("Content-Disposition", "attachment;"
					+ "filename=" + "ExcelTest.xlsx");
			response.setContentType("application/msexcel");
			out = response.getOutputStream();
			input = new FileInputStream(targetFile);
			byte[] bytes = new byte[1024];
			int read = 0;
			while ((read = input.read(bytes)) > 0) {
				out.write(bytes, 0, read);
				out.flush();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 删除临时文件
			targetFile.delete();
			out.close();
			input.close();
		}
	}

}
