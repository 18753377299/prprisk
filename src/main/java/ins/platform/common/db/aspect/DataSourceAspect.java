package ins.platform.common.db.aspect;

import java.lang.reflect.Method;
import java.util.Stack;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.reflect.MethodSignature;

import ins.platform.common.db.annotation.DataSource;
import ins.platform.common.db.datasource.DataSources;
import ins.platform.common.db.datasource.holder.DynamicDataSourceHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DataSourceAspect {
	private static final Logger LOGGER = LoggerFactory.getLogger(DataSourceAspect.class);

	private DataSources dataSources;
	
	private static final Stack<String> stack = new Stack<String>();

	public void before(JoinPoint point) {
		Object target = point.getTarget();
		String method = point.getSignature().getName();

		Class<?>[] classz = target.getClass().getInterfaces();
		Class<?>[] parameterTypes = ((MethodSignature) point.getSignature()).getMethod().getParameterTypes();
		try {
			Method m = classz[0].getMethod(method, parameterTypes);
			if (m != null && m.isAnnotationPresent(DataSource.class)) {
				DataSource data = m.getAnnotation(DataSource.class);
				String lastDataSource = DynamicDataSourceHolder.getDataSouce();
				if(lastDataSource != null){
					stack.push(lastDataSource);
					if(data.value() == null){
						DynamicDataSourceHolder.putDataSource(lastDataSource);
						stack.push(lastDataSource);
						return;
					}
				}
				if (data.value() == null) {
					String[] sources = dataSources.getDataSources().get("master");
					int random = (int) (Math.random() * sources.length);
					DynamicDataSourceHolder.putDataSource(sources[random]);
					stack.push(sources[random]);
				} else {
					String[] sources = dataSources.getDataSources().get(data.value());
					if (sources == null || sources.length == 0) {
						String[] masterSources = dataSources.getDataSources().get("master");
						int random = (int) (Math.random() * masterSources.length);
						DynamicDataSourceHolder.putDataSource(masterSources[random]);
						stack.push(sources[random]);
					} else {
						int random = (int) (Math.random() * sources.length);
						DynamicDataSourceHolder.putDataSource(sources[random]);
						stack.push(sources[random]);
					}
				}
			}

		} catch (Exception e) {
			LOGGER.error(e.getMessage(),e);
			
		}
	}
	
	public void after(JoinPoint point) {
		Object target = point.getTarget();
		String method = point.getSignature().getName();

		Class<?>[] classz = target.getClass().getInterfaces();
		Class<?>[] parameterTypes = ((MethodSignature) point.getSignature()).getMethod().getParameterTypes();
		try {
			Method m = classz[0].getMethod(method, parameterTypes);
			if(m != null && m.isAnnotationPresent(DataSource.class)){
				if(!stack.isEmpty()){
					stack.pop();
				}
				if(!stack.isEmpty()) {
					DynamicDataSourceHolder.putDataSource(stack.pop());
				} else {
					DynamicDataSourceHolder.putDataSource(null);
				}
			}
		} catch (Exception e) {
			LOGGER.error(e.getMessage(),e);
		}
	}

	public void setDataSources(DataSources dataSources) {
		this.dataSources = dataSources;
	}

}
