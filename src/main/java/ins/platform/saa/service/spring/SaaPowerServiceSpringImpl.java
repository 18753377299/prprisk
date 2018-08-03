package ins.platform.saa.service.spring;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.saa.service.facade.SaaPowerService;

import java.util.List;

import org.springframework.stereotype.Service;

/**
 * SAA权限核心类
 */
@Rpc
@Service(value = "saaPowerService")
public class SaaPowerServiceSpringImpl implements SaaPowerService {

	@Override
	public String addPower(String arg0, String arg1, String arg2, String arg3,
			String arg4) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String addPowerClaim(String arg0, String arg1, String arg2,
			String arg3, String arg4, String arg5) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkPower(String arg0, String arg1) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkPowerClaim(String arg0, String arg1, Object arg2,
			String arg3, String arg4) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<String> getPowerCompanyCode(String arg0, String arg1) {
		// TODO Auto-generated method stub
		return null;
	}
	// @Autowired
	// Dao dao;
	// @Autowired
	// private SaaFactorService saaFactorService;
	// @Autowired
	// private SaaFactorFieldService saaFactorFieldService;
	// @PersistenceContext
	// private EntityManager em;
	// /**
	// * 初始缓存实例
	// */
	// private static CacheService cacheManager = CacheManager
	// .getInstance("power");
	//
	// Map<String, Set<String>> typePropertyMap = new HashMap<String,
	// Set<String>>();
	//
	// public void setTypePropertyMap(Map<String, Set<String>> typePropertyMap)
	// {
	// this.typePropertyMap = typePropertyMap;
	// }
	//
	// public Map<String, Set<String>> getTypePropertyMap() {
	// return typePropertyMap;
	// }
	//
	// /**
	// * 功能权限控制服务
	// *
	// * @param userCode
	// * 用户代码
	// * @param taskcode
	// * 功能代码
	// * @return 有权限返回true，否则返回false
	// */
	// public boolean checkPower(String userCode, String taskCode) {
	// // 1．检查用户代码、功能代码是否存在，如果有任意一个不存在则返回false；
	// Assert.hasText(userCode, "userCode must have value");
	// Assert.hasText(taskCode, "taskCode must have value");
	// // 对超级用户特殊处理，直接返回true
	// if (CodeConstants.TOP_USERCODE.equals(userCode)) {
	// return true;
	// }
	// // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// String powerKey = cacheManager.generateCacheKey("checkPower", userCode,
	// taskCode);
	// // 3．检查缓存中是否存在对应powerKey的记录，如果有则返回其值；
	// Object result = cacheManager.getCache(powerKey);
	// if (result != null) {
	// return ((Boolean) result).booleanValue();
	// }
	// // 4．设定权限值powerValue为false；
	// boolean powerValue = false;
	// /*
	// * 查询岗位功能定义表中符合以下条件的记录数，如果大于0则设定powerValue为true，其条件为：
	// * 岗位为该员工的所属有权岗位之一，即员工岗位定义表中员工代码匹配传入员工代码且数据库当前日期在有效期限内的岗位；
	// * 功能代码匹配传入的功能代码且该功能代码有效标志为1； 岗位有效标志为1；
	// */
	// String queryString = "SELECT a FROM SaaUserRole a where a.userCode = ? "
	// + "and current_date() between a.startDate and a.endDate "
	// +
	// "and exists(select b from SaaRoleTask b where b.saaRole.id = a.saaRole.id "
	// + "and b.saaRole.validInd = ? ) and exists(select c from SaaTask c "
	// +
	// "where c.id in (select d.saaTask.id from SaaRoleTask d where d.saaRole.id = a.saaRole.id ) "
	// + "and c.taskCode=? and c.validInd = ? ) ";
	//
	// SaaUserRoleService saaUserRoleService = (SaaUserRoleService) Springs
	// .getBean("saaUserRoleService");
	// List<SaaUserRole> saaUserRoleList = saaUserRoleService
	// .findSaaUserRoleListByParams(queryString, userCode, "1",
	// taskCode, "1");
	// if (saaUserRoleList.size() > 0) {
	// powerValue = true;
	// }
	// // 5．将powerValue加入缓存中；
	// cacheManager.putCache(powerKey, powerValue);
	// // 6．返回权限值
	// return powerValue;
	//
	// /**
	// * Finder finder = Finder.newInstance(); SaaRoleTask roleTaskWrap =
	// * finder.from(SaaRoleTask.class); SaaUserRole saaUserRoleWrap =
	// * finder.from(SaaUserRole.class); SaaTask saaTaskWrap =
	// * finder.from(SaaTask.class); And and = finder.where().and();
	// * and.get(saaUserRoleWrap.getUserCode()).equalIfExist(userCode); //
	// * and.get(new // Date()).between(saaUserGradeWrap.getStartDate()).and(
	// * saaUserGradeWrap.getEndDate());
	// * and.get(saaUserRoleWrap.getSaaRole().getId()).equalIfExist(
	// * roleTaskWrap.getSaaRole().getId());
	// * and.get(roleTaskWrap.getSaaTask().getId()).equalIfExist(
	// * saaTaskWrap.getId()); Select select = finder.select();
	// * select.get(saaTaskWrap.getTaskCode()).distinct(); List<String>
	// * taskCodes = (List<String>) dao.list(finder); if
	// * (taskCodes.contains(taskCode)) { powerValue = true; }
	// * cacheManager.putCache(powerKey, powerValue); // 7．返回权限值 return
	// * powerValue;
	// */
	// }
	//
	// /**
	// * 获取业务权限服务
	// *
	// * @param userCode
	// * 用户代码
	// * @param taskcode
	// * 功能代码
	// * @param userCodeFields
	// * 用户代码字段列表
	// * @param comCodeFields
	// * 机构代码字段列表
	// * @param riskCodeFields
	// * 险种代码字段列表
	// * @return 业务权限查询条件范围
	// */
	// @SuppressWarnings("unchecked")
	// public String addPower(String userCode, String taskCode,
	// String userCodeFields, String comCodeFields, String riskCodeFields) {
	// // 1．检查用户代码、功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(userCode, "userCode must have value");
	// Assert.hasText(taskCode, "taskCode must have value");
	// if (CodeConstants.TOP_USERCODE.equals(userCode)) {
	// return " (1=1) ";
	// }
	// // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// String powerKey = cacheManager.generateCacheKey("addPower", userCode,
	// taskCode, userCodeFields, comCodeFields, riskCodeFields);
	// // 3．检查缓存中是否存在对应powerKey的记录，如果有则返回其值；
	// Object result = cacheManager.getCache(powerKey);
	// if (result != null) {
	// return result.toString();
	// }
	// // 4．建立权限记录列表powerList；
	// // 5．获取该用户所有有效业务权限授权记录，加入到powerList中，即查询用户岗位定义表中满足如下条件的记录：
	// // a) 用户代码和传入用户代码匹配；
	// // b) 数据库当前日期在有效期限内；
	// // c) 岗位为包含传入功能代码的岗位，即查询岗位功能定义表中满足如下条件的记录：
	// // i. 有效标志为1；
	// // ii. 功能ID为匹配传入功能代码的ID；
	// StringBuilder hql = new StringBuilder();
	// hql.append(" select userRole from SaaUserRole userRole");
	// hql.append("  where userRole.userCode = ?");
	// hql.append(" and current_date() between userRole.startDate and userRole.endDate ");
	// hql.append(" and userRole.saaRole.id in( ");
	// hql.append(" select roleTask.saaRole.id from SaaRoleTask roleTask where roleTask.saaTask.taskCode = ?)");
	// hql.append(" and userRole.saaRole.validInd = ? ");
	//
	// String querySaaUserRoleString = hql.toString();
	// Query querySaaUserRole = em.createQuery(querySaaUserRoleString);
	// querySaaUserRole.setParameter(1, userCode);
	// querySaaUserRole.setParameter(2, taskCode);
	// querySaaUserRole.setParameter(3, "1");
	// List<SaaUserRole> powerList = querySaaUserRole.getResultList();
	// /**
	// * List<SaaUserGrade> powerList = super.findByHql(hql.toString(),
	// * userCode, taskCode, "1");
	// */
	// String powerHql = "";
	// // 6．如果powerList为空则表示无权
	// if (powerList.size() == 0) {
	// powerHql = " (1=0) ";
	// /**
	// * if (logger.isDebugEnabled()) { logger.debug(userCode +
	// * "未配置业务权限"); }
	// */
	// cacheManager.putCache(powerKey, powerHql);
	// return powerHql;
	// }
	// // 重用hql用于存储权限SQL
	// hql.setLength(0);
	// hql.append(" (");// 最外层括号
	// final int prefixLength = hql.length();// 前缀长度
	// //
	// 8．循环powerList的各条记录，根据机构范围、用户范围、险种范围、表名、各字段名列表等追加SQL条件，各记录之间是OR的关系，其处理逻辑为：
	// String[] comCodeFieldArray = StringUtils.split(comCodeFields, ",");
	// String[] userCodeFieldArray = StringUtils.split(userCodeFields, ",");
	// String[] riskCodeFieldArray = StringUtils.split(riskCodeFields, ",");
	// if (comCodeFieldArray.length == 0 && userCodeFieldArray.length == 0
	// && riskCodeFieldArray.length == 0) {
	// Assert.isTrue(false,
	// "userCodeFields/comCodeFields/riskCodeFields can't all empty.");
	// }
	// for (int i = 0; i < powerList.size(); i++) {
	// SaaUserRole userRole = (SaaUserRole) powerList.get(i);
	// StringBuilder partSql = new StringBuilder();
	// StringBuilder recordSql = new StringBuilder();
	// // 处理机构范围
	// if (comCodeFieldArray.length > 0) {
	// Map<String, String> permitCompanyMap = new HashMap<String, String>();
	// Map<String, String> exceptCompanyMap = new HashMap<String, String>();
	// // 获取所有禁止机构代码
	// String queryExceptComCodesString =
	// "select saaExceptData from SaaExceptData saaExceptData "
	// +
	// "where saaExceptData.saaFactor.factorCode = ? and saaExceptData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.taskCode = ? ))";
	// Query queryExceptComCodes = em
	// .createQuery(queryExceptComCodesString);
	// queryExceptComCodes.setParameter(1, "COMCODE");
	// queryExceptComCodes.setParameter(2, userCode);
	// queryExceptComCodes.setParameter(3, taskCode);
	// List<SaaExceptData> exceptCompanies = queryExceptComCodes
	// .getResultList();
	//
	// /**
	// * List<SaaExceptCompany> exceptCompanies = userGrade
	// * .getSaaExceptCompanies();
	// */
	// for (int j = 0; j < exceptCompanies.size(); j++) {
	// exceptCompanyMap.put(exceptCompanies.get(j).getDataValue(),
	// null);
	// }
	// // 获取所有允许机构代码
	// String queryPermitComCodesString =
	// "select saaPermitData from SaaPermitData saaPermitData "
	// +
	// "where saaPermitData.saaFactor.factorCode = ? and saaPermitData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.taskCode = ? ))";
	// Query queryPermitComCodes = em
	// .createQuery(queryPermitComCodesString);
	// queryPermitComCodes.setParameter(1, "COMCODE");
	// queryPermitComCodes.setParameter(2, userCode);
	// queryPermitComCodes.setParameter(3, taskCode);
	// List<SaaPermitData> permitCompanies = queryPermitComCodes
	// .getResultList();
	// /**
	// * List<SaaPermitCompany> permitCompanies = userGrade
	// * .getSaaPermitCompanies();
	// */
	// for (int j = 0; j < permitCompanies.size(); j++) {
	// String comCode = permitCompanies.get(j).getDataValue();
	// // 禁止机构优先
	// if (!exceptCompanyMap.containsKey(comCode)) {
	// permitCompanyMap.put(comCode, null);
	// }
	// }
	// partSql.setLength(0);
	// // 处理机构范围
	// if (permitCompanyMap.size() == 0) {// 除外机构中存在和权限机构一致时产生此种情况
	// partSql.append("(1=0)");
	// } else {
	// String[] comCodeArray = new String[permitCompanyMap.size()];
	// permitCompanyMap.keySet().toArray(comCodeArray);
	// // 权限机构包含总公司时直接(1=1)
	// if (permitCompanyMap.containsKey(CodeConstants.TOP_COMPANY)) {
	// partSql.append("(1=1)");
	// } else {
	// // 过滤下级机构(根据comPath排序)
	// List<String> comPathList = saaPowerConfigService
	// .findComPathListByComCodeArray(comCodeArray);
	// partSql.append("(saaCompanyGrade.comPath like '")
	// .append(comPathList.get(0)).append("%'");
	// for (int j = 1; j < comPathList.size(); j++) {
	// String comPath = comPathList.get(j);
	// if (comPath.startsWith(comPathList.get(j - 1))) {
	// continue;
	// }
	// partSql.append(" or saaCompanyGrade.comPath like '")
	// .append(comPath).append("%'");
	// }
	// partSql.append(")");
	// }
	// // 处理禁止机构
	// if (exceptCompanyMap.size() > 0) {
	// comCodeArray = new String[exceptCompanyMap.size()];
	// exceptCompanyMap.keySet().toArray(comCodeArray);
	// // 过滤下级机构(根据comPath排序)
	// List<String> comPathList = saaPowerConfigService
	// .findComPathListByComCodeArray(comCodeArray);
	// partSql.append(
	// " and (saaCompanyGrade.comPath not like '")
	// .append(comPathList.get(0)).append("%'");
	// for (int j = 1; j < comPathList.size(); j++) {
	// String comPath = comPathList.get(j);
	// if (comPath.startsWith(comPathList.get(j - 1))) {
	// continue;
	// }
	// partSql.append(
	// " and saaCompanyGrade.comPath not like '")
	// .append(comPath).append("%'");
	// }
	// partSql.append(")");
	// }
	// if ("(1=0)".equals(partSql.toString())) {// 除外机构中存在和权限机构一致时产生此种情况
	// recordSql.append("(1=0)");
	// } else if ("(1=1)".equals(partSql.toString())) {
	// recordSql.append("(1=1)");
	// } else {
	// recordSql.append("(");
	// for (int j = 0; j < comCodeFieldArray.length; j++) {
	// recordSql
	// .append("(length(")
	// .append(comCodeFieldArray[j])
	// .append(")>0 and exists(select 1 from SaaCompanyGrade saaCompanyGrade where ")
	// .append("saaCompanyGrade.comCode = ")
	// .append(comCodeFieldArray[j])
	// .append(" and ").append(partSql)
	// .append(")");
	// if (j < comCodeFieldArray.length - 1) {
	// recordSql.append(")");
	// recordSql.append(" or ");
	// } else {
	// recordSql.append(")");
	// }
	// }
	// recordSql.append(")");
	// }
	// }
	// }
	// // 处理用户范围
	// if (userCodeFieldArray.length > 0
	// && !"(1=1)".equals(partSql.toString())
	// && recordSql.length() > 0) { // 权限机构只包含总公司则无需处理用户
	// Map<String, String> permitUserMap = new HashMap<String, String>();
	// // 获取所有允许险种代码
	// String queryPermitUserCodesString =
	// "select saaPermitData from SaaPermitData saaPermitData "
	// +
	// "where saaPermitData.saaFactor.factorCode = ? and saaPermitData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.taskCode = ? ))";
	// Query queryPermitUserCodes = em
	// .createQuery(queryPermitUserCodesString);
	// queryPermitUserCodes.setParameter(1, "USERCODE");
	// queryPermitUserCodes.setParameter(2, userCode);
	// queryPermitUserCodes.setParameter(3, taskCode);
	// List<SaaPermitData> permitUsers = queryPermitUserCodes
	// .getResultList();
	// /**
	// * List<SaaPermitUser> permitUsers =
	// * userGrade.getSaaPermitUsers();
	// */
	// for (int j = 0; j < permitUsers.size(); j++) {
	// permitUserMap.put(permitUsers.get(j).getDataValue(), null);
	// }
	// permitUserMap.put(userCode, null);// 添加自己
	// if (recordSql.length() > 0) {
	// recordSql.append(" or ");
	// }
	// partSql.setLength(0);
	// String[] userCodeArray = new String[permitUserMap.size()];
	// permitUserMap.keySet().toArray(userCodeArray);
	// for (int j = 0; j < userCodeArray.length; j++) {
	// partSql.append('\'').append(userCodeArray[j]).append("\',");
	// }
	// partSql.deleteCharAt(partSql.length() - 1);
	// for (int j = 0; j < userCodeFieldArray.length; j++) {
	// recordSql.append(userCodeFieldArray[j]);
	// if (partSql.indexOf(",") == -1) {
	// recordSql.append("=").append(partSql);
	// } else {
	// recordSql.append("in (").append(partSql).append(")");
	// }
	// if (j < userCodeFieldArray.length - 1) {
	// recordSql.append(" or ");
	// }
	// }
	// }
	// // 机构和用户一组，要放到一对括号中
	// if (recordSql.length() > 0) {
	// recordSql.insert(0, "(");
	// recordSql.append(")");
	// }
	// // 处理险种范围
	// if (riskCodeFieldArray.length > 0) {
	// Map<String, String> permitRiskMap = new HashMap<String, String>();
	// Map<String, String> exceptRiskMap = new HashMap<String, String>();
	//
	// // 获取所有禁止险种代码
	// String queryExceptRiskCodesString =
	// "select saaExceptData from SaaExceptData saaExceptData "
	// +
	// "where saaExceptData.saaFactor.factorCode = ? and saaExceptData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.taskCode = ? ))";
	// Query queryExceptRiskCodes = em
	// .createQuery(queryExceptRiskCodesString);
	// queryExceptRiskCodes.setParameter(1, "RISKCODE");
	// queryExceptRiskCodes.setParameter(2, userCode);
	// queryExceptRiskCodes.setParameter(3, taskCode);
	// List<SaaExceptData> exceptRisks = queryExceptRiskCodes
	// .getResultList();
	// /**
	// * List<SaaExceptRisk> exceptRisks =
	// * userGrade.getSaaExceptRisks();
	// */
	// for (int k = 0; k < exceptRisks.size(); k++) {
	// exceptRiskMap.put(exceptRisks.get(k).getDataValue(), null);
	// }
	// // 获取所有允许险种代码
	// String queryPermitRiskCodesString =
	// "select saaPermitData from SaaPermitData saaPermitData "
	// +
	// "where saaPermitData.saaFactor.factorCode = ? and saaPermitData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.taskCode = ? ))";
	// Query queryPermitRiskCodes = em
	// .createQuery(queryPermitRiskCodesString);
	// queryPermitRiskCodes.setParameter(1, "RISKCODE");
	// queryPermitRiskCodes.setParameter(2, userCode);
	// queryPermitRiskCodes.setParameter(3, taskCode);
	// List<SaaPermitData> permitRisks = queryPermitRiskCodes
	// .getResultList();
	// /**
	// * List<SaaPermitRisk> permitRisks =
	// * userGrade.getSaaPermitRisks();
	// */
	// for (int j = 0; j < permitRisks.size(); j++) {
	// String riskCode = permitRisks.get(j).getDataValue();
	// // 除外险种优先
	// if (!exceptRiskMap.containsKey(riskCode)) {
	// permitRiskMap.put(riskCode, null);
	// }
	// }
	// if (permitRiskMap.size() > 0
	// && !permitRiskMap.containsKey("PUB")) {
	// if (recordSql.length() > 0) {
	// recordSql.append(" and ");
	// }
	// recordSql.append("(");
	// partSql.setLength(0);
	// String[] riskCodeArray = new String[permitRiskMap.size()];
	// permitRiskMap.keySet().toArray(riskCodeArray);
	// String riskCodeOrRiskClass;
	// for (int j = 0; j < riskCodeArray.length; j++) {
	// riskCodeOrRiskClass = riskCodeArray[j];
	// if (riskCodeOrRiskClass.trim().length() < 3) { // 险类代码长度小于3
	// partSql.append('\'')
	// .append(riskCodeOrRiskClass.trim())
	// .append("\',");
	// List<String> riskList = saaPowerSupportService
	// .findRiskCodeListByClassCode(riskCodeOrRiskClass);
	// for (int k = 0; k < riskList.size(); k++) {
	// partSql.append('\'').append(riskList.get(k))
	// .append("\',");
	// }
	// } else {
	// partSql.append('\'').append(riskCodeOrRiskClass)
	// .append("\',");
	// }
	// }
	// partSql.deleteCharAt(partSql.length() - 1);
	// for (int j = 0; j < riskCodeFieldArray.length; j++) {
	// recordSql.append(riskCodeFieldArray[j]);
	// if (partSql.indexOf(",") == -1) {
	// recordSql.append(" = ").append(partSql);
	// } else {
	// recordSql.append(" in (").append(partSql)
	// .append(")");
	// }
	// if (j < riskCodeFieldArray.length - 1) {
	// recordSql.append(" or ");
	// }
	// }
	// recordSql.append(")");
	// } else {
	// if (recordSql.length() > 0) {
	// recordSql.append(" and ");
	// }
	// recordSql.append("(1=1)");
	// }
	//
	// if (exceptRiskMap.size() > 0) {
	// if (recordSql.length() > 0) {
	// recordSql.append(" and ");
	// }
	// recordSql.append("(");
	// partSql.setLength(0);
	// String[] exceptRiskCodeArray = new String[exceptRiskMap
	// .size()];
	// exceptRiskMap.keySet().toArray(exceptRiskCodeArray);
	// String riskCodeOrRiskClass;
	// for (int k = 0; k < exceptRiskCodeArray.length; k++) {
	// riskCodeOrRiskClass = exceptRiskCodeArray[k];
	// if (riskCodeOrRiskClass.trim().length() < 3) {
	// partSql.append('\'')
	// .append(riskCodeOrRiskClass.trim())
	// .append("\',");
	// List<String> exceptRiskList = saaPowerSupportService
	// .findRiskCodeListByClassCode(riskCodeOrRiskClass);
	// for (int t = 0; t < exceptRiskList.size(); t++) {
	// partSql.append('\'')
	// .append(exceptRiskList.get(t))
	// .append("\',");
	// }
	// } else {
	// partSql.append('\'').append(riskCodeOrRiskClass)
	// .append("\',");
	// }
	// }
	// partSql.deleteCharAt(partSql.length() - 1);
	// for (int j = 0; j < riskCodeFieldArray.length; j++) {
	// recordSql.append(riskCodeFieldArray[j]);
	// if (partSql.indexOf(",") == -1) {
	// recordSql.append(" <> ").append(partSql);
	// } else {
	// recordSql.append(" not in (").append(partSql)
	// .append(")");
	// }
	// if (j < riskCodeFieldArray.length - 1) {
	// recordSql.append(" or ");
	// }
	// }
	// recordSql.append(")");
	// } else {
	// if (recordSql.length() > 0) {
	// recordSql.append(" and ");
	// }
	// recordSql.append("(1=1)");
	//
	// }
	// }
	// // 过虑重复记录
	// if (recordSql.length() > 0
	// && hql.indexOf(recordSql.toString()) == -1) {
	// if (hql.length() > prefixLength) {
	// hql.append(" or ");
	// }
	// hql.append("(").append(recordSql).append(")");
	// }
	// }
	// // 9．将hql加入缓存中；
	// if (hql.length() <= prefixLength) {
	// hql.append("1=0");
	// }
	// hql.append(") ");// 最外层括号(反)
	// powerHql = hql.toString();
	// // System.out.println("*****powerHql****" + powerHql.toString());
	// cacheManager.putCache(powerKey, powerHql);
	// // 10．返回hql;
	// return powerHql;
	// }
	//
	// /**
	// * 获取有权操作的用户代码列表服务
	// *
	// * @param taskId功能代码Id
	// * @param companyCodes
	// * 机构代码列表（支持多个，中间用逗号分隔）
	// * @param riskCodes
	// * 险种代码列表（支持多个，中间用逗号分隔,都是实际险种，不可传险类、PUB，如果不限制险种时传null或空串即可）
	// * @param userCodes
	// * 可供选择的员工代码列表(不传时全部查询)
	// * @return 有权操作的用户代码列表
	// */
	// @SuppressWarnings("unchecked")
	// public List<String> findPermitUserCodeList1(Long taskId, String comCodes,
	// String riskCodes, List<String> userCodes) {
	// // 1．检查功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(String.valueOf(taskId), "taskCode must have value");
	// // 2．设定缓存Key为powerKey，其值为方法名+功能代码+机构代码列表+险种代码列表；
	// String powerKey = cacheManager.generateCacheKey(
	// "findPermitUserCodeList", taskId, comCodes, riskCodes,
	// userCodes);
	// // 3．检查缓存中是否存在对应powerKey的记录，如果有则返回其值；
	// Object result = cacheManager.getCache(powerKey);
	// Finder finder = Finder.newInstance();
	// SaaUserRole userRoleWrap = finder.from(SaaUserRole.class);
	// Select select = finder.select();
	// select.get(userRoleWrap.getUserCode());
	// List userList = dao.list(finder);
	// // super.findByHql(hql.toString(), values.toArray());
	// // 8．将用户代码列表加入缓存中；
	// cacheManager.putCache(powerKey, userList);
	// // 9．返回用户代码列表。
	// return userList;
	// }
	//
	// /**
	// * 获取有权操作的用户代码列表服务
	// *
	// * @param taskId功能代码Id
	// * @param companyCodes
	// * 机构代码列表（支持多个，中间用逗号分隔）
	// * @param riskCodes
	// * 险种代码列表（支持多个，中间用逗号分隔,都是实际险种，不可传险类、PUB，如果不限制险种时传null或空串即可）
	// * @param userCodes
	// * 可供选择的员工代码列表(不传时全部查询)
	// * @return 有权操作的用户代码列表
	// */
	// @SuppressWarnings("unchecked")
	// public List<String> findPermitUserCodeList(Long taskId, String comCodes,
	// String riskCodes, List<String> userCodes) {
	// // 1．检查功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(String.valueOf(taskId), "taskCode must have value");
	// // 2．设定缓存Key为powerKey，其值为方法名+功能代码+机构代码列表+险种代码列表；
	// String powerKey = cacheManager.generateCacheKey(
	// "findPermitUserCodeList", taskId, comCodes, riskCodes,
	// userCodes);
	// // 3．检查缓存中是否存在对应powerKey的记录，如果有则返回其值；
	// Object result = cacheManager.getCache(powerKey);
	// if (result != null) {
	// return (List) result;
	// }
	// List<String> values = new ArrayList(); // 参数值
	// StringBuilder hql = new StringBuilder();
	// hql.append("select distinct saaUserRole.userCode ").append(
	// " from SaaUserRole saaUserRole ");
	// /**
	// * hql.append("select distinct saaUserGrade.userCode ").append(
	// * " from SaaUserGrade saaUserGrade ");
	// */
	// // 限制有效时间
	// hql.append(" where current_date() between saaUserRole.startDate and saaUserRole.endDate");
	// /**
	// * hql.append(
	// *
	// " where current_date() between saaUserGrade.startDate and saaUserGrade.endDate"
	// * );
	// */
	// // 限制传入用户范围
	// if (userCodes.size() == 1) {
	// hql.append(" and saaUserRole.userCode = ? ");
	// /** hql.append(" and saaUserGrade.userCode = ? "); */
	// } else if (userCodes.size() > 1) {
	// hql.append(" and saaUserRole.userCode in (");
	// /** hql.append(" and saaUserGrade.userCode in ("); */
	// for (int i = 0, size = userCodes.size(); i < size; i++) {
	// hql.append("?");
	// if (i < size - 1) {
	// hql.append(",");
	// }
	// }
	// hql.append(") ");
	// }
	// values.addAll(userCodes);
	// // 限制岗位
	// hql.append(" and saaUserRole.saaRole.id in (")
	// .append("select roleTask.saaRole.id ")
	// .append(" from SaaRoleTask roleTask ")
	// .append(" where roleTask.saaRole.validInd = ? ")
	// .append(" and roleTask.saaTask.taskCode = ?) ");
	// /**
	// * hql.append(" and saaUserGrade.saaGrade.id in (")
	// * .append("select gradeTask.saaGrade.id ")
	// * .append("  from SaaGradeTask gradeTask ")
	// * .append(" where gradeTask.saaGrade.validInd = ? ")
	// * .append("   and gradeTask.saaTask.id = ?) ");
	// */
	// values.add("1");
	// SaaTask saaTask = saaTaskService.findByPK(taskId);
	// values.add(saaTask.getTaskCode());
	// // values.add(Long.toString(taskId));
	// StringBuilder hqlPart = new StringBuilder();
	// String comCodeArray[] = comCodes.split(",");
	// List<String> comPathList = saaPowerConfigService
	// .findComPathListByComCodeArray(comCodeArray);
	// List<String> comCodeTempList = new ArrayList<String>();
	// String comPathTemp = "";
	// for (int i = 0; i < comPathList.size(); i++) {
	// comPathTemp = comPathList.get(i);
	// String[] comCodesTemp = comPathTemp.split("/");
	// for (int j = 1; j < comCodesTemp.length; j++) {
	// if (comCodeTempList.contains(comCodesTemp[j])) {
	// continue;
	// }
	// comCodeTempList.add(comCodesTemp[j]);
	// }
	// }
	// // String comCodeArray[] = comCodes.split(",");
	// // StringBuilder hqlTemp = new StringBuilder();
	// // hqlTemp
	// //
	// .append("select saaCompanyGrade.comPath from SaaCompanyGrade saaCompanyGrade where saaCompanyGrade.comCode= ?");
	// // List<String> comPathList = super.findByHql(hqlTemp.toString(),
	// // comCodeArray[0]);
	//
	// if (comPathList != null && comPathList.size() > 0) {
	// // String comPathResult = comPathList.get(0);
	// // String[] comPathArray = comPathResult.split("/");
	// // String[] comPathArgs = new String[comPathArray.length - 1];
	// // 限制允许机构
	// /**
	// * 现在saa_permit_data表中根据saaUserRole.id找见对应的数据Factor_Id,Data_Value，
	// * 子查询表为将上述得到的Factor_Id与在Factor表中查找到的Factor_Id相等，条件为Factor_Code =
	// * 'COMCODE'
	// */
	// hqlPart.append(" and exists(select 1 from SaaPermitData saaPermitData where saaUserRole.id = saaPermitData.saaUserRole.id and saaPermitData.saaFactor.id = (select saaFactor.id from SaaFactor saaFactor where saaFactor.factorCode = ?) and saaPermitData.dataValue in (");
	// values.add("COMCODE");
	// /**
	// * hqlPart.append(
	// *
	// " and exists (select 1 from saaUserGrade2.saaPermitCompanies saaPermitCompany where saaPermitCompany.comCode in ("
	// * );
	// */
	// for (int i = 0; i < comCodeTempList.size(); i++) {
	// hqlPart.append("?");
	// values.add(comCodeTempList.get(i));
	// if (i != comCodeTempList.size() - 1) {
	// hqlPart.append(",");
	// }
	// }
	// // for (int i = 0; i < comPathArgs.length; i++) {
	// // comPathArgs[i] = comPathArray[i + 1];
	// // if (i == comPathArgs.length - 1) {
	// // hqlPart.append("'" + comPathArgs[i] + "'");
	// // break;
	// // }
	// // hqlPart.append("'" + comPathArgs[i] + "',");
	// // }
	// hqlPart.append("))");
	// /**
	// * hqlPart.append(") ");
	// * hqlPart.append(" and saaPermitCompany.saaUserRole.id in (");
	// * hqlPart.append(
	// *
	// " select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.saaRole.id in( "
	// * ); hqlPart.append(
	// *
	// " select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask where saaRoleTask.saaTask.id = "
	// * ); hqlPart.append(taskId); hqlPart.append("))");
	// * hqlPart.append(") ");
	// */
	// }
	// // 限制除外机构
	// hqlPart.append(" and not exists (select 1 from SaaExceptData saaExceptData where saaUserRole.id = saaExceptData.saaUserRole.id and saaExceptData.saaFactor.id = (select saaFactor.id from SaaFactor saaFactor where saaFactor.factorCode = ?) and saaExceptData.dataValue in (");
	// hqlPart.append("select saaCompanyGrade.comCode from SaaCompanyGrade saaCompanyGrade where");
	// values.add("COMCODE");
	// /**
	// * hqlPart.append(
	// *
	// " and not exists (select 1 from saaUserRole2.saaExceptCompanies saaExceptCompany where saaExceptCompany.comCode in("
	// * ); hqlPart.append(
	// *
	// "select saaCompanyGrade.comCode from SaaCompanyGrade saaCompanyGrade where ("
	// * );
	// */
	// for (int i = 0, size = comCodeArray.length; i < size; i++) {
	// String path = saaPowerConfigService
	// .findComPathByComCode(comCodeArray[i]);
	// hqlPart.append(" saaCompanyGrade.comPath like ?");
	// if (i < size - 1) {
	// hqlPart.append(" or ");
	// }
	// values.add(path + "%");
	// }
	// hqlPart.append("))");
	// /**
	// * hqlPart.append("))");
	// * hqlPart.append(" and saaExceptCompany.saaUserGrade.id in (");
	// * hqlPart.append(
	// *
	// " select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.saaRole.id in( "
	// * ); hqlPart.append(
	// *
	// " select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask where saaRoleTask.saaTask.id = "
	// * ); hqlPart.append(taskId); hqlPart.append("))");
	// * hqlPart.append(") ");
	// */
	// StringBuilder hqlPartNew = new StringBuilder();
	// // 限制允许险种
	// if (riskCodes != null && riskCodes.trim().length() > 0
	// && riskCodes.indexOf("PUB") == -1) {
	// String riskCodeArray[] = riskCodes.split(",");
	// hqlPart.append(" and exists(select 1 from SaaPermitData saaPermitData where saaUserRole.id = saaPermitData.saaUserRole.id and saaPermitData.saaFactor.id = (select saaFactor.id from SaaFactor saaFactor where saaFactor.factorCode = ?) and saaPermitData.dataValue in (");
	// values.add("RISKCODE");
	// /**
	// * hqlPart.append(
	// *
	// " and exists (select 1 from saaUserRole2.saaPermitRisks saaPermitRisk where saaPermitRisk.riskCode in ("
	// * );
	// */
	// for (int i = 0, size = riskCodeArray.length; i < size; i++) {
	// /**
	// * SaaRiskId saaRiskId = saaPowerSupportService
	// * .findRiskByRiskCode(riskCodeArray[i]);
	// */
	// SaaRisk saaRisk = saaRiskIdService
	// .findSaaRiskByRiskCode(riskCodeArray[i]);
	// if (saaRisk != null) {
	// // 添加险类、险种
	// hqlPart.append("?,?,");
	// values.add(saaRisk.getId().getClassCode());
	// values.add(saaRisk.getId().getRiskCode());
	// }
	// }
	// // 添加PUB
	// hqlPart.append("?) ");
	// values.add("PUB");
	// hqlPart.append(") ");
	// /**
	// * hqlPart.append("?) "); values.add("PUB"); hqlPart.append(") ");
	// */
	//
	// // 限制除外险种
	// hqlPart.append(" and not exists (select 1 from SaaExceptData saaExceptData where saaUserRole.id = saaExceptData.saaUserRole.id and saaExceptData.saaFactor.id = (select saaFactor.id from SaaFactor saaFactor where saaFactor.factorCode = ?) and saaExceptData.dataValue in (");
	// values.add("RISKCODE");
	// /**
	// * hqlPart.append(
	// *
	// "and not exists (select 1 from saaUserRole2.saaExceptRisks saaExceptRisk where saaExceptRisk.riskCode in("
	// * );
	// */
	// for (int i = 0, size = riskCodeArray.length; i < size; i++) {
	// /**
	// * SaaRiskId saaRiskId = saaPowerSupportService
	// * .findRiskByRiskCode(riskCodeArray[i]);
	// */
	// SaaRisk saaRisk = saaRiskIdService
	// .findSaaRiskByRiskCode(riskCodeArray[i]);
	// if (saaRisk != null) {
	// // 添加险类、险种
	// hqlPart.append("?,?,");
	// values.add(saaRisk.getId().getClassCode());
	// values.add(saaRisk.getId().getRiskCode());
	// } else {
	// hqlPart.append("?");
	// values.add("RISKCODE");
	// values.add(riskCodeArray[i]);
	// }
	// }
	//
	// if (hqlPart.toString().endsWith(",")) {
	// String temp = hqlPart.toString();
	// hqlPart.setLength(0);
	// hqlPart.append(temp.substring(0, temp.length() - 1));
	//
	// }
	// hqlPart.append("))");
	// /** hqlPart.append("))"); */
	// }
	// if (hqlPart.length() > 0) {
	// hql.append(" and saaUserRole.userCode in (select saaUserRole2.userCode from  SaaUserRole saaUserRole2 ");
	// hql.append(" where current_date() between saaUserRole2.startDate and saaUserRole2.endDate ");
	// hql.append(") ");
	// hql.append(hqlPart);
	// // hql.append(") ");
	// }
	// // List userList = super.findByHql(hql.toString(), values.toArray());
	//
	// /**
	// * System.out.println("**" + hql.toString() + "**");
	// * System.out.println("**" + hqlPart.toString() + "**");
	// * java.util.Iterator it = values.iterator(); while (it.hasNext()) {
	// * Object obj = it.next(); System.out.println("**" + obj.toString()); }
	// */
	//
	// Query query = em.createQuery(hql.toString());
	// if (values.size() > 0) {
	// for (int i = 0; i < values.size(); i++) {
	// query.setParameter(i + 1, values.get(i));
	// }
	// }
	// /*
	// * query.setParameter(1, "jixiaojun"); query.setParameter(2, "1");
	// * query.setParameter(3, new Long(18)); query.setParameter(4,
	// * "COMCODE"); query.setParameter(5, "00000000"); query.setParameter(6,
	// * "00010000"); query.setParameter(7, "00010080"); query.setParameter(8,
	// * "COMCODE"); query.setParameter(9, "/00000000/00010000/00010080/%");
	// * query.setParameter(10, "RISKCODE"); query.setParameter(11, "A");
	// * query.setParameter(12, "AAD"); query.setParameter(13, "PUB");
	// * query.setParameter(14, "RISKCODE"); query.setParameter(15, "A");
	// * query.setParameter(16, "AAD");
	// */
	// List<String> userCodeList = query.getResultList();
	// /**
	// * System.out.println("***" + userCodeList.size()); if
	// * (userCodeList.size() > 0) { System.out.println("***" +
	// * userCodeList.get(0)); }
	// */
	// /**
	// * List<SaaUserRole> saaUserRoleList = saaUserRoleService
	// * .findSaaUserRoleListByParams(hql.toString(), "jixiaojun", "1", "18",
	// * "COMCODE", "00000000", "00010000", "00010080", "COMCODE",
	// * "/00000000/00010000/00010080/%", "RISKCODE", "A", "AAD", "PUB",
	// * "RISKCODE", "A", "AAD"); if (saaUserRoleList.size() > 0) {
	// * System.out.println("***" + saaUserRoleList.get(0).getUserCode()); }
	// */
	// // List userList = null;
	// // 8．将用户代码列表加入缓存中；
	// cacheManager.putCache(powerKey, userCodeList);
	// // 9．返回用户代码列表。
	// return userCodeList;
	// }
	//
	// /**
	// * 获取有权操作的用户代码列表服务
	// *
	// * @param taskCode功能代码
	// * @param companyCodes
	// * 机构代码列表（支持多个，中间用逗号分隔）
	// * @param riskCodes
	// * 险种代码列表（支持多个，中间用逗号分隔）
	// * @param userCodes
	// * 可供选择的员工代码列表（查询结果内部限制50条）
	// * @return 有权操作的用户代码列表
	// */
	// public List<String> findPermitUserCodeList(String taskCode,
	// String comCodes, String riskCodes, List<String> userCodes) {
	// // 1:根据taskCode找到对应的taskId，调用findPermitUserCodeList(Long,String,String)
	// Long taskId = saaTaskService.findTaskIdByTaskCode(taskCode);
	// return findPermitUserCodeList(taskId, comCodes, riskCodes, userCodes);
	// }
	//
	// /**
	// * 获取有权操作的用户代码列表服务
	// *
	// * @param userCode
	// * 用户代码
	// * @param taskId功能代码Id
	// * @return 有权操作的机构代码列表
	// */
	// @SuppressWarnings("unchecked")
	// public List<String> findPermitComCodeList(String userCode, Long taskId) {
	// // 1．检查功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(String.valueOf(taskId), "taskCode must have value");
	// // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// String powerKey = cacheManager.generateCacheKey(
	// "findPermitComCodeList", userCode, taskId);
	// // 3．检查缓存中是否存在对应powerKey的记录，如果有则返回其值；
	// Object result = cacheManager.getCache(powerKey);
	// if (result != null) {
	// return (List<String>) result;
	// }
	// String comCodeHql = this.findPermitComCodeHql(userCode, taskId);
	// if ("ALL".equals(comCodeHql)) {
	// String queryAllComCodetring =
	// "select saaCompanyGrade.comCode from SaaCompanyGrade saaCompanyGrade";
	// Query queryAllComCode = em.createQuery(queryAllComCodetring);
	// return queryAllComCode.getResultList();
	// }
	// Query queryComCode = em.createQuery(comCodeHql);
	// List<String> powerComCodeList = queryComCode.getResultList();
	// // 4．将机构代码列表加入缓存中；
	// cacheManager.putCache(powerKey, powerComCodeList);
	// // 5．返回机构代码列表。
	// return powerComCodeList;
	//
	// }
	//
	// /**
	// * 得到有权的机构列表的查询语句，可以作为子查询
	// *
	// * @param userCode
	// * @param taskId
	// * @returns zero length string if permit none，else the hql to retrive the
	// * permit comCodes
	// */
	// @SuppressWarnings("unchecked")
	// public List<String> findPermitComCodes(String userCode, Long taskId) {
	// /**
	// * Finder newFinder = Finder.newInstance(); SaaUserRole saaUserRoleWrap
	// * = newFinder.from(SaaUserRole.class); Select newSelect =
	// * newFinder.select(); Finder subFinder = Finder.newInstance();
	// * SaaRoleTask roleTaskWrap = subFinder.from(SaaRoleTask.class); Select
	// * subSelect = subFinder.select();
	// * subSelect.get(roleTaskWrap.getSaaRole().getId()); if (taskId != null)
	// * { subFinder.where().get(roleTaskWrap.getSaaTask().getId())
	// * .equalIfExist(taskId); } // SaaTask
	// * saaTaskWrap=finder.from(SaaTask.class); And and =
	// * newFinder.where().and();
	// * and.get(saaUserRoleWrap.getUserCode()).equalIfExist(userCode);
	// * and.get(saaUserRoleWrap.getSaaRole().getId()).in(subFinder);
	// * newSelect.get(saaUserRoleWrap.getId()); Finder comFinder =
	// * Finder.newInstance(); SaaPermitData saaPermitDataWrap =
	// * comFinder.from(SaaPermitData.class); Select comSelect =
	// * comFinder.select(); And comAnd = comFinder.where().and();
	// * comAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode()).equals(
	// * "COMCODE");
	// * comAnd.get(saaPermitDataWrap.getSaaUserRole().getId()).in(newFinder);
	// * comSelect.get(saaPermitDataWrap.getDataValue()); List<String>
	// * permitComCodes = (List<String>) dao.list(comFinder);
	// */
	// String queryPermitComCodesString =
	// "select saaPermitData.dataValue from SaaPermitData saaPermitData "
	// +
	// "where saaPermitData.saaFactor.factorCode = ? and saaPermitData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.id = ? ))";
	// Query queryPermitComCodes = em.createQuery(queryPermitComCodesString);
	// queryPermitComCodes.setParameter(1, "COMCODE");
	// queryPermitComCodes.setParameter(2, userCode);
	// queryPermitComCodes.setParameter(3, taskId);
	// List<String> permitComCodes = queryPermitComCodes.getResultList();
	//
	// /**
	// * Finder newFinder2 = Finder.newInstance(); SaaUserRole
	// * saaUserRoleWrap2 = newFinder.from(SaaUserRole.class);
	// *
	// * Select newSelect2 = newFinder.select(); Finder subFinder2 =
	// * Finder.newInstance(); SaaRoleTask roleTaskWrap2 =
	// * subFinder.from(SaaRoleTask.class); Select subSelect2 =
	// * subFinder.select();
	// * subSelect2.get(roleTaskWrap2.getSaaRole().getId()); if (taskId !=
	// * null) { subFinder2.where().get(roleTaskWrap2.getSaaTask().getId())
	// * .equalIfExist(taskId); } // SaaTask
	// * saaTaskWrap=finder.from(SaaTask.class); And and2 =
	// * newFinder.where().and();
	// * and2.get(saaUserRoleWrap2.getUserCode()).equalIfExist(userCode);
	// * and2.get(saaUserRoleWrap2.getSaaRole().getId()).in(subFinder2);
	// * newSelect2.get(saaUserRoleWrap2.getId());
	// *
	// * Finder comFinder2 = Finder.newInstance(); SaaExceptData
	// * saaExceptDataWrap2 = comFinder2.from(SaaExceptData.class); Select
	// * comSelect2 = comFinder2.select(); And comAnd2 =
	// * comFinder2.where().and();
	// * comAnd2.get(saaExceptDataWrap2.getSaaFactor(
	// * ).getFactorCode()).equals( "COMCODE");
	// * comAnd2.get(saaExceptDataWrap2.
	// * getSaaUserRole().getId()).in(newFinder2);
	// * comSelect2.get(saaExceptDataWrap2.getDataValue()); List<String>
	// * exceptComCodes = (List<String>) dao.list(comFinder2);
	// */
	// String queryExceptComCodesString =
	// "select saaExceptData.dataValue from SaaExceptData saaExceptData "
	// +
	// "where saaExceptData.saaFactor.factorCode = ? and saaExceptData.saaUserRole.id in "
	// +
	// "(select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? "
	// +
	// "and saaUserRole.saaRole.id in (select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask "
	// + "where saaRoleTask.saaTask.id = ? ))";
	// Query queryExceptComCodes = em.createQuery(queryExceptComCodesString);
	// queryExceptComCodes.setParameter(1, "COMCODE");
	// queryExceptComCodes.setParameter(2, userCode);
	// queryExceptComCodes.setParameter(3, taskId);
	// List<String> exceptComCodes = queryExceptComCodes.getResultList();
	//
	// if (permitComCodes.size() != 0) {
	// for (int i = 0; i < permitComCodes.size(); i++) {
	// if (CodeConstants.TOP_COMPANY.equals(permitComCodes.get(i))) {
	// // SaaDaoAdvice.SAA_OFF.set(true);// 此处关闭权限验证
	// try {
	// /**
	// * Finder comAllFinder = Finder.newInstance(); Select
	// * comAllSelect = comAllFinder.select(); PrpDcompany
	// * prpDcompanytemple = comAllFinder
	// * .from(PrpDcompany.class); comAllFinder.where()
	// * .get(prpDcompanytemple.getValidStatus())
	// * .equals("1");
	// * comAllSelect.get(prpDcompanytemple.getComCode());
	// * return (List<String>) dao.list(comAllFinder);
	// */
	// String queryComAllString =
	// "select prpDcompany.comCode from PrpDcompany prpDcompany where prpDcompany.validStatus = ?";
	// Query queryComAll = em.createQuery(queryComAllString);
	// queryComAll.setParameter(1, "1");
	// return (List<String>) queryComAll.getResultList();
	// } finally {
	// // SaaDaoAdvice.SAA_OFF.remove();// 此处重置权限验证
	// }
	//
	// }
	// }
	// }
	// List<String> values = new ArrayList(); // 参数值
	// String queryComCodeString =
	// "select saaCompanyGrade.comCode from SaaCompanyGrade saaCompanyGrade ";
	// /**
	// * Finder comGradeFinder = Finder.newInstance(); SaaCompanyGrade
	// * saaCompanyGradeWrap = comGradeFinder .from(SaaCompanyGrade.class);
	// */
	// if (permitComCodes.size() == 0) {
	// } else if (permitComCodes.size() == 1) {
	// String comPath = saaPowerConfigService
	// .findComPathByComCode(permitComCodes.get(0));
	// /**
	// * comGradeFinder.where().get(saaCompanyGradeWrap.getComPath())
	// * .like(comPath);
	// */
	// values.add(comPath + "%");
	// queryComCodeString += " where saaCompanyGrade.comPath like ? ";
	// } else {
	// List<String> comCodeTemp = new ArrayList<String>();
	// for (int i = 0; i < permitComCodes.size(); i++) {
	// if (!comCodeTemp.contains(permitComCodes.get(i))) {
	// comCodeTemp.add(permitComCodes.get(i));
	// } else {
	// permitComCodes.remove(i);
	// i--;
	// }
	// /** Or comGradeOr = comGradeFinder.where().or(); */
	// for (int j = 0; j < comCodeTemp.size(); i++) {
	// String comPath = saaPowerConfigService
	// .findComPathByComCode(comCodeTemp.get(j));
	// if (i == 0 && j == 0) {
	// queryComCodeString += " where saaCompanyGrade.comPath like ? ";
	// values.add(comPath + "%");
	// } else {
	// queryComCodeString += " or saaCompanyGrade.comPath like ? ";
	// values.add(comPath + "%");
	// }
	// /**
	// * comGradeOr.get(saaCompanyGradeWrap.getComPath()).like(
	// * comPath);
	// */
	// }
	//
	// }
	// }
	// if (permitComCodes.size() > 0 && exceptComCodes.size() > 0) {
	// if (exceptComCodes.size() == 1) {
	// String comPath = saaPowerConfigService
	// .findComPathByComCode(exceptComCodes.get(0));
	// /**
	// * comGradeFinder.where().get(saaCompanyGradeWrap.getComPath())
	// * .notLike(comPath);
	// */
	// queryComCodeString += " and saaCompanyGrade.comPath not like ? ";
	// values.add(comPath + "%");
	// } else {
	// /** And comGradeAnd = comGradeFinder.where().and(); */
	// for (int k = 0; k < exceptComCodes.size(); k++) {
	// String comPath = saaPowerConfigService
	// .findComPathByComCode(exceptComCodes.get(k));
	// /*
	// * comGradeAnd.get(saaCompanyGradeWrap.getComPath()).notLike(
	// * comPath);
	// */
	// queryComCodeString += " and saaCompanyGrade.comPath not like ? ";
	// values.add(comPath + "%");
	// }
	// }
	// }
	// List<String> comCodeList = null;
	// /** return (List<String>) dao.list(comGradeFinder); */
	// if (values.size() > 0) {
	// Query queryComCode = em.createQuery(queryComCodeString);
	// for (int k = 0; k < values.size(); k++) {
	// queryComCode.setParameter(k + 1, values.get(k));
	// }
	// comCodeList = queryComCode.getResultList();
	// }
	// return comCodeList;
	// }
	//
	// /**
	// * 获取有权操作的机构代码列表服务
	// *
	// * @param userCode
	// * 用户代码
	// * @param taskCode功能代码
	// * @return 有权操作的机构代码列表
	// */
	// public List<String> findPermitComCodeList(String userCode, String
	// taskCode) {
	// if (!"".equals(taskCode)) {
	// Long taskId = saaTaskService.findTaskIdByTaskCode(taskCode);
	// return findPermitComCodeList(userCode, taskId);
	// } else {
	// return findPermitComCodeList(userCode, new Long(0));
	// }
	//
	// }
	//
	// // public String addPowerClaim(String userCode, String taskcode, String
	// // bzEntityalias, String prpLCmainAlias,
	// // String userCodeFields, String companyCodeFields) {
	// // return addPower(userCode, taskcode, userCodeFields, companyCodeFields,
	// // "");
	// // }
	//
	// /**
	// * 权限检查服务
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskCode
	// * 功能代码
	// * @param userCodeFields
	// * 员工代码列表，可能是多个，用“，”分隔
	// * @param companyCodeFields
	// * 机构代码列表，可能是多个，用“，”分隔
	// * @param o
	// * 对象，通过反射取其属性值
	// * @return 有权返回true，无法返回false
	// */
	// public boolean checkPowerClaim(String userCode, String taskCode, Object
	// o,
	// String userCodeFields, String companyCodeFields) {
	// String[] riskCodes = new String[0];
	// String[] userCodeArray = new String[0];
	// String[] comCodeArray = new String[0];
	// String riskCode = null;
	// try {
	// riskCode = (String) PropertyUtils.getProperty(o, "riskCode");
	// riskCodes = new String[1];
	// riskCodes[0] = riskCode;
	// String[] userCodes = userCodeFields.split(",");
	// userCodeArray = new String[userCodes.length];
	// for (int i = 0; i < userCodes.length; i++) {
	// String userCodeArg = (String) PropertyUtils.getProperty(o,
	// userCodes[i]);
	// userCodeArray[i] = userCodeArg;
	// }
	// String[] comCodes = companyCodeFields.split(",");
	// comCodeArray = new String[comCodes.length];
	// for (int i = 0; i < comCodes.length; i++) {
	// String comCodeArg = (String) PropertyUtils.getProperty(o,
	// comCodes[i]);
	// comCodeArray[i] = comCodeArg;
	// }
	// } catch (IllegalAccessException e) {
	// // logger.info("非法访问异常" + riskCode, e);
	// } catch (InvocationTargetException e) {
	// // logger.info(e.getMessage(), e);
	// } catch (NoSuchMethodException e) {
	// // logger.info("方法未找到异常" + riskCode, e);
	// }
	// return checkDataPower(userCode, taskCode, userCodeArray, comCodeArray,
	// riskCodes);
	// }
	//
	// /**
	// * 得到有权的机构列表的查询语句，可以作为子查询
	// *
	// * @param userCode
	// * @param taskId
	// * @returns zero length string if permit none，else the hql to retrive the
	// * permit comCodes
	// */
	// public String findPermitComCodeHql(String userCode, Long taskId) {
	// Assert.hasText(userCode, "userCode must have value");
	// Assert.hasText(String.valueOf(taskId), "taskCode must have value");
	// String key = cacheManager.generateCacheKey("findPermitComCodeHql",
	// userCode, taskId);
	// Object result = cacheManager.getCache(key);
	// if (result != null) {
	// return (String) result;
	// }
	// String queryPermitCompanyComCodeString = "";
	// StringBuilder buf = new StringBuilder();
	// buf.append("select  permitCompany.dataValue")
	// .append(" from SaaPermitData permitCompany")
	// .append(" where permitCompany.saaUserRole.id in ( ")
	// .append(" select id from SaaUserRole saaUserRole where saaUserRole.userCode = ?");
	// if (taskId != 0) {
	// buf.append(" and ")
	// .append(" saaUserRole.saaRole.id in (")
	// .append(" select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask where saaRoleTask.saaTask.id = ? ")
	// .append(")");
	// }
	//
	// buf.append(")")
	// .append(" and current_date() between permitCompany.saaUserRole.startDate and permitCompany.saaUserRole.endDate");
	// buf.append(" and permitCompany.saaFactor.id = (select saaFactor.id from SaaFactor saaFactor where saaFactor.factorCode = ?)");
	// List<String> permitComCodes = new ArrayList<String>();
	// if (taskId == 0) {
	// queryPermitCompanyComCodeString = buf.toString();
	// Query queryPermitCompanyComCodes = em
	// .createQuery(queryPermitCompanyComCodeString);
	// queryPermitCompanyComCodes.setParameter(1, userCode);
	// queryPermitCompanyComCodes.setParameter(2, "COMCODE");
	// permitComCodes = queryPermitCompanyComCodes.getResultList();
	// // permitComCodes = this.findByHql(buf.toString(), userCode);
	// } else {
	// queryPermitCompanyComCodeString = buf.toString();
	// Query queryPermitCompanyComCodes = em
	// .createQuery(queryPermitCompanyComCodeString);
	// queryPermitCompanyComCodes.setParameter(1, userCode);
	// queryPermitCompanyComCodes.setParameter(2, taskId);
	// queryPermitCompanyComCodes.setParameter(3, "COMCODE");
	// permitComCodes = queryPermitCompanyComCodes.getResultList();
	// // permitComCodes = this.findByHql(buf.toString(), userCode,
	// // taskId);
	// }
	//
	// // 对顶级机构'00000000'作特殊处理,直接返回字符串“ALL”
	// for (int i = 0; i < permitComCodes.size(); i++) {
	// if (CodeConstants.TOP_COMPANY.equals(permitComCodes.get(i))) {
	// return "ALL";
	// }
	// }
	// buf.setLength(0);
	// String queryExceptCompanyComCodeString = "";
	// buf.append("select exceptCompany.dataValue")
	// .append(" from SaaExceptData exceptCompany")
	// .append(" where exceptCompany.saaUserRole.id in ( ")
	// .append(" select id from SaaUserRole saaUserRole where saaUserRole.userCode = ? ");
	// if (taskId != 0l) {
	// buf.append(" and ")
	// .append(" saaUserRole.saaRole.id in (")
	// .append(" select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask where saaRoleTask.saaTask.id = ?")
	// .append(")");
	// }
	// ;
	//
	// buf.append(")")
	// .append(" and current_date() between exceptCompany.saaUserRole.startDate and exceptCompany.saaUserRole.endDate");
	// buf.append(" and exceptCompany.saaFactor.id = (select saaFactor.id from SaaFactor saaFactor where saaFactor.factorCode = ?)");
	// List<String> exceptComCodes = new ArrayList<String>();
	// if (taskId == 0) {
	// queryExceptCompanyComCodeString = buf.toString();
	// Query queryExceptCompanyComCodes = em
	// .createQuery(queryExceptCompanyComCodeString);
	// queryExceptCompanyComCodes.setParameter(1, userCode);
	// queryExceptCompanyComCodes.setParameter(2, "COMCODE");
	// exceptComCodes = queryExceptCompanyComCodes.getResultList();
	// // exceptComCodes = this.findByHql(buf.toString(), userCode);
	// } else {
	// queryExceptCompanyComCodeString = buf.toString();
	// Query queryExceptCompanyComCodes = em
	// .createQuery(queryExceptCompanyComCodeString);
	// queryExceptCompanyComCodes.setParameter(1, userCode);
	// queryExceptCompanyComCodes.setParameter(2, taskId);
	// queryExceptCompanyComCodes.setParameter(3, "COMCODE");
	// exceptComCodes = queryExceptCompanyComCodes.getResultList();
	// // exceptComCodes = this.findByHql(buf.toString(), userCode,
	// // taskId);
	// }
	//
	// StringBuilder hql = new StringBuilder();
	// String comPath = "";
	// hql.append("select saaCompanyGrade.comCode ").append(
	// "from SaaCompanyGrade saaCompanyGrade where ");
	// if (permitComCodes.size() == 0) {
	// hql.append("1=0 ");
	// } else if (permitComCodes.size() == 1) {
	// comPath = saaPowerConfigService.findComPathByComCode(permitComCodes
	// .get(0));
	// hql.append("saaCompanyGrade.comPath like '").append(comPath)
	// .append("%'");
	// } else {
	// List<String> comCodeTemp = new ArrayList<String>();
	// for (int i = 0; i < permitComCodes.size(); i++) {
	// if (!comCodeTemp.contains(permitComCodes.get(i))) {
	// comCodeTemp.add(permitComCodes.get(i));
	// } else {
	// permitComCodes.remove(i);
	// i--;
	// }
	// }
	// for (int i = 0, size = permitComCodes.size(); i < size; i++) {
	// comPath = saaPowerConfigService
	// .findComPathByComCode(permitComCodes.get(i));
	// hql.append("saaCompanyGrade.comPath like '").append(comPath)
	// .append("%'");
	// if (i < size - 1) {
	// hql.append(" or ");
	// }
	// }
	// // hql.append(") ");
	// }
	// if (permitComCodes.size() > 0 && exceptComCodes.size() > 0) {
	// if (exceptComCodes.size() == 1) {
	// comPath = saaPowerConfigService
	// .findComPathByComCode(exceptComCodes.get(0));
	// hql.append(" and saaCompanyGrade.comPath not like '")
	// .append(comPath).append("%'");
	// } else {
	// hql.append(" and (");
	// for (int i = 0, size = exceptComCodes.size(); i < size; i++) {
	// comPath = saaPowerConfigService
	// .findComPathByComCode(exceptComCodes.get(i));
	// hql.append("saaCompanyGrade.comPath not like '")
	// .append(comPath).append("%'");
	// if (i < size - 1) {
	// hql.append(" and ");
	// }
	// }
	// hql.append(")");
	// }
	// }
	// String hqlStr = hql.toString();
	// cacheManager.putCache(key, hqlStr);
	// return hqlStr;
	// }
	//
	// public String findPermitComCodeHql(String userCode, String taskCode) {
	// if (!"".equals(taskCode)) {
	// Long taskId = saaTaskService.findTaskIdByTaskCode(taskCode);
	// return findPermitComCodeHql(userCode, taskId);
	// } else {
	// return findPermitComCodeHql(userCode, new Long(0));
	// }
	//
	// }
	//
	// public List<String> getPowerCompanyCode(String userCode, String taskCode)
	// {
	// return findPermitComCodeList(userCode, taskCode);
	// }
	//
	// /**
	// * 数据权限检查服务
	// *
	// * @param userCode
	// * 员工代码
	// * @param taskCode
	// * 功能代码
	// * @param userCodes
	// * 员工代码列表，可能是多个，用“，”分隔
	// * @param comCodes
	// * 机构代码列表，可能是多个，用“，”分隔
	// * @param riskCodes
	// * 险种代码列表
	// * @return 有权返回true，无法返回false
	// */
	// public boolean checkDataPower(String userCode, String taskCode,
	// String[] userCodes, String[] comCodes, String[] riskCodes) {
	// // 1．检查用户代码、功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(userCode, "userCode must have value");
	// Assert.hasText(taskCode, "taskCode must have value");
	// // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// // String powerKey = cacheManager.generateCacheKey("checkDataPower",
	// // userCode, taskCode);
	// // 3．检查缓存中是否存在对应powerKey的记录，如果有则返回其值；
	// // Object result = cacheManager.getCache(powerKey);
	// // if (result != null) {
	// // return ((Boolean) result).booleanValue();
	// // }
	// List<String> userList = new ArrayList<String>();
	// for (int i = 0; i < userCodes.length; i++) {
	// userList.add(userCodes[i]);
	// }
	// StringBuilder comCodeArgs = new StringBuilder();
	// for (int i = 0; i < comCodes.length; i++) {
	// comCodeArgs.append(comCodes[i]);
	// if (i != comCodes.length - 1) {
	// comCodeArgs.append(",");
	// }
	// }
	// StringBuilder riskCodesArgs = new StringBuilder();
	// for (int i = 0; i < riskCodes.length; i++) {
	// riskCodesArgs.append(riskCodes[i]);
	// if (i != riskCodes.length - 1) {
	// riskCodesArgs.append(",");
	// }
	// }
	// boolean cacheResult = false;
	// List<String> userListTemp = new ArrayList<String>();
	// userListTemp.add(userCode);
	// List<String> powerList = findPermitUserCodeList(taskCode,
	// comCodeArgs.toString(), riskCodesArgs.toString(), userListTemp);
	// if (powerList.size() > 0) {
	// cacheResult = true;
	// }
	// // cacheManager.putCache(powerKey, cacheResult);
	// return cacheResult;
	// }
	//
	// // public List<String> getPeimitCompany(String userCode, String taskCode)
	// {
	// // // 1．检查用户代码、功能代码是否存在，如果不存在则抛出异常；
	// // Assert.hasText(userCode, "userCode must have value");
	// // Assert.hasText(taskCode, "taskCode must have value");
	// //
	// // // 管理员直接确认为true;
	// // // if (CodeConstants.TOP_USERCODE.equals(userCode)) {
	// // // return true;
	// // // }
	// // // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// // // String powerKey =
	// cacheManager.generateCacheKey("checkPeimitCompany",
	// // // userCode);
	// // // Object result = cacheManager.getCache(powerKey);
	// // // if (result != null) {
	// // // return ((Boolean) result).booleanValue();
	// // // }
	// // // 设定初始值
	// // // boolean checkData = false;
	// // // 获取允许机构代码
	// // StringBuilder buf = new StringBuilder();
	// // Finder finder = Finder.newInstance();
	// // SaaPermitCompany permitCompanyWrap = finder
	// // .from(SaaPermitCompany.class);
	// // SaaUserGrade saaUserGradeWrap1 = finder.from(SaaUserGrade.class);
	// // And and = finder.where().and();
	// // Finder subFinder = Finder.newInstance();
	// // SaaUserGrade saaUserGradeWrap = subFinder.from(SaaUserGrade.class);
	// // Select subSelect = subFinder.select();
	// // subSelect.get(saaUserGradeWrap.getId());
	// // subFinder.where().get(saaUserGradeWrap.getUserCode())
	// // .equalIfExist(userCode);
	// // Select select = finder.select();
	// // select.get(permitCompanyWrap.getComCode());
	// // and.get(permitCompanyWrap.getSaaUserGrade().getId()).in(subFinder);
	// // Finder subFinder1 = Finder.newInstance();
	// // // buf.append("select  permitCompany.comCode")
	// // // .append(" from SaaPermitCompany permitCompany")
	// // // .append(" where permitCompany.saaUserGrade.id in ( ")
	// // //
	// //
	// .append(" select id from SaaUserGrade saaUserGrade where saaUserGrade.userCode = ?");
	// // if (taskCode == null && "".equals(taskCode)) {
	// //
	// // SaaGradeTask saaGradeTaskWrap = subFinder1.from(SaaGradeTask.class);
	// // Select subSelect1 = subFinder1.select();
	// // subSelect1.get(saaGradeTaskWrap.getSaaGrade().getId());
	// // subFinder1.where().get(saaGradeTaskWrap.getSaaTask().getTaskCode())
	// // .equalIfExist(taskCode);
	// // // buf.append(" and ")
	// // // .append(" saaUserGrade.saaGrade.id in (")
	// // //
	// //
	// .append(" select saaGradeTask.saaGrade.id from SaaGradeTask saaGradeTask where saaGradeTask.saaTask.taskCode = ? ")
	// // // .append(")");
	// // }
	// //
	// // // buf.append(")");
	// // // .append(
	// // //
	// //
	// " and current_date() between permitCompany.saaUserGrade.startDate and permitCompany.saaUserGrade.endDate");
	// // List<String> permitComCodes = new ArrayList<String>();
	// // if (taskCode != null && !"".equals(taskCode)) {
	// // permitComCodes = (List<String>) dao.list(finder);
	// // // this.findByHql(buf.toString(), userCode);
	// // } else {
	// // and.get(saaUserGradeWrap1.getId()).in(subFinder1);
	// // permitComCodes = (List<String>) dao.list(finder);
	// // // this.findByHql(buf.toString(), userCode, taskCode);
	// // }
	// // // 止以上结束
	// //
	// // return permitComCodes;
	// // }
	// //
	// // public List<String> getPeimitRisk(String userCode, String taskCode) {
	// // // 1．检查用户代码、功能代码是否存在，如果不存在则抛出异常；
	// // Assert.hasText(userCode, "userCode must have value");
	// // Assert.hasText(taskCode, "taskCode must have value");
	// //
	// // // 管理员直接确认为true;
	// // // if (CodeConstants.TOP_USERCODE.equals(userCode)) {
	// // // return true;
	// // // }
	// // // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// // // String powerKey =
	// cacheManager.generateCacheKey("checkPeimitCompany",
	// // // userCode);
	// // // Object result = cacheManager.getCache(powerKey);
	// // // if (result != null) {
	// // // return ((Boolean) result).booleanValue();
	// // // }
	// // // 设定初始值
	// // // boolean checkData = false;
	// // // 获取允许机构代码
	// // // StringBuilder buf = new StringBuilder();
	// // Finder finder = Finder.newInstance();
	// // SaaPermitRisk saaPermitRiskWrap = finder.from(SaaPermitRisk.class);
	// // SaaUserGrade saaUserGradeWrap1 = finder.from(SaaUserGrade.class);
	// // And and = finder.where().and();
	// // Finder subFinder = Finder.newInstance();
	// // SaaUserGrade saaUserGradeWrap = subFinder.from(SaaUserGrade.class);
	// // Select subSelect = subFinder.select();
	// // subSelect.get(saaUserGradeWrap.getId());
	// // subFinder.where().get(saaUserGradeWrap.getUserCode())
	// // .equalIfExist(userCode);
	// // Select select = finder.select();
	// // select.get(saaPermitRiskWrap.getRiskCode());
	// // and.get(saaPermitRiskWrap.getSaaUserGrade().getId()).in(subFinder);
	// // Finder subFinder1 = Finder.newInstance();
	// // // buf.append("select R.riskCode")
	// // // .append(" from SaaPermitRisk saaPermitRisk")
	// // // .append(" where saaPermitRisk.saaUserGrade.id in ( ")
	// // //
	// //
	// .append(" select id from SaaUserGrade saaUserGrade where saaUserGrade.userCode = ?");
	// // if (taskCode == null && "".equals(taskCode)) {
	// // SaaGradeTask saaGradeTaskWrap = subFinder1.from(SaaGradeTask.class);
	// // Select subSelect1 = subFinder1.select();
	// // subSelect1.get(saaGradeTaskWrap.getSaaGrade().getId());
	// // subFinder1.where().get(saaGradeTaskWrap.getSaaTask().getTaskCode())
	// // .equalIfExist(taskCode);
	// // // buf.append(" and ")
	// // // .append(" saaUserGrade.saaGrade.id in (")
	// // //
	// //
	// .append(" select saaGradeTask.saaGrade.id from SaaGradeTask saaGradeTask where saaGradeTask.saaTask.taskCode = ? ")
	// // // .append(")");
	// // }
	// //
	// // // buf.append(")");
	// // // .append(
	// // //
	// //
	// " and current_date() between saaPermitRisk.saaUserGrade.startDate and saaPermitRisk.saaUserGrade.endDate");
	// // List<String> permitRiskCodes = new ArrayList<String>();
	// // if (taskCode != null && !"".equals(taskCode)) {
	// // permitRiskCodes = (List<String>) dao.list(finder);
	// // // permitRiskCodes = this.findByHql(buf.toString(), userCode);
	// // } else {
	// // and.get(saaUserGradeWrap1.getId()).in(subFinder1);
	// // permitRiskCodes = (List<String>) dao.list(finder);
	// // // this
	// // // .findByHql(buf.toString(), userCode, taskCode);
	// // }
	// // // 止以上结束
	// //
	// // return permitRiskCodes;
	// // }
	//
	// public boolean checkPermitCompanyData(String userCode, String taskCode,
	// String comCode) {
	// // 1．检查用户代码、功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(userCode, "userCode must have value");
	// Assert.hasText(taskCode, "taskCode must have value");
	//
	// // 管理员直接确认为true;
	// if (CodeConstants.TOP_USERCODE.equals(userCode)) {
	// return true;
	// }
	// // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// String powerKey = cacheManager.generateCacheKey(
	// "checkPermitCompanyData", userCode, taskCode, comCode);
	// Object result = cacheManager.getCache(powerKey);
	// if (result != null) {
	// return ((Boolean) result).booleanValue();
	// }
	// // 设定初始值
	// boolean checkData = false;
	// int a = 0;
	// // 获取允许机构代码
	// List<String> permitCompanyCodes = this.getPeimitCompany(userCode,
	// taskCode);
	// if (permitCompanyCodes != null && !"".equals(permitCompanyCodes)) {
	//
	// if (permitCompanyCodes.contains(comCode)) {
	// checkData = true;
	// }
	//
	// }
	// cacheManager.putCache(powerKey, checkData);
	// return checkData;
	// }
	//
	// public boolean checkPermitRiskData(String userCode, String taskCode,
	// String riskCode) {
	// // 1．检查用户代码、功能代码是否存在，如果不存在则抛出异常；
	// Assert.hasText(userCode, "userCode must have value");
	// Assert.hasText(taskCode, "taskCode must have value");
	//
	// // 管理员直接确认为true;
	// if (CodeConstants.TOP_USERCODE.equals(userCode)) {
	// return true;
	// }
	// // 2．设定缓存Key为powerKey，其值为方法名+用户代码+功能代码；
	// String powerKey = cacheManager.generateCacheKey("checkPermitRiskData",
	// userCode, taskCode, riskCode);
	// Object result = cacheManager.getCache(powerKey);
	// if (result != null) {
	// return ((Boolean) result).booleanValue();
	// }
	// // 设定初始值
	// boolean checkData = false;
	// int a = 0;
	// // 获取允许机构代码
	// List<String> permitRiskCodes = this.getPeimitRisk(userCode, taskCode);
	// if (permitRiskCodes != null && !"".equals(permitRiskCodes)) {
	//
	// if (permitRiskCodes.contains(riskCode)) {
	// checkData = true;
	// }
	// }
	// cacheManager.putCache(powerKey, checkData);
	// return checkData;
	// }
	//
	// public List getPermitDatas(String userCode, String taskCode, String type)
	// {
	//
	// /**
	// * Finder newFinder = Finder.newInstance(); SaaUserRole saaUserRoleWrap
	// * = newFinder.from(SaaUserRole.class);
	// *
	// * Select newSelect = newFinder.select(); Finder subFinder =
	// * Finder.newInstance(); SaaRoleTask roleTaskWrap =
	// * subFinder.from(SaaRoleTask.class); Select subSelect =
	// * subFinder.select(); subSelect.get(roleTaskWrap.getSaaRole().getId());
	// * subFinder.where().get(roleTaskWrap.getSaaTask().getTaskCode())
	// * .equalIfExist(taskCode); // SaaTask
	// * saaTaskWrap=finder.from(SaaTask.class); And and =
	// * newFinder.where().and();
	// * and.get(saaUserRoleWrap.getUserCode()).equalIfExist(userCode); //
	// * and.get(new Date()).between(saaUserGradeWrap.getStartDate()) //
	// * .and(saaUserGradeWrap.getEndDate());
	// * and.get(saaUserRoleWrap.getSaaRole().getId()).in(subFinder);
	// * List<SaaUserRole> userRoleList = (List<SaaUserRole>) dao
	// * .list(newFinder);
	// */
	// StringBuilder sql = new StringBuilder();
	// sql.append(" select saaUserRole from SaaUserRole saaUserRole where saaUserRole.saaRole.id in ( ");
	// sql.append(" select saaRoleTask.saaRole.id from SaaRoleTask saaRoleTask where saaRoleTask.saaTask.taskCode = ? ) ");
	// sql.append(" and saaUserRole.userCode = ? ");
	// String querySaaUserRoleString = sql.toString();
	// Query querySaaUserRoles = em.createQuery(querySaaUserRoleString);
	// querySaaUserRoles.setParameter(1, taskCode);
	// querySaaUserRoles.setParameter(2, userCode);
	// List<SaaUserRole> userRoleList = querySaaUserRoles.getResultList();
	// List list = new ArrayList();
	// for (int i = 0; i < userRoleList.size(); i++) {
	// sql.setLength(0);// 重用sql
	// sql.append(" select saaPermitData from SaaPermitData saaPermitData where saaPermitData.saaUserRole.id = ? ");
	// sql.append(" and saaPermitData.saaFactor.factorCode = ? ");
	// String querySaaPermitDataString = sql.toString();
	// Query querySaaPermitDatas = em
	// .createQuery(querySaaPermitDataString);
	// querySaaPermitDatas.setParameter(1, userRoleList.get(i).getId());
	// querySaaPermitDatas.setParameter(2, type);
	// List<SaaPermitData> datalist = querySaaPermitDatas.getResultList();
	//
	// /**
	// * Finder permitDataFinder = Finder.newInstance(); SaaPermitData
	// * saaPermitDataWrap = permitDataFinder .from(SaaPermitData.class);
	// * And permitAnd = permitDataFinder.where().and();
	// * permitAnd.get(saaPermitDataWrap.getSaaUserRole().getId())
	// * .equalIfExist(userRoleList.get(i).getId());
	// * permitAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode())
	// * .equalIfExist(type); List<SaaPermitData> datalist =
	// * (List<SaaPermitData>) dao .list(permitDataFinder);
	// */
	// for (int j = 0; j < datalist.size(); j++) {
	// list.add(datalist.get(j).getDataValue());
	// }
	// }
	// return list;
	//
	// }
	//
	// public List<String> getPermitDatasByUserCode(String userCode, String
	// type) {
	//
	// List<String> list = new ArrayList<String>();
	// if (type.equals("COMCODE")) {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// newFinder.where().get(saaUserRoleWrap.getUserCode())
	// .equal(userCode);
	// Select newSelect = newFinder.select();
	// newSelect.get(saaUserRoleWrap.getId());
	//
	// StringBuilder sql = new StringBuilder();
	// sql.append(" select saaPermitData.dataValue from SaaPermitData saaPermitData where saaPermitData.saaUserRole.id in( ");
	// sql.append(" select saaUserRole.id from SaaUserRole saaUserRole where saaUserRole.userCode = ? )");
	// sql.append(" and saaPermitData.saaFactor.factorCode = ?");
	// String queryDataValueString = sql.toString();
	// Query queryDataValues = em.createQuery(queryDataValueString);
	// queryDataValues.setParameter(1, userCode);
	// queryDataValues.setParameter(2, type);
	// List<String> aa = queryDataValues.getResultList();
	//
	// /**
	// * Finder permitDataFinder = Finder.newInstance(); SaaPermitData
	// * saaPermitDataWrap = permitDataFinder .from(SaaPermitData.class);
	// * Select permitDataSelect = permitDataFinder.select(); And
	// * permitAnd = permitDataFinder.where().and();
	// * permitAnd.get(saaPermitDataWrap.getSaaUserRole().getId()).in(
	// * newFinder);
	// * permitAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode())
	// * .equalIfExist(type);
	// * permitDataSelect.get(saaPermitDataWrap.getDataValue());
	// *
	// * List aa = (List) dao.list(permitDataFinder);
	// */
	//
	// final int size = aa.size();
	// String[] xxx = (String[]) aa.toArray(new String[size]);
	// List<String> newCodeList = new ArrayList<String>();
	// for (String comCodeTemple : xxx) {
	// List<SaaCompanyGrade> saaCompanyGradeList = new
	// ArrayList<SaaCompanyGrade>();
	// sql.setLength(0);// 重用sql
	// sql.append("select saaCompanyGrade from SaaCompanyGrade saaCompanyGrade where saaCompanyGrade.comCode like ?");
	// sql.append("%");
	//
	// Finder companygradeFinder = Finder.newInstance();
	// SaaCompanyGrade temple = companygradeFinder
	// .from(SaaCompanyGrade.class);
	// companygradeFinder.where().get(temple.getComCode())
	// .likeIfExist(comCodeTemple + "%");
	// saaCompanyGradeList = (List<SaaCompanyGrade>) dao
	// .list(companygradeFinder);
	// for (SaaCompanyGrade one : saaCompanyGradeList) {
	// if (!newCodeList.contains(one.getComCode())) {
	// newCodeList.add(one.getComCode());
	// }
	// }
	//
	// }
	// list = newCodeList;
	// }
	//
	// else if (type.equals("USERCODE")) {
	//
	// List comCodeForUse = getPermitDatasByUserCode(userCode, "COMCODE");
	// if (comCodeForUse.size() == 0) {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// newFinder.where().get(saaUserRoleWrap.getUserCode())
	// .equal(userCode);
	// Select newSelect = newFinder.select();
	// newSelect.get(saaUserRoleWrap.getId());
	// Finder permitDataFinder = Finder.newInstance();
	// SaaPermitData saaPermitDataWrap = permitDataFinder
	// .from(SaaPermitData.class);
	// Select permitDataSelect = permitDataFinder.select();
	// And permitAnd = permitDataFinder.where().and();
	// permitAnd.get(saaPermitDataWrap.getSaaUserRole().getId()).in(
	// newFinder);
	// permitAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode())
	// .equalIfExist(type);
	// permitDataSelect.get(saaPermitDataWrap.getDataValue());
	// list = (List) dao.list(permitDataFinder);
	// if (!list.contains(userCode)) {
	// list.add(userCode);
	// }
	// } else {
	// Finder userFinder = Finder.newInstance();
	// SaaUserId saaUser = userFinder.from(SaaUserId.class);
	// List<SaaUserId> saaUsers = (List<SaaUserId>) dao
	// .list(userFinder);
	// for (int i = 0; i < saaUsers.size(); i++) {
	// if (comCodeForUse.contains(saaUsers.get(i).getComCode())) {
	// list.add(saaUsers.get(i).getUserCode());
	// }
	// }
	// }
	//
	// } else {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// newFinder.where().get(saaUserRoleWrap.getUserCode())
	// .equal(userCode);
	// Select newSelect = newFinder.select();
	// newSelect.get(saaUserRoleWrap.getId());
	// Finder permitDataFinder = Finder.newInstance();
	// SaaPermitData saaPermitDataWrap = permitDataFinder
	// .from(SaaPermitData.class);
	// Select permitDataSelect = permitDataFinder.select();
	// And permitAnd = permitDataFinder.where().and();
	// permitAnd.get(saaPermitDataWrap.getSaaUserRole().getId()).in(
	// newFinder);
	// permitAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode())
	// .equalIfExist(type);
	// permitDataSelect.get(saaPermitDataWrap.getDataValue());
	// list = (List) dao.list(permitDataFinder);
	// }
	// return list;
	// }
	//
	// public List getPermitDatasByUserCodeAndDept(String userCode, String type,
	// String dept) {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// newFinder.where().get(saaUserRoleWrap.getUserCode()).equal(userCode);
	// Select newSelect = newFinder.select();
	// newSelect.get(saaUserRoleWrap.getId());
	// Finder permitDataFinder = Finder.newInstance();
	// SaaPermitData saaPermitDataWrap = permitDataFinder
	// .from(SaaPermitData.class);
	// Select permitDataSelect = permitDataFinder.select();
	// And permitAnd = permitDataFinder.where().and();
	// permitAnd.get(saaPermitDataWrap.getSaaUserRole().getId()).in(newFinder);
	// permitAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode())
	// .equalIfExist(type);
	// permitAnd.get(saaPermitDataWrap.getDataOper()).equalIfExist(dept);
	// permitDataSelect.get(saaPermitDataWrap.getDataValue());
	// List list = (List) dao.list(permitDataFinder);
	// return list;
	// }
	//
	// public List getExceptDatasByUserCodeAndDept(String userCode, String type,
	// String dept) {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// Select newSelect = newFinder.select();
	// newSelect.get(saaUserRoleWrap.getId());
	// Finder exceptDataFinder = Finder.newInstance();
	// SaaExceptData saaExceptDataWrap = exceptDataFinder
	// .from(SaaExceptData.class);
	// Select exceptDataSelect = exceptDataFinder.select();
	// And exceptAnd = exceptDataFinder.where().and();
	// exceptAnd.get(saaExceptDataWrap.getSaaUserRole().getId()).in(newFinder);
	// exceptAnd.get(saaExceptDataWrap.getSaaFactor().getFactorCode())
	// .equalIfExist(type);
	// exceptAnd.get(saaExceptDataWrap.getDataOper()).equalIfExist(dept);
	// exceptDataSelect.get(saaExceptDataWrap.getDataValue());
	// List list = (List) dao.list(exceptDataFinder);
	// return list;
	//
	// }
	//
	// public void addDataPower(String userCode, String taskCode, String type,
	// String dataValue) {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// Select newSelect = newFinder.select();
	// Finder subFinder = Finder.newInstance();
	// SaaRoleTask roleTaskWrap = subFinder.from(SaaRoleTask.class);
	// Select subSelect = subFinder.select();
	// subSelect.get(roleTaskWrap.getSaaRole().getId());
	// subFinder.where().get(roleTaskWrap.getSaaTask().getTaskCode())
	// .equalIfExist(taskCode);
	// // SaaTask saaTaskWrap=finder.from(SaaTask.class);
	// And and = newFinder.where().and();
	// and.get(saaUserRoleWrap.getUserCode()).equalIfExist(userCode);
	// // and.get(new Date()).between(saaUserGradeWrap.getStartDate())
	// // .and(saaUserGradeWrap.getEndDate());
	// and.get(saaUserRoleWrap.getSaaRole().getId()).in(subFinder);
	// List<SaaUserRole> userRoleList = (List<SaaUserRole>) dao
	// .list(newFinder);
	// SaaPermitData saaPermitData = new SaaPermitData();
	// saaPermitData.setDataValue(dataValue);
	// saaPermitData.setDataOper("String");
	// saaPermitData.setSaaFactor(FindFactor(type));
	// saaPermitData.setSaaUserRole(userRoleList.get(0));
	// saaPermitData.setInsertTimeForHis(new Date());
	// saaPermitData.setVersion(1);
	// dao.save(saaPermitData);
	// }
	//
	// public List getExceptDatas(String userCode, String taskCode, String type)
	// {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// Select newSelect = newFinder.select();
	// Finder subFinder = Finder.newInstance();
	// SaaRoleTask roleTaskWrap = subFinder.from(SaaRoleTask.class);
	// Select subSelect = subFinder.select();
	// subSelect.get(roleTaskWrap.getSaaRole().getId());
	// subFinder.where().get(roleTaskWrap.getSaaTask().getTaskCode())
	// .equalIfExist(taskCode);
	// // SaaTask saaTaskWrap=finder.from(SaaTask.class);
	// And and = newFinder.where().and();
	// and.get(saaUserRoleWrap.getUserCode()).equalIfExist(userCode);
	// // and.get(new Date()).between(saaUserGradeWrap.getStartDate())
	// // .and(saaUserGradeWrap.getEndDate());
	// and.get(saaUserRoleWrap.getSaaRole().getId()).in(subFinder);
	// newSelect.get(saaUserRoleWrap.getId());
	// Finder exceptDataFinder = Finder.newInstance();
	// SaaExceptData saaExceptDataWrap = exceptDataFinder
	// .from(SaaExceptData.class);
	// Select exceptDataSelect = exceptDataFinder.select();
	// And exceptAnd = exceptDataFinder.where().and();
	// exceptAnd.get(saaExceptDataWrap.getSaaUserRole().getId()).in(newFinder);
	// exceptAnd.get(saaExceptDataWrap.getSaaFactor().getFactorCode())
	// .equalIfExist(type);
	// exceptDataSelect.get(saaExceptDataWrap.getDataValue());
	// return (List) dao.list(exceptDataFinder);
	// }
	//
	// public List getExceptDatasByUserCode(String userCode, String type) {
	// Finder newFinder = Finder.newInstance();
	// SaaUserRole saaUserRoleWrap = newFinder.from(SaaUserRole.class);
	// Select newSelect = newFinder.select();
	// newSelect.get(saaUserRoleWrap.getId());
	// Finder exceptDataFinder = Finder.newInstance();
	// SaaExceptData saaExceptDataWrap = exceptDataFinder
	// .from(SaaExceptData.class);
	// Select exceptDataSelect = exceptDataFinder.select();
	// And exceptAnd = exceptDataFinder.where().and();
	// exceptAnd.get(saaExceptDataWrap.getSaaUserRole().getId()).in(newFinder);
	// exceptAnd.get(saaExceptDataWrap.getSaaFactor().getFactorCode())
	// .equalIfExist(type);
	// exceptDataSelect.get(saaExceptDataWrap.getDataValue());
	// List list = (List) dao.list(exceptDataFinder);
	// return list;
	//
	// }
	//
	// public void addPower(String userCode, Finder finder) {
	// FinderImpl finderInner = (FinderImpl) finder;
	// addDataPower(userCode, finderInner);
	// }
	//
	// private void addDataPower(String userCode, FinderImpl finder) {
	// Map<String, Set<String>> typePropertyMap = new HashMap<String,
	// Set<String>>();
	// getAllType();
	// EntityInfo[] froms = finder.froms();
	// for (EntityInfo from : froms) {
	// Map<String, PropertyDescriptor> propertyMap = Reflects
	// .getPropertyDescriptorMap(from.getType());
	// for (String type : typePropertyMap.keySet()) {// 遍历所有的类型
	// Set<String> propertyNames = typePropertyMap.get(type);
	// Set<String> existPropertyNames = new HashSet<String>();
	// String dataType = getDataTypeByFactorCode(type);
	// for (String propertyName : propertyNames) {
	// if (propertyMap.containsKey(propertyName)) {
	// existPropertyNames.add(propertyName);
	// }
	// }
	// if (!existPropertyNames.isEmpty() && !isSaaTable(from)) {
	// addTypePower(userCode, finder, from, type, dataType,
	// existPropertyNames);
	// }
	// }
	// }
	// }
	//
	// private boolean isSaaTable(EntityInfo from) {
	// if (SaaCompanyId.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaClassId.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaCompanyGrade.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaExceptData.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaFactor.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaFactorField.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaUrlTask.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaRole.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaRoleTask.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaTask.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaUserRole.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaUserId.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// if (SaaPermitData.class.isAssignableFrom(from.getType())) {
	// return true;
	// }
	// return false;
	// }
	//
	// private void addTypePower(String userCode, FinderImpl finder,
	// EntityInfo from, String type, String dataType,
	// Set<String> existPropertyNames) {
	// Logs.debug("进入权限拦截器");
	// // TODO 查找所有满足条件的数据，如当type是comcode的时候，找到所有满足条件的comcode
	// // List<String> permitDataList = new ArrayList<String>/();/ 已经查到的comcode
	//
	// if (!CodeConstants.TOP_MANAGER.equals(userCode)) {
	// if (dataType.equals("STRING")) {
	// List<?> permitDataList = getPermitDatasByUserCode(userCode,
	// type);
	// List<?> exceptDataList = getExceptDatasByUserCode(userCode,
	// type);
	// // TODO 给finder添加机构过滤条件，添加方式：
	// for (String propertyName : existPropertyNames) {
	// if (!permitDataList.isEmpty()) {
	// finder.where(
	// finder.mockProperty(String.class, from,
	// propertyName)).in(
	// permitDataList.toArray(new String[0]));
	// } else {
	// finder.where().get(1).equal(0);
	// }
	// if (!exceptDataList.isEmpty()) {
	// finder.where(
	// finder.mockProperty(String.class, from,
	// propertyName)).notIn(
	// exceptDataList.toArray(new String[0]));
	// }
	// // comcode in (?,?,?,?)
	// }
	// } else if (dataType.equals("FLOAT")) {
	// List<String> depts2 = getDeptByType(dataType);
	// for (int j = 0; j < depts2.size(); j++) {
	// String dept2 = depts2.get(j);
	// if (dept2.equals("=")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, "=");
	//
	// List<Double> permitFloatList = changeTypeDouble(permitDataList);
	//
	// for (String propertyName : existPropertyNames) {
	// if (!permitFloatList.isEmpty()) {
	// finder.where(
	// finder.mockProperty(Double.class, from,
	// propertyName)).in(
	// permitFloatList.toArray(new Double[0]));
	// } else {
	// finder.where().get(1).equal(0);
	// }
	//
	// }
	// } else if (dept2.equals(">")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, ">");
	// List<Double> permitFloatList = changeTypeDouble(permitDataList);
	//
	// for (String propertyName : existPropertyNames) {
	//
	// if (!permitFloatList.isEmpty()) {
	// for (int l = 0; l < permitFloatList.size(); l++) {
	// finder.where(
	// finder.mockProperty(Double.class,
	// from, propertyName))
	// .greatThan(permitFloatList.get(l));
	// }
	// }
	// }
	//
	// } else if (dept2.equals("<")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, "<");
	// List<Double> permitFloatList = changeTypeDouble(permitDataList);
	//
	// for (String propertyName : existPropertyNames) {
	//
	// if (!permitFloatList.isEmpty()) {
	// for (int l = 0; l < permitFloatList.size(); l++) {
	// finder.where(
	// finder.mockProperty(Double.class,
	// from, propertyName))
	// .lessThan(permitFloatList.get(l));
	// }
	// }
	// }
	//
	// } else if (dept2.equals("between")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, "between");
	//
	// List<SaaPermitFloatVO> floatList = getAllFloatDateList(permitDataList);
	//
	// for (String propertyName : existPropertyNames) {
	// if (!floatList.isEmpty()) {
	// for (int k = 0; k < floatList.size(); k++) {
	// Double float3 = floatList.get(k)
	// .getFloatValue3();
	// Double float4 = floatList.get(k)
	// .getFloatValue4();
	// finder.where(
	// finder.mockProperty(Double.class,
	// from, propertyName))
	// .between(float3).and(float4);
	// }
	// } else {
	// finder.where().get(1).equal(0);
	// }
	// // comcode in (?,?,?,?)
	// }
	//
	// }
	// }
	//
	// } else if (dataType.equals("DATE")) {
	// List<String> depts = getDeptByType(dataType);
	// for (int j = 0; j < depts.size(); j++) {
	// String dept = depts.get(j);
	// if (dept.equals("=")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, "=");
	// List<?> exceptDataList = getExceptDatasByUserCodeAndDept(
	// userCode, type, "=");
	// List<Date> permitDateDataList = changeTypeDate(permitDataList);
	// List<Date> exceptDateDataList = changeTypeDate(exceptDataList);
	// for (String propertyName : existPropertyNames) {
	// if (!permitDateDataList.isEmpty()) {
	// finder.where(
	// finder.mockProperty(Date.class, from,
	// propertyName))
	// .in(permitDateDataList
	// .toArray(new Date[0]));
	// } else {
	// finder.where().get(1).equal(0);
	// }
	// if (!exceptDateDataList.isEmpty()) {
	// finder.where(
	// finder.mockProperty(Date.class, from,
	// propertyName))
	// .notIn(exceptDateDataList
	// .toArray(new Date[0]));
	// }
	// // comcode in (?,?,?,?)
	// }
	//
	// } else if (dept.equals(">")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, ">");
	// List<?> exceptDataList = getExceptDatasByUserCodeAndDept(
	// userCode, type, ">");
	// List<Date> permitDateDataList = changeTypeDate(permitDataList);
	// List<Date> exceptDateDataList = changeTypeDate(exceptDataList);
	// for (String propertyName : existPropertyNames) {
	// if (!permitDateDataList.isEmpty()) {
	// for (int k = 0; k < permitDateDataList.size(); k++) {
	// finder.where(
	// finder.mockProperty(Date.class,
	// from, propertyName))
	// .greatThan(
	// permitDateDataList.get(k));
	// }
	// } else {
	// finder.where().get(1).equal(0);
	// }
	// // comcode in (?,?,?,?)
	// }
	//
	// } else if (dept.equals("<")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, "<");
	// List<?> exceptDataList = getExceptDatasByUserCodeAndDept(
	// userCode, type, "<");
	// List<Date> permitDateDataList = changeTypeDate(permitDataList);
	// List<Date> exceptDateDataList = changeTypeDate(exceptDataList);
	// for (String propertyName : existPropertyNames) {
	// if (!permitDateDataList.isEmpty()) {
	// for (int k = 0; k < permitDateDataList.size(); k++) {
	// finder.where(
	// finder.mockProperty(Date.class,
	// from, propertyName))
	// .lessThan(permitDateDataList.get(k));
	// }
	// } else {
	// finder.where().get(1).equal(0);
	// }
	// // comcode in (?,?,?,?)
	// }
	//
	// } else if (dept.equals("between")) {
	// List<?> permitDataList = getPermitDatasByUserCodeAndDept(
	// userCode, type, "between");
	// List<SaaPermitDateVO> dateVOList = getAllDateList(permitDataList);
	// for (String propertyName : existPropertyNames) {
	// if (!dateVOList.isEmpty()) {
	// for (int k = 0; k < dateVOList.size(); k++) {
	// Date date3 = dateVOList.get(k).getDate3();
	// Date date4 = dateVOList.get(k).getDate4();
	// finder.where(
	// finder.mockProperty(Date.class,
	// from, propertyName))
	// .between(date3).and(date4);
	// }
	// } else {
	// finder.where().get(1).equal(0);
	// }
	// // comcode in (?,?,?,?)
	// }
	//
	// }
	// }
	//
	// }
	//
	// }
	// }
	//
	// private void getAllType() {
	// Map<String, Set<String>> typePropertyMap = new HashMap<String,
	// Set<String>>();
	// /**
	// * Finder finder = Finder.newInstance(); SaaFactor saaFactor =
	// * finder.from(SaaFactor.class); // Select select=finder.select(); //
	// * select.get(saaFactor.getFactorCode()).distinct(); List<SaaFactor>
	// * factors = (List<SaaFactor>) dao.list(finder);
	// */
	// List<SaaFactor> factors = saaFactorService.findFactors();
	// for (int i = 0; i < factors.size(); i++) {
	// Set<String> typeMap = new HashSet<String>();
	// /**
	// * Finder columnFinder = Finder.newInstance(); SaaFactorField temple
	// * = columnFinder.from(SaaFactorField.class);
	// * columnFinder.where().get(temple.getSaaFactor())
	// * .equalIfExist(factors.get(i)); List<SaaFactorField> columns =
	// * (List<SaaFactorField>) dao .list(columnFinder);
	// */
	// List<SaaFactorField> columns = saaFactorFieldService
	// .findSaaFactorFieldBySaaFactor(factors.get(i));
	// for (int j = 0; j < columns.size(); j++) {
	//
	// typeMap.add(columns.get(j).getFieldCode());
	// }
	// typePropertyMap.put(factors.get(i).getFactorCode(), typeMap);
	// }
	//
	// /****************** 测试 ******************/
	// /**
	// * for (String type : typePropertyMap.keySet()) {// 遍历所有的类型 Set<String>
	// * propertyNames = typePropertyMap.get(type); for (String propertyName :
	// * propertyNames) { System.out.println("******" + propertyName); } }
	// */
	// /***************************************/
	//
	// // try {
	// // String sourcePath = ActionContext.getContext().getClass()
	// // .getClassLoader().getResource("").getFile().substring(1);
	// // String source = sourcePath + "factor.xml";
	// // File f = new File(source);
	// // SAXReader reader = new SAXReader();
	// // Document doc = reader.read(f);
	// // Element root = doc.getRootElement();
	// // Element foo,cur;
	// //
	// //
	// // for (Iterator i = root.elementIterator("entry"); i.hasNext();) {
	// // foo = (Element) i.next();
	// // Set<String> typeMap=new HashSet<String>();
	// // for(Iterator j = root.elementIterator("value");i.hasNext();){
	// // typeMap.add(foo.elementText("value"));
	// // }
	// // typePropertyMap.put(foo.attributeValue("key"), typeMap);
	// // }
	// // } catch (Exception e) {
	// // e.printStackTrace();
	// // }
	// }
	//
	// public List<SaaFactor> getFactors() {
	// List<SaaFactor> factors = saaFactorService.findFactors();
	// /**
	// * Finder finder = Finder.newInstance(); SaaFactor saaFactor =
	// * finder.from(SaaFactor.class); // Select select=finder.select(); //
	// * select.get(saaFactor.getFactorCode()).distinct(); List<SaaFactor>
	// * factors = (List<SaaFactor>) dao.list(finder);
	// */
	// return factors;
	//
	// }
	//
	// public List<SaaFactorField> getColumns(SaaFactor saaFactor) {
	// Assert.notNull(saaFactor, "type must have value.");
	// Assert.notNull(saaFactor.getId(), "type must have value.");
	// List<SaaFactorField> columns = saaFactorFieldService
	// .findSaaFactorFieldBySaaFactor(saaFactor);
	// /**
	// * Finder columnFinder = Finder.newInstance(); SaaFactorField temple =
	// * columnFinder.from(SaaFactorField.class);
	// * columnFinder.where().get(temple
	// * .getSaaFactor()).equalIfExist(saaFactor); List<SaaFactorField>
	// * columns = (List<SaaFactorField>) dao .list(columnFinder);
	// */
	// return columns;
	//
	// }
	//
	// public SaaFactor FindFactor(String type) {
	// Assert.hasText("type must have value.", type);
	// SaaFactor factortemple = null;
	// String querySaaFactorString =
	// "select distinct o from SaaFactor o where o.factorCode = ?";
	// Query querySaaFactor = em.createQuery(querySaaFactorString);
	// querySaaFactor.setParameter(1, type);
	// List<SaaFactor> saaFactorList = querySaaFactor.getResultList();
	// if (saaFactorList.size() > 0) {
	// factortemple = saaFactorList.get(0);
	// }
	// /**
	// * Finder finder = Finder.newInstance(); SaaFactor saaFactor =
	// * finder.from(SaaFactor.class);
	// * finder.where().get(saaFactor.getFactorCode()).equalIfExist(type);
	// * SaaFactor factortemple = (SaaFactor) dao.unique(finder);
	// */
	// if (factortemple != null) {
	// return factortemple;
	// } else {
	// SaaFactor factorNew = new SaaFactor();
	// factorNew.setFactorCode(type);
	// factorNew.setFactorDesc("$$$$");
	// factorNew.setDataType("STRING");
	// saaFactorService.save(factorNew);
	// /**
	// * dao.save(factorNew); return dao.get(SaaFactor.class,
	// * factorNew.getId());
	// */
	// return saaFactorService.findByPK(factorNew.getId());
	// }
	//
	// }
	//
	// public String getDataTypeByFactorCode(String type) {
	// Assert.hasText("type must have value.", type);
	// List<String> dataTypeList = null;
	// String dataType = null;
	// String queryDataTypeString =
	// "select distinct saaFactor.dataType from SaaFactor saaFactor where saaFactor.factorCode = ?";
	// Query queryDataType = em.createQuery(queryDataTypeString);
	// queryDataType.setParameter(1, type);
	// dataTypeList = queryDataType.getResultList();
	// if (dataTypeList.size() > 0) {
	// dataType = dataTypeList.get(0);
	// }
	// return dataType;
	//
	// /**
	// * Finder finder = Finder.newInstance(); SaaFactor saaFactor =
	// * finder.from(SaaFactor.class);
	// * finder.where().get(saaFactor.getFactorCode()).equalIfExist(type);
	// * Select select = finder.select(); select.get(saaFactor.getDataType());
	// * return (String) dao.unique(finder);
	// */
	// }
	//
	// public List<Float> changeType(List<?> permitDataList) {
	// List<Float> floatList = new ArrayList<Float>();
	// for (int i = 0; i < permitDataList.size(); i++) {
	// Float f = Float.parseFloat(permitDataList.get(i).toString());
	// floatList.add(f);
	// }
	// return floatList;
	// }
	//
	// public List<Double> changeTypeDouble(List<?> permitDataList) {
	// List<Double> doubleList = new ArrayList<Double>();
	// for (int i = 0; i < permitDataList.size(); i++) {
	// Double f = Double.parseDouble(permitDataList.get(i).toString());
	// doubleList.add(f);
	// }
	// return doubleList;
	// }
	//
	// public List<String> getDeptByType(String type) {
	// Finder finder = Finder.newInstance();
	// SaaPermitData saaPermitData = finder.from(SaaPermitData.class);
	// finder.where().get(saaPermitData.getSaaFactor().getDataType())
	// .equalIfExist(type);
	// Select select = finder.select();
	// select.get(saaPermitData.getDataOper()).distinct();
	// return (List<String>) dao.list(finder);
	//
	// }
	//
	// public List<SaaPermitDateVO> getAllDateList(List<?> permitDataList) {
	// List<SaaPermitDateVO> dateListVO = new ArrayList<SaaPermitDateVO>();
	//
	// for (int i = 0; i < permitDataList.size(); i++) {
	// SaaPermitDateVO saaPermitDateVO = new SaaPermitDateVO();
	//
	// String[] dateList = (permitDataList.get(i).toString()).split("/");
	// // List<String> list=new ArrayList<String>();
	//
	// Date newDate1 = changeOneTypeDate(dateList[0]);
	// Date newDate2 = changeOneTypeDate(dateList[1]);
	//
	// saaPermitDateVO.setDate1(dateList[0]);
	// saaPermitDateVO.setDate2(dateList[1]);
	// saaPermitDateVO.setDate3(newDate1);
	// saaPermitDateVO.setDate4(newDate2);
	//
	// dateListVO.add(saaPermitDateVO);
	//
	// }
	//
	// return dateListVO;
	//
	// }
	//
	// public List<SaaPermitFloatVO> getAllFloatDateList(List<?> permitDataList)
	// {
	// List<SaaPermitFloatVO> dateListVO = new ArrayList<SaaPermitFloatVO>();
	//
	// for (int i = 0; i < permitDataList.size(); i++) {
	// SaaPermitFloatVO saaPermitFloatVO = new SaaPermitFloatVO();
	//
	// String[] dateList = (permitDataList.get(i).toString()).split("/");
	// // List<String> list=new ArrayList<String>();
	//
	// Double float1 = changeOneFloatTypeDate(dateList[0]);
	// Double float2 = changeOneFloatTypeDate(dateList[1]);
	//
	// saaPermitFloatVO.setFloatValue1(dateList[0]);
	// saaPermitFloatVO.setFloatValue2(dateList[1]);
	// saaPermitFloatVO.setFloatValue3(float1);
	// saaPermitFloatVO.setFloatValue4(float2);
	//
	// dateListVO.add(saaPermitFloatVO);
	//
	// }
	//
	// return dateListVO;
	//
	// }
	//
	// public List<Date> changeTypeDate(List<?> permitDataList) {
	// List<Date> dateList = new ArrayList<Date>();
	// for (int i = 0; i < permitDataList.size(); i++) {
	// String time = permitDataList.get(i).toString();
	// Date date2 = new Date();
	// try {
	// date2 = new SimpleDateFormat("yyyyMMdd").parse(time);
	// } catch (ParseException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// dateList.add(date2);
	// }
	// return dateList;
	// }
	//
	// public Date changeOneTypeDate(String Date) {
	//
	// Date date2 = new Date();
	// try {
	// date2 = new SimpleDateFormat("yyyyMMdd").parse(Date);
	// } catch (ParseException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// return date2;
	// }
	//
	// public SaaPermitVO getDataByUserCodeAndType(String userCode) {
	//
	// Assert.hasText("userCode must have value.", userCode);
	//
	// String queryPermitComString =
	// "SELECT t FROM SaaPermitData t where t.saaUserRole.id in (SELECT o.id FROM SaaUserRole o where o.userCode = ?) and t.saaFactor.factorCode = ? ";
	//
	// List<SaaPermitData> permitComList = saaPermitDataService
	// .findSaaPermitDataListByUserCodeAndFactorCode(
	// queryPermitComString, userCode, "COMCODE");
	// List<String> comList = new ArrayList<String>();
	// for (SaaPermitData saaPermitData : permitComList) {
	// comList.add(saaPermitData.getDataValue());
	// }
	//
	// String queryPermitUserString =
	// "SELECT t FROM SaaPermitData t where t.saaUserRole.id in (SELECT o.id FROM SaaUserRole o where o.userCode = ?) and t.saaFactor.factorCode = ? ";
	//
	// List<SaaPermitData> permitUserList = saaPermitDataService
	// .findSaaPermitDataListByUserCodeAndFactorCode(
	// queryPermitUserString, userCode, "USERCODE");
	// List<String> userList = new ArrayList<String>();
	// for (SaaPermitData saaPermitData : permitUserList) {
	// userList.add(saaPermitData.getDataValue());
	// }
	// StringBuffer permitComCode = new StringBuffer();
	// StringBuffer permitUserCode = new StringBuffer();
	// String comCode = new String();
	// if (comList.size() != 0) {
	// for (int i = 0; i < comList.size(); i++) {
	// permitComCode.append(comList.get(i).toString());
	// permitComCode.append(",");
	//
	// }
	// comCode = permitComCode.substring(0, permitComCode.length() - 1);
	// }
	// String usernewCode = new String();
	// if (userList.size() != 0) {
	// for (int i = 0; i < userList.size(); i++) {
	// permitUserCode.append(userList.get(i).toString());
	// permitUserCode.append(",");
	//
	// }
	// usernewCode = permitUserCode.substring(0,
	// permitUserCode.length() - 1);
	// }
	// SaaPermitVO saaPermitVO = new SaaPermitVO();
	// saaPermitVO.setPermitComCode(comCode);
	// saaPermitVO.setPermitUserCode(usernewCode);
	// return saaPermitVO;
	//
	// /**
	// * Finder newFinder = Finder.newInstance(); SaaUserRole saaUserRoleWrap
	// * = newFinder.from(SaaUserRole.class);
	// * newFinder.where().get(saaUserRoleWrap.getUserCode()).equal(userCode);
	// * Select newSelect = newFinder.select();
	// * newSelect.get(saaUserRoleWrap.getId());
	// *
	// * Finder permitComFinder = Finder.newInstance(); SaaPermitData
	// * saaPermitDataWrap = permitComFinder .from(SaaPermitData.class);
	// * Select permitDataSelect = permitComFinder.select(); And permitAnd =
	// * permitComFinder.where().and();
	// * permitAnd.get(saaPermitDataWrap.getSaaUserRole
	// * ().getId()).in(newFinder);
	// * permitAnd.get(saaPermitDataWrap.getSaaFactor().getFactorCode())
	// * .equalIfExist("COMCODE");
	// *
	// * permitDataSelect.get(saaPermitDataWrap.getDataValue()); List<String>
	// * comList = (List<String>) dao.list(permitComFinder);
	// *
	// * Finder permitUserFinder = Finder.newInstance(); SaaPermitData
	// * saaPermitUserWrap = permitUserFinder .from(SaaPermitData.class);
	// * Select permitUserSelect = permitUserFinder.select(); And
	// * permitUserAnd = permitUserFinder.where().and();
	// * permitUserAnd.get(saaPermitUserWrap.getSaaUserRole().getId()).in(
	// * newFinder);
	// * permitUserAnd.get(saaPermitUserWrap.getSaaFactor().getFactorCode())
	// * .equalIfExist("USERCODE");
	// *
	// * permitUserSelect.get(saaPermitUserWrap.getDataValue()); List<String>
	// * userList = (List<String>) dao.list(permitUserFinder); StringBuffer
	// * permitComCode = new StringBuffer(); StringBuffer permitUserCode = new
	// * StringBuffer(); String comCode = new String(); if (comList.size() !=
	// * 0) { for (int i = 0; i < comList.size(); i++) {
	// * permitComCode.append(comList.get(i).toString());
	// * permitComCode.append(",");
	// *
	// * } comCode = permitComCode.substring(0, permitComCode.length() - 1); }
	// * String usernewCode = new String(); if (userList.size() != 0) { for
	// * (int i = 0; i < userList.size(); i++) {
	// * permitUserCode.append(userList.get(i).toString());
	// * permitUserCode.append(",");
	// *
	// * } usernewCode = permitUserCode.substring(0, permitUserCode.length() -
	// * 1); } SaaPermitVO saaPermitVO = new SaaPermitVO();
	// * saaPermitVO.setPermitComCode(comCode);
	// * saaPermitVO.setPermitUserCode(usernewCode); return saaPermitVO;
	// */
	// }
	//
	// public Double changeOneFloatTypeDate(String floatValue) {
	//
	// Double f = Double.parseDouble(floatValue.toString());
	// return f;
	// }
	//
	// public String addPowerClaim(String arg0, String arg1, String arg2,
	// String arg3, String arg4, String arg5) {
	// // TODO Auto-generated method stub
	// return null;
	// }
	//
	// public List<String> getPeimitRisk(String userCode, String taskCode) {
	// // TODO Auto-generated method stub
	// return null;
	// }
	//
	// public List<String> getPeimitCompany(String userCode, String taskCode) {
	// // TODO Auto-generated method stub
	// return null;
	// }
	//
	// public Finder findcomPower(String userCode, String taskCode) {
	// // TODO Auto-generated method stub
	// return null;
	// }
	//
	// private List<SaaUser> listUserSelect(String currentUserCode) {
	// StringBuilder hql = new StringBuilder();
	// hql.append("select saaUser from SaaUser saaUser where (saaUser.id.userCode like ? or saaUser.id.userName like ?)");
	// hql.append(" and saaUser.id.validStatus = ?");
	// if (!CodeConstants.TOP_USERCODE.equals(currentUserCode)) {
	// hql.append(" and ");
	// hql.append(addPower(currentUserCode, "IMS_System_Power_Role",
	// "saaUser.id.userCode", "saaUser.id.comCode", ""));
	// }
	// hql.append(" order by saaUser.id.userCode");
	// String querySaaUserString = hql.toString();
	// System.out.println("****" + querySaaUserString + "*****");
	// Query querySaaUser = em.createQuery(querySaaUserString);
	// querySaaUser.setParameter(1, "jixiaojun");
	// querySaaUser.setParameter(2, "吉小军");
	// querySaaUser.setParameter(3, "1");
	// return querySaaUser.getResultList();
	// }
	//
	// public void testMethord() {
	// // this.getAllType();
	// /*
	// * List<SaaUser> saaUserList = listUserSelect("jixiaojun"); if
	// * (saaUserList.size() > 0) { for (SaaUser saaUser : saaUserList) {
	// * System.out.println("****" + saaUser.getId().getUserCode() + "****" +
	// * saaUser.getId().getUserName()); } }
	// */
	// /****************** 测试 typePropertyMap是否注入成功 ******************/
	// for (String type : typePropertyMap.keySet()) {// 遍历所有的类型 Set<String>
	// Set<String> propertyNames = typePropertyMap.get(type);
	// for (String propertyName : propertyNames) {
	// System.out.println("******" + propertyName);
	// }
	// }
	// /***************************************/
	// }
}
