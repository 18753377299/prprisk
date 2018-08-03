package ins.platform.demo.web.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.thoughtworks.xstream.XStream;

import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.demo.utils.HttpClientUtils;
import ins.platform.sdd.service.facade.SddService;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.SysUserVo;

/**
 * httpClient演示说明Action
 */
@Controller
@RequestMapping("/httpClient")
public class HttpClientAction extends BaseAjaxAction {
	@Autowired
	SysUserService sysUserService;
	@Autowired
	SddService sddService;
	/**
	 * 进入HttpClient.jsp页面
	 */
	@RequestMapping("/httpClient")
	public String list() {
		return "demo/httpClient/HttpClient";
	}
	
	/**
	 * 点击doget和dopost时
	 */
	@RequestMapping("/user")
	@ResponseBody
	public AjaxResult findUser(HttpServletRequest request) throws Exception{
		String userCode = request.getParameter("userCode");
		//返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setData(JSON.toJSONString(sysUserService.findByUserCode(userCode)));
		return ajaxResult;
	}
	
	/**
	 * 点击xmlDemo
	 */
	@RequestMapping("/xmlTest/{userCode}")
	@ResponseBody
	public AjaxResult xmlTest(@PathVariable(value = "userCode") String userCode) throws Exception{
//		String sddCode = "httpClient.host";
//		String httpClientUrl = sddService.findAppConfCodeByCode(sddCode).getValue();
		String httpClientUrl = "http://localhost:8090/platform/";
		String url = httpClientUrl + "xmlDemoServlet";
		
		SysUserVo sysUserVo = new SysUserVo();
		sysUserVo.setUserCode(userCode);
		XStream xStream = new XStream();
		xStream.alias("SysUserVo", SysUserVo.class);
		String xml = xStream.toXML(sysUserVo);
		
		HttpClientUtils httpClient = new HttpClientUtils();
		httpClient.setCharset("UTF-8");
		List<NameValuePair> parameters = new ArrayList<NameValuePair>();
		parameters.add(new BasicNameValuePair("xml", xml));
		String responseString = httpClient.doPost(url, parameters);
		//String responseString = httpClient.doGet(url);
		//URL url1 = new URL(url+"?xml=<SysUserVo><userCode>admin</userCode></SysUserVo>");
		//String responseString = httpClient.doGet(url1.getiurl1.getPath()+url1.getQuery());
		
//		XStream xstream = new XStream();
//		xstream.alias("SysUserVo", SysUserVo.class);
//		SysUserVo prpDuser = (SysUserVo)xstream.fromXML(xml);
//		prpDuser = sysUserService.findByUserCode(prpDuser.getUserCode());
//		xmlData = xstream.toXML(prpDuser);
		
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setData(responseString);
		return ajaxResult;
	}
	
	

}
