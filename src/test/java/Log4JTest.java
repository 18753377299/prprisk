
 
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.MDC; 

import org.apache.log4j.Logger;
import org.apache.log4j.NDC;

public class Log4JTest {
	public static void main(String[] args) { 
		Logger  log = Logger.getLogger(Log4JTest.class);
//		NDC.push("user===A");
		MDC.put("NAME", "John22");

		MDC.put("RequestNo", "RequestNo11");
		
		
		
		log.error("abc1");
	}
}
