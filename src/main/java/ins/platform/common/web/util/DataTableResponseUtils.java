package ins.platform.common.web.util;

import ins.framework.web.util.ResponseUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
//import org.slf4j.Logger;

import com.alibaba.fastjson.JSONObject;

/**
 * 
 * DataTables工具类，用于输出DataTables所需的对象
 * 
 */
public class DataTableResponseUtils extends ResponseUtils {
//	private static Logger logger = LoggerFactory.getLogger(DataTableResponseUtils.class);	
	public static JSONObject toSpcDataTableObject(List<Map<String, Object>> list){
		List<Map<String, Object>> dataList = new ArrayList<Map<String,Object>>();
		for(Map<String, Object> map : list){
			Map<String, Object> dataMap = new HashMap<String, Object>(list.size());
			for(Iterator<String> iter = map.keySet().iterator(); iter.hasNext();){
				String key = iter.next();
				Object value = map.get(key); 
				if (key.indexOf('.') > -1) {
					String[] arrArg = StringUtils.split(key, '.');
					Map<String, Object> upperMap = dataMap;
					Map<String, Object> currentMap = null;
					for (int j = 0; j < arrArg.length - 1; j++) {
						String mapKey = arrArg[j];
						currentMap = (Map<String, Object>) upperMap.get(mapKey);
						if (currentMap == null) {
							currentMap = new HashMap<String, Object>();
							upperMap.put(mapKey, currentMap);
						}
						upperMap = currentMap;
					}// end for
					if (currentMap != null && value != null) {
						String name = arrArg[arrArg.length - 1];
						// 日期修正
						if (value instanceof java.util.Date) {
							value = new java.sql.Timestamp(
									((java.util.Date) value).getTime());
						}
						currentMap.put(name, fixValue(value));
					}
				} else {
					// 日期修正
					if (value instanceof java.util.Date) {
						value = new java.sql.Timestamp(
								((java.util.Date) value).getTime());
					}
					dataMap.put(key, fixValue(value));
				}// end if
			}
			dataList.add(dataMap);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("data", dataList);
		return jsonObject;
	}
}
