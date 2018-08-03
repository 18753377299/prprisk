package ins.platform.common.service.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ins.framework.cache.CacheManager;
import ins.framework.cache.CacheService;
import ins.framework.dao.database.DatabaseDao;
import ins.framework.lang.Datas;
import ins.framework.rpc.annotation.Rpc;
import ins.platform.common.service.facade.CodeTranService;
import ins.platform.schema.SddCode;
import ins.platform.schema.SysTransConfig;
import ins.platform.vo.SddCodeVo;
@Rpc
@Service(value = "codeTranService")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class CodeTranServiceSpringImpl implements CodeTranService {

	private static CacheService cacheManager = CacheManager
			.getInstance("T_QryTrans_Map");

	@Autowired
	DatabaseDao databaseDao;
	@Autowired
	private SessionFactory sessionFactory;
	private Map<String,String> entityMap = new HashMap<String, String>();
	/**
	 * 代码翻译
	 * 
	 * @param codeType
	 * @param code
	 * @return
	 * @modified: ☆hezheng(May 9, 2014 4:35:25 PM): <br>
	 */
	public String transCode(String codeType, String code) {

		String codeName = code;
		Map<String, String> codeMap = findCodeNameMap(codeType);
		if (codeMap == null){
			return codeName;}

		codeName = codeMap.get(code);
		if (codeName == null || "".equals(codeName)){
			codeName = code;}
		return codeName;
	}

	/**
	 * 获取类型的所有翻译
	 * 
	 * @param transType
	 * @return
	 * @modified: ☆hezheng(May 9, 2014 4:40:45 PM): <br>
	 */

	public Map<String, String> findCodeNameMap(String transType) {
		Map<String, String> codeNameMap = null;
		// 缓存处理
		codeNameMap = (Map<String, String>) cacheManager.getCache(transType
				+ "_str");

		if (codeNameMap == null || codeNameMap.size() < 1) {
			List<SddCode> dictPoList = null;
			codeNameMap = new LinkedHashMap<String, String>();
			// 优先查询字典表
			
			String queryString = "";
			if (transType.indexOf(',') > 0) {
				String[] str = transType.split(",");
				switch (str.length) {
					case 2 :
						queryString = "from SddCode s where validStatus = ? and s.sddType.type in (?,?)";
						dictPoList = databaseDao.findAllByHql(SddCode.class, queryString, "1",str[0],str[1]);
						break;
					case 3 :
						queryString = "from SddCode s where validStatus = ? and s.sddType.type in (?,?,?)";
						dictPoList = databaseDao.findAllByHql(SddCode.class, queryString, "1", str[0],str[1],str[2]);
						break;
					case 4 :
						queryString = "from SddCode s where validStatus = ? and s.sddType.type in (?,?,?,?)";
						dictPoList = databaseDao.findAllByHql(SddCode.class, queryString, "1", str[0],str[1],str[2],str[3]);
						break;
					default :
						queryString = "from SddCode s where validStatus = ? and s.sddType.type in (?,?,?,?,?)";
						dictPoList = databaseDao.findAllByHql(SddCode.class, queryString, "1", str[0],str[1],str[2],str[3],str[4]);
				}
			} else {
				queryString = "from SddCode s where validStatus = ? and s.sddType.type = ? order by serialNo";
				dictPoList = databaseDao.findAllByHql(SddCode.class, queryString, "1",transType);
			}

			for (SddCode po : dictPoList) {
				codeNameMap.put(po.getCode(), po.getCnName());
			}

			if (codeNameMap.size() < 1) {
				SysTransConfig transCfg = databaseDao.findByPK(SysTransConfig.class, transType);
//				Class clazz = Class.forName("ins.platform.schema." + transCfg.getSelectTable());
				Class clazz;
				try {
					entityMap = this.findEntityName();
					clazz = Class.forName(entityMap.get(transCfg.getSelectTable()));
				} catch (ClassNotFoundException e) {
					return null;
				}

				String selectCode = transCfg.getSelectCode();
				String selectName = transCfg.getSelectName();

				String fieldCodeMethodName = getFieldMethodName(selectCode);
				String fieldNameMethodName = getFieldMethodName(selectName);
				System.out.println(selectCode + "," + fieldCodeMethodName);

				String query = "from " + transCfg.getSelectTable() + " where " + transCfg.getSelectWhere() + " order by " + transCfg.getOrderBy();
				
				System.out.println("queryString:" + query);
				
				List<Object> objList = new ArrayList<Object>();
				
				if (transCfg.getPararmValue() != null
						&& transCfg.getPararmValue().contains(",")) {
					String[] str = transCfg.getPararmValue().split(",");
					switch (str.length) {
						case 2 :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1]);
							break;
						case 3 :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1],str[2]);
							break;
						case 4 :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1],str[2],str[3]);
							break;
						default :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1],str[2],str[3],str[4]);
					}
				} else if (transCfg.getPararmValue() != null) {
					objList = databaseDao.findAllByHql(clazz, query,transCfg.getPararmValue());
				}

				for (Object result : objList) {
					String code;
					String name;
					try {
						code = (String) clazz.getMethod(fieldCodeMethodName).invoke(result);
						name = (String) clazz.getMethod(fieldNameMethodName).invoke(result);
					} catch (Exception e) {
						return null;
					}
					codeNameMap.put(code, name);
				}
			}
			cacheManager.putCache(transType + "_str", codeNameMap);
		}

		return codeNameMap;
	}

	/**
	 * 获取类型的所有翻译
	 * 
	 * @param transType
	 * @return
	 * @modified: ☆hezheng(May 9, 2014 4:40:45 PM): <br>
	 */
	public Map<String, SddCodeVo> findCodeDictTransMap(String transType) {
		// 缓存处理
		Map<String, SddCodeVo> codeDictMap = (Map<String, SddCodeVo>) cacheManager
				.getCache(transType + "_obj");

		if (codeDictMap == null || codeDictMap.size() < 1) {
			List<SddCode> dictList = null;
			codeDictMap = new LinkedHashMap<String, SddCodeVo>();
			String queryString = "";
			if (transType.indexOf(',') > 0) {
				String[] str = transType.split(",");
				switch (str.length) {
					case 2 :
						queryString = "from SddCode where sddType.type in (?,?)";
						dictList = databaseDao.findAllByHql(SddCode.class, queryString, str[0],str[1]);
						break;
					case 3 :
						queryString = "from SddCode where sddType.type in (?,?,?)";
						dictList = databaseDao.findAllByHql(SddCode.class, queryString, str[0],str[1],str[2]);
						break;
					case 4 :
						queryString = "from SddCode where sddType.type in (?,?,?,?)";
						dictList = databaseDao.findAllByHql(SddCode.class, queryString, str[0],str[1],str[2],str[3]);
						break;
					default :
						queryString = "from SddCode where sddType.type in (?,?,?,?,?)";
						dictList = databaseDao.findAllByHql(SddCode.class, queryString, str[0],str[1],str[2],str[3],str[4]);
				}
			} else {
				queryString = "from SddCode where sddType.type = ? order by serialNo";
				dictList = databaseDao.findAllByHql(SddCode.class, queryString,transType);
			}
			ArrayList<SddCodeVo> vos = new ArrayList<SddCodeVo>();
			for (SddCode po : dictList) {
				SddCodeVo vo = new SddCodeVo();
				Datas.copySimpleObjectToTargetFromSource(vo,po);
				vos.add(vo);
			}
			
			for (SddCodeVo vo : vos) {
				codeDictMap.put(vo.getCode(), vo);
			}

			if (codeDictMap.size() < 1) {
				SysTransConfig transCfg = databaseDao.findByPK(SysTransConfig.class, transType);
//				Class clazz = Class.forName("ins.platform.schema." + transCfg.getSelectTable());
				Class clazz;
				if(transCfg==null){
					throw new NullPointerException("请先配置"+transType);
				}
				try {
					entityMap = this.findEntityName();
					clazz = Class.forName(entityMap.get(transCfg.getSelectTable()));
				} catch (ClassNotFoundException e) {
					return null;
				}

				String selectCode = transCfg.getSelectCode();
				String selectName = transCfg.getSelectName();

				String fieldCodeMethodName = getFieldMethodName(selectCode);
				String fieldNameMethodName = getFieldMethodName(selectName);

				String query = "from " + transCfg.getSelectTable() + " where " + transCfg.getSelectWhere() + " order by " + transCfg.getOrderBy();
				List<Object> objList = null;
				
				if (transCfg.getPararmValue() != null
						&& transCfg.getPararmValue().contains(",")) {
					String[] str = transCfg.getPararmValue().split(",");
					switch (str.length) {
						case 2 :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1]);
							break;
						case 3 :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1],str[2]);
							break;
						case 4 :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1],str[2],str[3]);
							break;
						default :
							objList = databaseDao.findAllByHql(clazz, query,str[0],str[1],str[2],str[3],str[4]);
					}
				} else if (transCfg.getPararmValue() != null) {
					objList = databaseDao.findAllByHql(clazz, query,transCfg.getPararmValue());
				}

				for (Object result : objList) {
					String code;
					String name;
					try {
						code = (String) clazz.getMethod(fieldCodeMethodName).invoke(result);
						name = (String) clazz.getMethod(fieldNameMethodName).invoke(result);
					} catch (Exception e) {
						return null;
					}
					SddCodeVo codeDictVo = new SddCodeVo();
					codeDictVo.setCnName(name);
					codeDictVo.setFullName(name);
					codeDictMap.put(code, codeDictVo);
				}
			}

			cacheManager.putCache(transType + "_obj", codeDictMap);
		}

		return codeDictMap;
	}

	/**
	 * 将属性名拼装为 get方法
	 * 
	 * @param fieldName
	 * @return
	 * @modified: ☆hezheng(Mar 19, 2014 6:19:24 PM): <br>
	 */
	private String getFieldMethodName(String fieldName) {
		String firstLetter = fieldName.substring(0, 1);
		return "get" + firstLetter.toUpperCase() + fieldName.substring(1);
	}
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
