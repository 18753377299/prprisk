package ins.platform.saa.service.facade;

import ins.framework.power.PowerService;
import ins.framework.rpc.annotation.Rpc;
@Rpc
public interface SaaPowerService extends PowerService {
	// /**
	// * 获取有权操作的员工代码列表服务
	// *
	// * @param taskId功能代码Id
	// * @param comCodes
	// * 机构代码列表（支持多个，中间用逗号分隔）
	// * @param riskCodes
	// * 险种代码列表（支持多个，中间用逗号分隔）
	// * @param userCodes
	// * 可供选择的员工代码列表（查询结果内部限制50条）
	// * @return 有权操作的员工代码列表
	// */
	// public List<String> findPermitUserCodeList1(Long taskId, String comCodes,
	// String riskCodes, List<String> userCodes);
	//
	// /**
	// * 获取有权操作的员工代码列表服务
	// *
	// * @param taskCode功能代码
	// * @param comCodes
	// * 机构代码列表（支持多个，中间用逗号分隔）
	// * @param riskCodes
	// * 险种代码列表（支持多个，中间用逗号分隔）
	// * @param userCodes
	// * 可供选择的员工代码列表（查询结果内部限制50条）
	// * @return 有权操作的员工代码列表
	// */
	// public List<String> findPermitUserCodeList(String taskCode,
	// String comCodes, String riskCodes, List<String> userCodes);
	//
	// /**
	// * 获取有权的机构列表的查询语句，可以作为子查询
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskId功能代码Id
	// * @return 有权的机构列表的查询语句
	// */
	// public boolean checkPower(String userCode, String taskCode);
	//
	// // public String findPermitComCodeHql(String userCode, Long taskId);
	//
	// /**
	// * 获取有权的机构列表的查询语句，可以作为子查询
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskCode功能代码
	// * @return 有权的机构列表的查询语句
	// */
	// // public String findPermitComCodeHql(String userCode, String taskCode);
	//
	// /**
	// * 获取有权操作的员工代码列表服务
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskId功能代码Id
	// * @return 有权操作的机构代码列表
	// */
	// public List<String> findPermitComCodeList(String userCode, Long taskId);
	//
	// /**
	// * 获取有权操作的机构代码列表服务
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskCode功能代码
	// * @return 有权操作的机构代码列表
	// */
	// public List<String> findPermitComCodeList(String userCode, String
	// taskCode);
	//
	// /**
	// * 获取有权操作的机构代码列表服务
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskCode功能代码
	// * @return 有权操作的机构代码列表
	// */
	// public Finder findcomPower(String userCode, String taskCode);
	//
	// /**
	// * 数据权限检查服务
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskCode
	// * 功能代码
	// * @param userCodes
	// * 员工代码列表
	// * @param comCodes
	// * 机构代码列表
	// * @param riskCodes
	// * 险种代码列表
	// * @return 有权返回true，无法返回false
	// */
	//
	// public List getPermitDatas(String userCode, String taskCode, String
	// type);
	//
	// public List getExceptDatas(String userCode, String taskCode, String
	// type);
	//
	// public boolean checkDataPower(String userCode, String taskCode,
	// String[] userCodes, String[] comCodes, String[] riskCodes);
	//
	// public boolean checkPermitRiskData(String userCode, String taskCode,
	// String riskCode);
	//
	// public boolean checkPermitCompanyData(String userCode, String taskCode,
	// String comCode);
	//
	// public List<String> getPeimitRisk(String userCode, String taskCode);
	//
	// public List<String> getPeimitCompany(String userCode, String taskCode);
	//
	// public void addDataPower(String userCode, String taskCode, String type,
	// String dataValue);
	//
	// public List<String> getPermitDatasByUserCode(String userCode, String
	// type);
	//
	// public List getExceptDatasByUserCode(String userCode, String type);
	//
	// public List<String> findPermitComCodes(String userCode, Long taskId);
	//
	// public void addPower(String userCode, Finder finder);
	//
	// public SaaFactor FindFactor(String type);
	//
	// public SaaPermitVO getDataByUserCodeAndType(String userCode);
	//
	// public String getDataTypeByFactorCode(String type);
	//
	// public Date changeOneTypeDate(String Date);
	//
	// public List<Date> changeTypeDate(List<?> permitDataList);
	//
	// public List<SaaPermitFloatVO> getAllFloatDateList(List<?>
	// permitDataList);
	//
	// public List<SaaPermitDateVO> getAllDateList(List<?> permitDataList);
	//
	// public List<String> getDeptByType(String type);
	//
	// public List<Double> changeTypeDouble(List<?> permitDataList);
	//
	// public List<Float> changeType(List<?> permitDataList);
	//
	// public List getPermitDatasByUserCodeAndDept(String userCode, String type,
	// String dept);
	//
	// public List getExceptDatasByUserCodeAndDept(String userCode, String type,
	// String dept);
	//
	// public List<SaaFactor> getFactors();
	//
	// public List<SaaFactorField> getColumns(SaaFactor saaFactor);
	//
	// public List<String> findPermitUserCodeList(Long taskId, String comCodes,
	// String riskCodes, List<String> userCodes);
	//
	// public String findPermitComCodeHql(String userCode, Long taskId);
	//
	// public String addPower(String userCode, String taskCode,
	// String userCodeFields, String comCodeFields, String riskCodeFields);
	//
	// public void testMethord();

}
