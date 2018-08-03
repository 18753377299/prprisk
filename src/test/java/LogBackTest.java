
 
import org.apache.log4j.NDC;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;

public class LogBackTest {
	public static void main(String[] args) { 
		Logger log = LoggerFactory.getLogger(LogBackTest.class);
//		NDC.push("user===A");
		MDC.put("NAME", "John");

		MDC.put("RequestNo", "RequestNo");
 
		
		log.error("abcaa");
	}
}
