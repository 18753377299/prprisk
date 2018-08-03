/******************************************************************************
 * Copyright 2010-2011 the original author or authors.
 * CREATETIME : 2011-3-18 上午11:41:08
 ******************************************************************************/
package ins.platform.common.web.taglib;
import ins.platform.common.service.facade.CodeTranService;
import ins.platform.vo.SddCodeVo;
import java.io.IOException;
import java.util.Map;
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
 * 代码下拉选择<br>
 * 翻译结果返回为option的选项
 * 
 * @Copyright Copyright (c) 2011
 * @Company www.sinosoft.com.cn
 * @author ANDI
 * @since 2011-3-18 上午11:41:08
 */
public class CodeSelectTag extends SimpleTagSupport {

	private static final Logger log = LoggerFactory.getLogger(CodeSelectTag.class);

	private static final long serialVersionUID = -8204448901846380293L;
	private String type = null;// 类型 radio checkbox select
	private String codeType = null;// 代码类型
	private String clazz = "";// html class 属性
	private String lableType = null;// select框显示格式，name code-name
	private String value = null;// 默认值
	private String split = null;

	// html部分
	private String id = ""; // html id 属性
	private String name = "";// html name属性
	private String onclick = "";// 事件
	private String onchange = "";// 事件
	private String style = "";// html style 属性

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
		CodeTranService codeService = (CodeTranService) context
				.getBean("codeTranService");
		Map<String, SddCodeVo> typeMap = null;
		try {
			typeMap = codeService.findCodeDictTransMap(codeType);
		} catch (NullPointerException e) {
			// TODO: handle exception
			log.error("标签代码为在数据库中配置 " + codeType, e);
	
			servletContext.setAttribute("ex",e);
			throw e;
		}
		

		StringBuffer sb = new StringBuffer();
		if ("radio".equals(type)) {
			generateRadioHtml(sb, typeMap);
		} else if ("checkbox".equals(type)) {
			generateCheckBoxHtml(sb, typeMap);
		} else if ("select".equals(type)) {
			generateSelectHtml(sb, typeMap);
		}
		try {
			out.write(sb.toString());
		}catch (Exception e) {
			log.error("标签解析错误 " + codeType, e);
//			e.printStackTrace();
//			throw new DataVerifyException();
			try {
				throw e;
			} catch (Exception e1) {
				// TODO Auto-generated catch block
//				e1.printStackTrace();
				log.error(e1.getMessage());
			}
		}
	}

	private void generateSelectHtml(StringBuffer sb,
			Map<String, SddCodeVo> typeMap) {
		if (typeMap == null || typeMap.size() < 1){
			return;}
		String other = " " + getOnchange() + " " + getOnclick()
				+ " class='form-control " + clazz + "' " + getStyle();

		sb.append("<select   id='" + id + "' name='" + name + "' " + other
				+ " >");

		if (clazz == null || "".equals(clazz)
				|| (!clazz.contains("required") && !clazz.contains("must"))) {
			sb.append("<option value='' >请选择</option>");
		}

		for (String key : typeMap.keySet()) {
			SddCodeVo sddCode = typeMap.get(key);
			if (sddCode.getCode().equals(value)) {
				sb.append("<option selected='selected' value='"
						+ sddCode.getCode() + "'>");
			} else {
				sb.append("<option value='" + sddCode.getCode()
						+ "'>");
			}
			if ("code-name".equals(lableType)) {
//				sb.append(sddCode.getCode() + "-"
//						+ sddCode.getCnName());
				sb.append(sddCode.getCode());
				sb.append('-');
				sb.append(sddCode.getCnName());
			} else {
				sb.append(sddCode.getCnName());
			}
			sb.append("</option>");
		}
		sb.append("</select>");
	}

	private void generateCheckBoxHtml(StringBuffer sb,
			Map<String, SddCodeVo> typeMap) {
		if (typeMap == null || typeMap.size() < 1){
			return;}

		sb.append("<div id='" + id + "' >");
		for (String key : typeMap.keySet()) {
			SddCodeVo sddCode = typeMap.get(key);
			sb.append("<label class='checkbox-inline'>");
			String other = " " + getOnchange() + " " + getOnclick();

			if (value != null && value.contains(",")) {
				String[] defVals = value.split(",");
				for (String defVal : defVals) {
					if (sddCode.getCode().equals(defVal)) {
						other = other + " checked='checked' ";
						break;
					}
				}

			} else if (sddCode.getCode().equals(value)) {
				other = other + " checked='checked' ";
			}
			sb.append("<input type='checkbox' " + other + " name='" + name
					+ "' value='" + sddCode.getCode()
					+ "' class='" + clazz + "' " + getStyle() + " />");
			if ("code-name".equals(lableType)) {
//				sb.append(sddCode.getCode() + "-"
//						+ sddCode.getCnName());
				sb.append(sddCode.getCode());
				sb.append('-');
				sb.append(sddCode.getCnName());
			} else {
				sb.append(sddCode.getCnName());
			}
			sb.append("</label>");
		}
		sb.append("</div>");
	}

	private void generateRadioHtml(StringBuffer sb,
			Map<String, SddCodeVo> typeMap) {

		if (typeMap == null || typeMap.size() < 1){
			return;}
		sb.append("<div id='" + id + "' >");
		for (String key : typeMap.keySet()) {
			SddCodeVo sddCode = typeMap.get(key);
			sb.append("<label class='radio-inline'>");
			String other = " " + getOnchange() + " " + getOnclick();
			if (sddCode.getCode().equals(value)) {
				other = other + " checked='checked' ";
			}

			sb.append("<input type='radio' " + other + " name='" + name
					+ "' value='" + sddCode.getCode()
					+ "' class='" + clazz + "' " + getStyle() + " />");
			if ("code-name".equals(lableType)) {
//				sb.append(sddCode.getCode() + "-"
//						+ sddCode.getCnName());
				sb.append(sddCode.getCode());
				sb.append('-');
				sb.append(sddCode.getCnName());
			} else {
				sb.append(sddCode.getCnName());
			}
			sb.append("</label>");
		}
		sb.append("</div>");
	}

	/**
	 * @param lableType
	 *            要设置的 lableType。
	 */
	public void setLableType(String lableType) {
		this.lableType = lableType;
	}

	public void setValue(String value) {
		if (value == null || "".equals(value) || (value.trim().equals("null"))) {
			this.value = null;
		} else {
			this.value = value;
		}
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public String getCodeType() {
		return codeType;
	}

	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}

	public String getOnclick() {
		if (onclick == null || "".equals(onclick)
				|| (onclick.trim().equals("null"))) {
			return "";
		} else {
			return "onclick=" + onclick;
		}
	}

	public void setOnclick(String onclick) {
		this.onclick = onclick;
	}

	public String getOnchange() {
		if (onchange == null || "".equals(onchange)
				|| (onchange.trim().equals("null"))) {
			return "";
		} else {
			return "onchange=" + onchange;
		}
	}

	public void setOnchange(String onchange) {

		this.onchange = onchange;
	}

	public String getSplit() {
		return split;
	}

	public void setSplit(String split) {
		this.split = split;
	}

	public String getValue() {
		return value;
	}

	public String getLableType() {
		return lableType;
	}

	public String getStyle() {
		if (style == null || "".equals(style) || (style.trim().equals("null"))) {
			return " style='vertical-align:middle' ";
		} else {
			return " style='vertical-align:middle;" + style + ";' ";
		}
	}

	public void setStyle(String style) {
		this.style = style;
	}

}
