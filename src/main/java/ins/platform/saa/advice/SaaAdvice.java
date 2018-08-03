package ins.platform.saa.advice;

import ins.framework.common.KeyValueVo;
import ins.platform.saa.service.facade.SaaDataPowerService;

import java.lang.reflect.Method;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 业务权限Advice
 */
public class SaaAdvice implements MethodInterceptor {
//	private static final Logger logger = LoggerFactory.getLogger(SaaAdvice.class);
	@Autowired
	SaaDataPowerService saaDataPowerService;
	ThreadLocal<Boolean> threadLocal = new ThreadLocal<Boolean>();

	public Object invoke(MethodInvocation invocation) throws Throwable {
		Object[] args = invocation.getArguments();
		Method method = invocation.getMethod();
		// 非增强类，添加权限参数
		int hqlNum = 0;
		int argsNum = 0;
		if(method.getName().indexOf("Hql") != -1){
			if ("findRangeByHql".equals(method.getName())) {
				hqlNum = 1;
				argsNum = 4;
			} else if ("findAllByHql".equals(method.getName())) {
				if(args.length == 2){
					hqlNum = 0;
					argsNum = 1;
				}else if(args.length == 3){
					hqlNum = 1;
					argsNum = 2;
				}
			} else if ("findTopByHql".equals(method.getName())) {
				hqlNum = 1;
				argsNum = 3;
			}else if ("findUniqueByHql".equals(method.getName())) {
				hqlNum = 1;
				argsNum = 2;
			}else if ("findPageByHql".equals(method.getName())) {
				if(args.length == 4){
					hqlNum = 0;
					argsNum = 3;
				}else if(args.length == 5){
					hqlNum = 1;
					argsNum = 4;
				}
			}

			Object[] object = (Object[]) args[args.length - 1];
			KeyValueVo keyValueVo = saaDataPowerService.processFind(
					(String) args[hqlNum], object);
			invocation.getArguments()[hqlNum] = keyValueVo.getKey();
			invocation.getArguments()[argsNum] = keyValueVo.getValue();

		}
		
		Object result = invocation.proceed();
		return result;
	}

}
