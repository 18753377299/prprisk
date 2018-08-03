/******************************************************************************
 * Copyright 2010-2011 the original author or authors.
 * CREATETIME : 2011-3-18 上午11:41:08
 ******************************************************************************/
package ins.platform.common.web.taglib;
import ins.platform.menu.service.facade.MenuService;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
/**
 * 面包屑导航tag
 * @author Administrator
 *
 */
public class BreadCrumbTag extends SimpleTagSupport {
	private static final Logger log = LoggerFactory.getLogger(BreadCrumbTag.class);
	private static final long serialVersionUID = -8204448901846380293L;
	private String home = null;
	private String menuId = null;
	private String operate=null;
	/**
	 * @param cache
	 *            要设置的 cache。
	 */
	
	@Override
	public void doTag() throws JspException, IOException,NullPointerException{

		PageContext pageContext = (PageContext) this.getJspContext();
		ServletContext servletContext = pageContext.getServletContext();
		JspWriter out = pageContext.getOut();
		// spring 容器
		WebApplicationContext context = WebApplicationContextUtils
				.getRequiredWebApplicationContext(servletContext);
		// 操作对象
		MenuService menuService = (MenuService) context.getBean("menuService");
		StringBuffer h = new StringBuffer("");
		h.append("<li><i class='fa fa-dashboard'></i><a href='${ctx}/'>");
		h.append(home);
		h.append("</a></li>");
		String bread = menuService.findMenuPath(Long.parseLong(menuId),"");
		h.append(bread);
		if(operate!=null){
			String[] strs = operate.split(",");
			for(int i=0;i<strs.length;i++){
				h.append("<li><i class='fa fa-table'></i>");
				h.append(strs[i]);
				h.append("</li>");
			}
		}
		try {
			out.write(h.toString());
		 }catch (Exception e) {
			log.error("标签解析错误 " + h.toString(), e);
	//		e.printStackTrace();
//    	throw new DataVerifyException();
			try {
				throw e;
			} catch (Exception e1) {
				// TODO Auto-generated catch block
//				e1.printStackTrace();
				log.error(e1.getMessage());
			}
		}
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getOperate() {
		return operate;
	}
	public void setOperate(String operate) {
		this.operate = operate;
	}
	
}
