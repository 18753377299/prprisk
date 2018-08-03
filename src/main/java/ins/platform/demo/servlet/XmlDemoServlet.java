package ins.platform.demo.servlet;

import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

import java.io.BufferedOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.thoughtworks.xstream.XStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
public class XmlDemoServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final Logger LOGGER = LoggerFactory.getLogger(XmlDemoServlet.class);
	private static final long serialVersionUID = 1L;
	private SysUserService sysUserService;
	
	public void init() throws ServletException {
		this.sysUserService = (SysUserService) WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext()).getBean("sysUserService");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String xml = request.getParameter("xml");
		String xmlData = "";
		BufferedOutputStream output = null;
		System.out.println("request_xml:"+xml);
		XStream xstream = new XStream();
		xstream.alias("SysUserVo", SysUserVo.class);
		SysUserVo prpDuser = (SysUserVo)xstream.fromXML(xml);
		prpDuser = sysUserService.findByUserCode(prpDuser.getUserCode());
		xmlData = xstream.toXML(prpDuser);
		String s = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
		xmlData = s + "\r\n" + xmlData;
		System.out.println("response_xmlData:"+xmlData);

		try {
			output = new BufferedOutputStream(response.getOutputStream());
			output.write(xmlData.getBytes("UTF-8"));
		} catch (IOException e) {
			throw e;
		} finally {
			try {
				output.close();
			} catch (Exception e) {
			     LOGGER.error(e.getMessage(),e);
				
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void destroy() {

	}

}