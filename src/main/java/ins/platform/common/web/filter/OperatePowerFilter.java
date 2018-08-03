package ins.platform.common.web.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

public class OperatePowerFilter extends OncePerRequestFilter {
 
	@Override
	protected void doFilterInternal(HttpServletRequest request,
			HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {

		Boolean power = initSession((HttpServletRequest) request,
				(HttpServletResponse) response);
		if (power) {// 不执行过滤,继续
			filterChain.doFilter(request, response);
		} else {
			request.getRequestDispatcher("/saa/list")
					.forward(request, response);

		}
	}

	private Boolean initSession(HttpServletRequest request,
			HttpServletResponse response) throws ServletException {
		Boolean power = false;
		// Boolean flag = true;// 删除和上传操作标志
		// // 不过滤的url
		// String[] notFilter = new String[] { "/login", "/index", "/search",
		// "/decorator", "/form" };
		// // 请求的url
		// String url = request.getRequestURI();
		// url = url.replaceAll(request.getContextPath() + "/", "/");
		// if (url.lastIndexOf("?") != -1) {// 处理请求带参数的链接
		// url = url.substring(0, url.indexOf("?"));
		// }
		// System.out.println("url : " + url);
		// for (String s1 : notFilter) {
		// if (url.indexOf(s1) != -1 || "/".equals(url)
		// || url.lastIndexOf(".") != -1) {
		// // 如果url中包含不过滤的url，则不进行过滤
		// power = true;
		// break;
		// } else {
		// power = false;
		// }
		// }
		// // 禁止删除和上传操作
		// String[] filter = new String[] { "del", "uploadfile" };
		// for (String s2 : filter) {
		// if (url.toLowerCase().indexOf(s2) != -1) {
		// flag = false;
		// break;
		// }
		// }
		// if (power) {
		// return power;
		// } else {
		// if (!flag) {
		// power = false;
		// String strInput = "你没有权限";
		// StringBuffer output = new StringBuffer();
		// System.out.println("\"" + strInput + "\" 的utf8编码：");
		// for (int i = 0; i < strInput.length(); i++) {
		// output.append("\\u"
		// + Integer.toString(strInput.charAt(i), 16));
		// }
		// throw new ServletException(output.toString());
		// } else {
		// String queryString = "SELECT o FROM SaaUrlTask o where o.url = ? ";
		// List<SaaUrlTask> list = saaUrlTaskService.findSaaUrlTaskList(
		// queryString, url);
		// if (list == null || list.size() == 0) {
		// return power;
		// } else if (list.size() == 1) {
		// SaaUrlTask saaUrlTask = list.get(0);
		// String taskCode = saaUrlTask.getTaskCode();
		// Session session = SecurityUtils.getSubject().getSession();
		// String userCode = (String) session.getAttribute("userCode");
		// power = saaPowerService.checkPower(userCode, taskCode);
		// System.out.println("******url******" + url
		// + "****taskCode****" + taskCode + "****power****"
		// + power);
		// }
		// }
		// }
		return power;
	}
}
