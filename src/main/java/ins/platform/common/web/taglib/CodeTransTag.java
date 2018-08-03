/******************************************************************************
 * CREATETIME : 2009-11-24 09:50:24
 * FILE       : com.sinosoft.webquery.ui.taglib.DataBaseCode
 * MODIFYLIST ：Name       Date            Reason/Contents
 *          --------------------------------------------------------------------
 *
 ******************************************************************************/
package ins.platform.common.web.taglib;

import ins.platform.common.service.facade.CodeTranService;
import ins.platform.vo.SddCodeVo;

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
 * 根据数据库读取代码翻译
 * 
 * @author
 * @modified: ANDI(2009-11-24 09:50:24): <br>
 */

public class CodeTransTag extends SimpleTagSupport {
	private static final long serialVersionUID = 5362198234663725704L;
	private String codeType;
	private String codeCode;
	private String showName;// 默认显示名称，fullName 表示显示全称
	private String nullVal = "";// 代码为空时显示的内容
	private String split;// 代码间的分隔符
	private static final Logger log = LoggerFactory.getLogger(CodeSelectTag.class);

	@Override
	public void doTag() throws JspException {
		PageContext pageContext = (PageContext) this.getJspContext();
		ServletContext servletContext = pageContext.getServletContext();
		JspWriter out = pageContext.getOut();
		// spring 容器
		WebApplicationContext context = WebApplicationContextUtils
				.getRequiredWebApplicationContext(servletContext);
		// 操作对象

		try {
			if (codeCode == null || "".equals(codeCode)) {
				out.write(nullVal);
				return;
			}
			if (codeType == null || "".equals(codeType)) {
				out.write(codeCode);
				return;
			}

			StringBuffer rtValue = new StringBuffer();
			CodeTranService transService = (CodeTranService) context
					.getBean("codeTranService");
			Map<String, SddCodeVo> codeTypeMap = transService
					.findCodeDictTransMap(codeType);
			if (codeTypeMap == null) {
				rtValue.append(codeCode);
				out.write(rtValue.toString());
				return;
			}
			String[] codeCodes = null;
			if (split != null && !"".equals(split)) {
				codeCodes = codeCode.split(split);
			} else {
				codeCodes = new String[1];
				codeCodes[0] = codeCode;
			}
			String rtCodeName = null;
			SddCodeVo dictPo = null;
			for (int i = 0; i < codeCodes.length; i++) {
				dictPo = codeTypeMap.get(codeCodes[i]);
				if (dictPo != null) {
					rtCodeName = dictPo.getCnName();
					if (showName != null && showName.equals("fullName")) {
						rtCodeName = dictPo.getFullName();
					}
					else if(showName != null && showName.equals("engName")){
						rtCodeName = dictPo.getEngName();
					}
				}

				if (rtCodeName == null) {
					rtValue.append(codeCodes[i]);
				} else {
					rtValue.append(rtCodeName);
				}
				// 使用","分隔
				if (i < codeCodes.length - 1) {
					rtValue.append(',');
				}
			}
			out.write(rtValue.toString());
		}catch (Exception e) {
			log.error("标签解析错误 " + codeType, e.getMessage());
//			e.printStackTrace();
			throw new JspException(e.getMessage(),e);
		}
	}

	/**
	 * @param codeType
	 *            要设置的 codeType。
	 */
	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}

	/**
	 * @param codeCode
	 *            要设置的 codeCode。
	 */
	public void setCodeCode(String codeCode) {
		this.codeCode = codeCode;
	}

	public void setNullVal(String nullVal) {
		this.nullVal = nullVal;
	}

	public void setSplit(String split) {
		this.split = split;
	}

	public void setShowName(String showName) {
		this.showName = showName;
	}
}
