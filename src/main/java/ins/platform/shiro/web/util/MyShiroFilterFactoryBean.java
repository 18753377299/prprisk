package ins.platform.shiro.web.util;

import java.util.Map;

import javax.servlet.Filter;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;

public class MyShiroFilterFactoryBean extends ShiroFilterFactoryBean {
	
	public MyShiroFilterFactoryBean(){
		super();
	}
	
	@Override
	public void setFilters(Map<String, Filter> filters) {
		super.setFilters(filters);
	}

	@Override
	public Object getObject() throws Exception {
		return super.createInstance();
	}
	
	@Override
	public boolean isSingleton() {
        return false;
    }
	
}
