package ins.platform.common.web.action;

import ins.framework.exception.BusinessException;

import java.util.HashMap;
import java.util.Map;
import org.springframework.dao.DataIntegrityViolationException;

public class ExceptionHandle {
	final private static String EX_NAME = "EX_NAME";
	final private static String EX_MAIN = "EX_MAIN";
	final private static String EX_MESSAGE = "EX_MESSAGE";
	public static Map<String,Object> callBackExceptionCasuse(Exception e){
		Map<String,Object> map = new HashMap<String,Object>();
		if(BusinessException.class.isInstance(e)){
			BusinessException businessEx = (BusinessException) e;
			map.put(EX_NAME,"Business Exception");
			map.put(EX_MAIN, businessEx.getCauseList());
			map.put(EX_MESSAGE, businessEx.getMessage());
		}
		else if(DataIntegrityViolationException.class.isInstance(e)){
			DataIntegrityViolationException vioEx = (DataIntegrityViolationException) e;
			map.put(EX_NAME,"ConstraintViolationException");
			map.put(EX_MAIN, "重复的主键");
			map.put(EX_MESSAGE, vioEx.getMessage());
		}
		else{
			map.put(EX_NAME,e.getClass().getName());
			map.put(EX_MAIN,e.getClass().getName());
			map.put(EX_MESSAGE, e.getLocalizedMessage());
		}
		return map;
	}
}
