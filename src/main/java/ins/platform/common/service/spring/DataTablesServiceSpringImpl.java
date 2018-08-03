package ins.platform.common.service.spring;
import ins.framework.common.CodeValuePair;
import ins.framework.common.ResultPage;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.Page;
import ins.framework.rpc.annotation.Rpc;
import ins.framework.service.support.QueryCond;
import ins.framework.service.util.DataConvertUtils;
import ins.framework.web.util.RequestUtils;
import ins.platform.common.service.facade.DataTablesService;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.hibernate.SessionFactory;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
@Rpc
@Service(value = "dataTablesService")
public   class DataTablesServiceSpringImpl implements DataTablesService { 
	private static final Logger LOGGER = LoggerFactory.getLogger(DataTablesServiceSpringImpl.class);
	@Autowired
	DatabaseDao databaseDao;
//	@Autowired
//	private SaaDataPowerService saaDataPowerService;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Map<String,String> entityMap = new HashMap<String, String>();

	/**
	 * 在构造函数中将泛型T.class赋给entityClass.
	 */ 
	public DataTablesServiceSpringImpl() {
		super(); 
	}

	

	public ResultPage<T> findForPage(Map paramMap,String hql) {
				return findForPage(hql, paramMap, new Object[0]);
	}
	public ResultPage<T> findForPage(String hql,
			Map<String, String[]> paramMap, Object[] values) {

		// 获取记录限制
		int start = RequestUtils.getInt(paramMap, "start", 0);
		int length = RequestUtils.getInt(paramMap, "length", 50);
		boolean containsOrderBy = hql.toLowerCase().contains(" order by ");
		// 获取传入查询条件
		Map<String, String> processedCondMap = new HashMap<String, String>();// 已处理的参数
		List<QueryCond> condList = new ArrayList<QueryCond>();
		List<CodeValuePair> columnList = new ArrayList<CodeValuePair>();
		List<CodeValuePair> orderByList = new ArrayList<CodeValuePair>();
		String code;
		String value;
		int pos;
		String[] keys = new String[paramMap.size()];
		paramMap.keySet().toArray(keys);
		List<String> list = Arrays.asList(keys);
		List<String> columnsDataList = new ArrayList<String>();
		List<String> orderColumnList = new ArrayList<String>();
		List<String> orderDirList = new ArrayList<String>();
		for (int i = 0; i < list.size(); i++) {
			String key = list.get(i);
			if (key.startsWith("[form][") && key.endsWith("][value]")
					&& !processedCondMap.containsKey(key)) {
				processedCondMap.put(key, "");
				value = RequestUtils.getString(paramMap, key, "");
				code = key.substring("[form][".length());
				code = code.substring(0, code.length() - "][value]".length());
				QueryCond cond = new QueryCond();
				cond.setName(code);
				cond.setValue(value);
				String shortKey = key.substring(0,
						key.length() - "[value]".length());
				cond.setDataType(RequestUtils.getString(paramMap, shortKey
						+ "[dataType]", "String"));
				cond.setQueryType(RequestUtils.getString(paramMap, shortKey
						+ "[queryType]", "begin with"));
				cond.setSecondValue(RequestUtils.getString(paramMap, shortKey
						+ "[secondValue]", ""));
				condList.add(cond);
			}else if (key.startsWith("columns[") && key.endsWith("][data]")) {
				columnsDataList.add(key);
			} else if (key.startsWith("order[") && key.endsWith("][column]")) {
				if(!containsOrderBy){
					orderColumnList.add(key);
				}
			} else if (key.startsWith("order[") && key.endsWith("][dir]")) {
				if(!containsOrderBy){
					orderDirList.add(key);
				}
			}
		}
		
		Collections.sort(columnsDataList,new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				String codeO1 = o1.substring("columns[".length());
				int posO1 = codeO1.indexOf(']');
//				int numO1 = Integer.valueOf(codeO1.substring(0, posO1)).intValue();
				int numO1 = Integer.parseInt(codeO1.substring(0, posO1));
				String codeO2 = o2.substring("columns[".length());
				int posO2 = codeO2.indexOf(']');
//				int numO2 = Integer.valueOf(codeO2.substring(0, posO2)).intValue();
				int numO2 = Integer.parseInt(codeO2.substring(0, posO2));
				if(numO1 > numO2){
					return 1;
				}else if(numO1 < numO2){
					return -1;
				}
				return 0;
			}
		});
		Collections.sort(orderColumnList,new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				String codeO1 = o1.substring("order[".length());
				int posO1 = codeO1.indexOf(']');
//				int numO1 = Integer.valueOf(codeO1.substring(0, posO1)).intValue();
				int numO1 = Integer.parseInt(codeO1.substring(0, posO1));
				String codeO2 = o2.substring("order[".length());
				int posO2 = codeO2.indexOf(']');
//				int numO2 = Integer.valueOf(codeO2.substring(0, posO2)).intValue();
				int numO2 = Integer.parseInt(codeO2.substring(0, posO2));
				if(numO1 > numO2){
					return 1;
				}else if(numO1 < numO2){
					return -1;
				}
				return 0;
			}
		});
		Collections.sort(orderDirList,new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				String codeO1 = o1.substring("order[".length());
				int posO1 = codeO1.indexOf(']');
//				int numO1 = Integer.valueOf(codeO1.substring(0, posO1)).intValue();
				int numO1=Integer.parseInt(codeO1.substring(0, posO1));
				
				String codeO2 = o2.substring("order[".length());
				int posO2 = codeO2.indexOf(']');
//				int numO2 = Integer.valueOf(codeO2.substring(0, posO2)).intValue();
				int numO2 = Integer.parseInt(codeO2.substring(0, posO2));
				if(numO1 > numO2){
					return 1;
				}else if(numO1 < numO2){
					return -1;
				}
				return 0;
			}
		});
		
		for(String columnsData : columnsDataList){
			value = RequestUtils.getString(paramMap, columnsData, "");
			code = columnsData.substring("columns[".length());
			pos = code.indexOf(']');
			code = code.substring(0, pos);
			columnList.add(new CodeValuePair(code, value));
		}
		
		for(String orderColumn : orderColumnList){
			value = RequestUtils.getString(paramMap, orderColumn, "");
			value = columnList.get(Integer.valueOf(value)).getValue();
			orderByList.add(new CodeValuePair(value, ""));
		}
		
		for(String orderDir : orderDirList){
			value = RequestUtils.getString(paramMap, orderDir, "");
			code = orderDir.substring("order[".length());
			pos = code.indexOf(']');
			code = code.substring(0, pos);
			if(!"".equals(orderByList.get(Integer.valueOf(code)).getCode())){
				orderByList.get(Integer.valueOf(code)).setValue(value);
			}else{
//				orderByList.remove(Integer.valueOf(code).intValue());
				orderByList.remove(Integer.parseInt(code));
			}
		}
		/*Collections.sort(list);
		for (int i = 0; i < list.size(); i++) {
			String key = list.get(i);
			if (key.startsWith("[form][") && key.endsWith("][value]")
					&& !processedCondMap.containsKey(key)) {
				processedCondMap.put(key, "");
				value = RequestUtils.getString(paramMap, key, "");
				code = key.substring("[form][".length());
				code = code.substring(0, code.length() - "][value]".length());
				QueryCond cond = new QueryCond();
				cond.setName(code);
				cond.setValue(value);
				String shortKey = key.substring(0,
						key.length() - "[value]".length());
				cond.setDataType(RequestUtils.getString(paramMap, shortKey
						+ "[dataType]", "String"));
				cond.setQueryType(RequestUtils.getString(paramMap, shortKey
						+ "[queryType]", "begin with"));
				cond.setSecondValue(RequestUtils.getString(paramMap, shortKey
						+ "[secondValue]", ""));
				condList.add(cond);
			} else if (key.startsWith("columns[") && key.endsWith("][data]")) {
				value = RequestUtils.getString(paramMap, key, "");
				code = key.substring("columns[".length());
				pos = code.indexOf(']');
				code = code.substring(0, pos);
				columnList.add(new CodeValuePair(code, value));
			} else if (key.startsWith("order[") && key.endsWith("][column]")) {
				value = RequestUtils.getString(paramMap, key, "");
				value = columnList.get(Integer.valueOf(value)).getValue();
				orderByList.add(new CodeValuePair(value, ""));
			} else if (key.startsWith("order[") && key.endsWith("][dir]")) {
				value = RequestUtils.getString(paramMap, key, "");
				code = key.substring("order[".length());
				pos = code.indexOf(']');
				code = code.substring(0, pos);
				orderByList.get(Integer.valueOf(code)).setValue(value);
			}
		}*/
		processedCondMap.clear();

		// 拼装QueryString
		StringBuilder buf = new StringBuilder();
		buf.append(hql);

		List<Object> valueList = new ArrayList<Object>();
		if (values != null && values.length > 0) {
			valueList.addAll(Arrays.asList(values));
		}
		if (condList.size() > 0) {
			StringBuilder condBuf = new StringBuilder();
			int useCondCount = 0;
			for (int i = 0; i < condList.size(); i++) {
				QueryCond queryCond = condList.get(i);
				String queryType = queryCond.getQueryType().trim();
				String dataType = queryCond.getDataType();
				String queryValue = queryCond.getValue();
				if (StringUtils.isNotBlank(queryCond.getValue())) {
					condBuf.append(queryCond.getName());
					if ("equal".equalsIgnoreCase(queryType)) {
						condBuf.append(" = ?");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue));
					} else if ("not equal".equalsIgnoreCase(queryType)) {
						condBuf.append(" != ?");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue));
					} else if ("begin with".equalsIgnoreCase(queryType)) {
						condBuf.append(" like ?");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue) + "%");
					} else if ("not begin with".equalsIgnoreCase(queryType)) {
						condBuf.append(" not like ?");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue) + "%");
					} else if ("end with".equalsIgnoreCase(queryType)) {
						condBuf.append(" like ?");
						valueList.add("%"
								+ DataConvertUtils.toTypeValue(dataType,
										queryValue));
					} else if ("not end with".equalsIgnoreCase(queryType)) {
						condBuf.append(" not like ?");
						valueList.add("%"
								+ DataConvertUtils.toTypeValue(dataType,
										queryValue));
					} else if ("contain".equalsIgnoreCase(queryType)) {
						condBuf.append(" like ?");
						valueList.add("%"
								+ DataConvertUtils.toTypeValue(dataType,
										queryValue) + "%");
					} else if (" not contain".equalsIgnoreCase(queryType)) {
						condBuf.append(" not like ?");
						valueList.add("%"
								+ DataConvertUtils.toTypeValue(dataType,
										queryValue) + "%");
					} else if ("between".equalsIgnoreCase(queryType)) {
						boolean valueHasText = true;
						boolean secondValueHasText = true;

						if (queryCond.getValue() == null
								|| queryCond.getValue().length() == 0) {
							valueHasText = false;

						}
						if (queryCond.getSecondValue() == null
								|| queryCond.getSecondValue().length() == 0) {
							secondValueHasText = false;

						}
						if (valueHasText && secondValueHasText) {
							condBuf.append(" between ? and ? ");
							valueList.add(DataConvertUtils.toTypeValue(
									dataType, queryValue));
							valueList.add(DataConvertUtils.toTypeValue(
									dataType, queryCond.getSecondValue()));
						} else if (valueHasText && !secondValueHasText) {
							condBuf.append(" >= ? ");
							valueList.add(DataConvertUtils.toTypeValue(
									dataType, queryValue));
						} else if (!valueHasText && secondValueHasText) {
							condBuf.append(" <= ? ");
							valueList.add(DataConvertUtils.toTypeValue(
									dataType, queryCond.getSecondValue()));
						}

					} else if ("not between".equalsIgnoreCase(queryType)) {
						condBuf.append(" not between ? and ? ");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue));
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryCond.getSecondValue()));
					} else if ("is null".equalsIgnoreCase(queryType)) {
						condBuf.append(" is null ");
					} else if ("is not null".equalsIgnoreCase(queryType)) {
						condBuf.append(" is not null ");
					} else if ("is in".equalsIgnoreCase(queryType)) {
						condBuf.append(" in ? ");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue));
					} else if ("not in".equalsIgnoreCase(queryType)) {
						condBuf.append(" not in ? ");
						valueList.add(DataConvertUtils.toTypeValue(dataType,
								queryValue));
					} else {
						throw new IllegalArgumentException("QueryType ["
								+ queryType + "] not support!");
					}
					condBuf.append(" and ");
					useCondCount++;
				}
			}
			if (useCondCount > 0) {
				if (buf.indexOf(" where ") == -1) {
					buf.append(" where ");
				} else {
					buf.append(" and ");
				}
				buf.append(condBuf.substring(0,
						condBuf.length() - " and ".length()));
			}
		}

		if (orderByList.size() > 0) {
			StringBuilder orderByBuf = new StringBuilder();
			
			int useOrderByCount = 0;
			for (int i = 0; i < orderByList.size(); i++) {
				CodeValuePair codeValuePair = orderByList.get(i);
				if (StringUtils.isNotBlank(codeValuePair.getCode())) {
					Map<String,String> tableMap = findTableAndAliasFromHql(hql); 
					Iterator<String> aliasIterator = tableMap.keySet().iterator();
						while(aliasIterator.hasNext()){
							String alias = (String)aliasIterator.next();
							if (alias.length()==1) {
								String tableName = "";
								tableName = tableMap.get(alias);
								List<String> fieldsList= findTableFields(tableName);
								String orderBy = codeValuePair.getCode();
								int pointIndex = orderBy.indexOf('.');
								if (pointIndex!=-1){
									orderBy = orderBy.substring(0, pointIndex);
									for (String field: fieldsList) {
										if (field.equals(orderBy)) {
											codeValuePair.setCode(alias + "." + codeValuePair.getCode());
											break;
										}
									}
								}
							}
						}
					}
					orderByBuf.append(codeValuePair.getCode())
							.append(" ").append(codeValuePair.getValue());
					orderByBuf.append(',');
					useOrderByCount++;
				}
			

			if (useOrderByCount > 0) {
				buf.append(" order by ");
				buf.append(orderByBuf.substring(0, orderByBuf.length() - 1));
			}
		}
		// String userCode = paramMap.get("userCode")[0];
		// String userName = paramMap.get("userName")[0];
		// String validStatus = paramMap.get("validStatus")[0];
		// Finder finder = Finder.newInstance();
		// PrpDuser prpDuserTemple = finder.from(PrpDuser.class);
		// finder.where().get(prpDuserTemple.getUserCode()).likeIfExist(userCode);
		// finder.where().get(prpDuserTemple.getUserName()).likeIfExist(userName);
		// finder.where().get(prpDuserTemple.getValidStatus())
		// .likeIfExist(validStatus);
		// Order order = finder.order();
		// order.get(prpDuserTemple.getUserCode()).asc();
		String queryString = buf.toString();
		// System.out.println(genOrderString(paramMap));
		Object[] paramValues = new Object[valueList.size()];
		
		valueList.toArray(paramValues);

	    Page page = databaseDao.findPageByHql(queryString, start/length + 1, length, paramValues);
	    
	    long totalCount = page.getTotalCount();
	    
	    ResultPage<T> resultPage = new  ResultPage<T>(start, length, totalCount, page.getResult());
		return resultPage;
		
	}
	
	
	public static Map<String, String> findTableAndAliasFromHql(String hql) {
		Map<String, String> tableMap = new HashMap<String, String>();
		String poString = "";
		hql = hql.replaceAll(" [a|A][s|S] ", " ");
		if (hql.toLowerCase().indexOf(" where ") != -1) {//存在where
			poString = hql.substring(hql.toLowerCase().indexOf(" from ") + 5, hql
					.toLowerCase().indexOf(" where "));
		} else {
			if (hql.toLowerCase().indexOf(" group by ") != -1) {//不存在where 存在 group by 
				poString = hql.substring(hql.toLowerCase().indexOf(" from ") + 5, hql
						.toLowerCase().indexOf(" group by "));
			}else{
				if (hql.toLowerCase().indexOf(" order by ") != -1) {//不存在 group by 存在order by
					poString = hql.substring(hql.toLowerCase().indexOf(" from ") + 5, hql
							.toLowerCase().indexOf(" order by "));
				}else{
					poString = hql.substring(hql.toLowerCase().indexOf(" from ") + 5,
							hql.length());
				}
			}
		}
		if (poString.indexOf(',') != -1) {
			String[] poArray = poString.split(",");
			for (String po : poArray) {
				po = po.trim();
				String key = po.substring(po.indexOf(" "), po.length()).trim();
				String value = po.substring(0, po.indexOf(" "));
				tableMap.put(key, value);
			}
		} else {
			poString = poString.trim();
			if(poString.indexOf(' ') != -1){//有别名
				String key = poString.substring(poString.indexOf(' '),
						poString.length()).trim();
				String value = poString.substring(0, poString.indexOf(' '));
				tableMap.put(key, value);
			}else{//没有别名 则key为表名
				tableMap.put(poString, poString);
			}
		}
		return tableMap;
	}
	/**
	 * 获取表属性
	 * @param table
	 * @param alias
	 * @return
	 */
	public List<String> findTableFields(String table){ 
		findEntityName();
		List<String> fieldList = new ArrayList<String>();
		Class<?> classs = null;
		try {
			classs = Class.forName(entityMap.get(table));
		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
			 LOGGER.error(e.getMessage(),e);
		}
		
		Field[] fields = classs.getDeclaredFields();
		for (int i = 0; i < fields.length; i++) {
//			String typeName = fields[i].getType().getName();
				fieldList.add(fields[i].getName());
		}
		return fieldList;
	} 
	
	/**
	 * 获取所有实体名称
	 * @return
	 */
	public Map<String,String> findEntityName(){
		Map<String, ClassMetadata> map = sessionFactory.getAllClassMetadata();
		Iterator<String> it = map.keySet().iterator();
		while(it.hasNext()){
			String entityName = it.next();
			entityMap.put(entityName.substring(entityName.lastIndexOf('.') + 1, entityName.length()), entityName);
		}
		return entityMap;
	}

}
