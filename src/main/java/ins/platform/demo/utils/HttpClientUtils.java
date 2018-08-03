package ins.platform.demo.utils;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.commons.io.IOUtils;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.auth.params.AuthPNames;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.AuthPolicy;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

//import com.alibaba.fastjson.JSON;

@SuppressWarnings("deprecation")
public class HttpClientUtils {

	private static final Logger logger = LoggerFactory
			.getLogger(HttpClientUtils.class);

	/** 连接超时时间（默认3秒 3000ms） 单位毫秒（ms） */
	private int connectionTimeout = 3000;

	/** 读取数据超时时间（默认30秒 30000ms） 单位毫秒（ms） */
	private int soTimeout = 30000;

	/** 代理主机名 */
	private String proxyHost;

	/** 代理端口 */
	private int proxyPort;

	/** 代理主机用户名 */
	private String proxyUser;

	/** 代理主机密码 */
	private String proxyPwd;

	/** 代理主机域 */
	private String proxyDomain;

	/** 字符集设置，默认UTF-8 */
	private String charset = "UTF-8";

	private Header[] httpsCookieHeaders;

	public String getProxyUser() {
		return proxyUser;
	}

	public void setProxyUser(String proxyUser) {
		this.proxyUser = proxyUser;
	}

	public String getProxyPwd() {
		return proxyPwd;
	}

	public void setProxyPwd(String proxyPwd) {
		this.proxyPwd = proxyPwd;
	}

	public String getProxyDomain() {
		return proxyDomain;
	}

	public void setProxyDomain(String proxyDomain) {
		this.proxyDomain = proxyDomain;
	}

	public int getConnectionTimeout() {
		return connectionTimeout;
	}

	public void setConnectionTimeout(int connectionTimeout) {
		this.connectionTimeout = connectionTimeout;
	}

	public String getProxyHost() {
		return proxyHost;
	}

	public void setProxyHost(String proxyHost) {
		this.proxyHost = proxyHost;
	}

	public int getProxyPort() {
		return proxyPort;
	}

	public void setProxyPort(int proxyPort) {
		this.proxyPort = proxyPort;
	}

	public int getSoTimeout() {
		return soTimeout;
	}

	public void setSoTimeout(int soTimeout) {
		this.soTimeout = soTimeout;
	}

	public String getCharset() {
		return charset;
	}

	public void setCharset(String charset) {
		this.charset = charset;
	}

	private static X509TrustManager tm = new X509TrustManager() {
		public void checkClientTrusted(X509Certificate[] xcs, String string)
				throws CertificateException {
		}

		public void checkServerTrusted(X509Certificate[] xcs, String string)
				throws CertificateException {
		}

		public X509Certificate[] getAcceptedIssuers() {
//			return null;
			X509Certificate[] certificate=new X509Certificate[100];
			return certificate ;
		}
	};

	/**
	 * 获取一个针对http的HttpClient
	 */
	private HttpClient getHttpClient()// boolean useHttps
			throws KeyManagementException, NoSuchAlgorithmException {
		HttpParams httpParams = new BasicHttpParams();
		// 设置代理
		if (!StringUtils.isEmpty(proxyHost)) {
			HttpHost proxy = new HttpHost(proxyHost, proxyPort);
			httpParams.setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
		}

		// 设置超时时间
		httpParams.setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT,
				connectionTimeout);
		httpParams.setParameter(CoreConnectionPNames.SO_TIMEOUT, soTimeout);
		DefaultHttpClient httpclient = new DefaultHttpClient();
		httpclient.setParams(httpParams);
		// 代理需要认证
		if (proxyUser != null) {
			if (proxyDomain != null) {// NTLM认证模式
				httpclient.getAuthSchemes().register("ntlm",
						new NTLMSchemeFactory());
				httpclient.getCredentialsProvider().setCredentials(
						AuthScope.ANY,
						new NTCredentials(proxyUser, proxyPwd, proxyHost,
								proxyDomain));
				List<String> authpref = new ArrayList<String>();
				authpref.add(AuthPolicy.NTLM);
				httpclient.getParams().setParameter(
						AuthPNames.TARGET_AUTH_PREF, authpref);
			} else {// BASIC模式
				CredentialsProvider credsProvider = new BasicCredentialsProvider();
				credsProvider.setCredentials(
						new AuthScope(proxyHost, proxyPort),
						new UsernamePasswordCredentials(proxyUser, proxyPwd));
				httpclient.setCredentialsProvider(credsProvider);
			}
		}
		httpclient.addRequestInterceptor(new HttpRequestInterceptor() {
			public void process(final HttpRequest request,
					final HttpContext context) throws HttpException,
					IOException {
				if (!request.containsHeader("Accept")) {
					request.addHeader("Accept", "*/*");
				}
				if (request.containsHeader("User-Agent")) {
					request.removeHeaders("User-Agent");
				}
				if (request.containsHeader("Connection")) {
					request.removeHeaders("Connection");
				}
				request.addHeader("User-Agent",
						"Mozilla/5.0 (Windows NT 5.1; rv:8.0) Gecko/20100101 Firefox/8.0");
				request.addHeader("Connection", "keep-alive");
			}
		});
		return httpclient;
	}

	/**
	 * 获取一个针对https的HttpClient
	 */
	private HttpClient getHttpsClient() throws KeyManagementException,
			NoSuchAlgorithmException {
		HttpClient httpclient = getHttpClient();
		SSLContext sslcontext = SSLContext.getInstance("TLS");
		sslcontext.init(null, new TrustManager[] { tm }, null);
		SSLSocketFactory ssf = new SSLSocketFactory(sslcontext,
				SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
		httpclient.getConnectionManager().getSchemeRegistry()
				.register(new Scheme("https", 443, ssf));
		return httpclient;
	}

	/**
	 * 创建post请求(带上cookie以保持会话)
	 * 
	 * @param url
	 * @return HttpPost
	 */
	private HttpPost getHttpPost(String url) {
		// 创建post请求
		HttpPost post = new HttpPost(url);
		if (httpsCookieHeaders != null && httpsCookieHeaders.length > 0) {
			post.setHeaders(httpsCookieHeaders);
		}
		return post;
	}

	/**
	 * 创建get请求(带上cookie以保持会话)
	 * 
	 * @param url
	 * @return HttpGet
	 */
	private HttpGet getHttpGet(String url) {
		HttpGet get = new HttpGet(url);
		if (httpsCookieHeaders != null && httpsCookieHeaders.length > 0) {
			get.setHeaders(httpsCookieHeaders);
		}
		return get;
	}

	/**
	 * 获取response里的cookies
	 * 
	 * @param response
	 */
	private void getRequestCookieHeader(HttpResponse response) {
		Header[] responseHeaders = response.getHeaders("Set-Cookie");
		if (responseHeaders == null || responseHeaders.length <= 0) {
			return;
		}
		httpsCookieHeaders = new BasicHeader[responseHeaders.length];
		for (int i = 0; i < responseHeaders.length; i++) {
			String headerValue = responseHeaders[i].getValue();
			httpsCookieHeaders[i] = new BasicHeader("Cookie", headerValue);
		}
	}

	/**
	 * 获取地址指向的图片并保存在指定位置
	 * 
	 * @param url
	 * @param imageFilePath
	 * @return
	 * @throws KeyManagementException
	 * @throws NoSuchAlgorithmException
	 */
	public synchronized InputStream getImage(String url)
			throws KeyManagementException, NoSuchAlgorithmException {
		InputStream instream = null;
		// 创建客户端
		HttpClient httpclient = getHttpsClient();
		HttpGet get = getHttpGet(url);
		try {
			HttpResponse response = httpclient.execute(get);
			HttpEntity entity = response.getEntity();
			if (entity != null) {
				instream = entity.getContent();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			httpclient.getConnectionManager().shutdown();
		}
		return instream;
	}

	/**
	 * 以get方式请求，返回String型结果
	 * 
	 * @param url
	 * @return
	 * @throws Exception
	 */
	public String doGet(String url) throws Exception {
		HttpClient httpclient = getHttpsClient();
		HttpGet get = getHttpGet(url);
		String responseBody = null;
		try {
			HttpResponse response = httpclient.execute(get);
			// getRequestCookieHeader(response);

			responseBody = IOUtils.toString(response.getEntity().getContent(),
					charset);

		} catch (java.net.SocketTimeoutException ste) {
			responseBody = ste.getMessage();
			logger.error(responseBody);
		} catch (Exception e) {
			responseBody = e.getMessage();
			logger.error(responseBody);
		} finally {
			httpclient.getConnectionManager().shutdown();
		}
		return responseBody;
	}

	/**
	 * 以post方式请求，返回String型结果
	 * 
	 * @param url
	 * @return
	 * @throws Exception
	 */
	public String doPost(String url, List<NameValuePair> nvps) throws Exception {
		HttpClient httpclient = getHttpsClient();
		HttpPost post = getHttpPost(url);
		String responseBody = null;
		try {
			post.setEntity(new UrlEncodedFormEntity(nvps, charset));
			HttpResponse response = httpclient.execute(post);
			getRequestCookieHeader(response);

			responseBody = IOUtils.toString(response.getEntity().getContent(),
					charset);

		} catch (java.net.SocketTimeoutException ste) {
			responseBody = ste.getMessage();
			logger.error(responseBody);
		} catch (Exception e) {
			responseBody = e.getMessage();
			logger.error(responseBody);
		} finally {
			httpclient.getConnectionManager().shutdown();
		}
		return responseBody;
	}

	public static void main(String[] args) throws Exception {
		HttpClientUtils httpClient = new HttpClientUtils();
		httpClient.setCharset("UTF-8");
		// httpClient.setProxyHost(Constants.proxyHost);
		// httpClient.setProxyPort(Constants.proxyPort);
		httpClient.setConnectionTimeout(3000);
		httpClient.setSoTimeout(3000);
		List<NameValuePair> parameters = new ArrayList<NameValuePair>();
//		parameters.add(new BasicNameValuePair("User_Code", "username"));
//		parameters.add(new BasicNameValuePair("Password", "password"));
//		parameters.add(new BasicNameValuePair("AutoLogin", "true"));
//		parameters.add(new BasicNameValuePair("VerifyCode", ""));
//		String url = "******/login.do";
//		String responseBody = httpClient.doPost(url, parameters);
		parameters.add(new BasicNameValuePair("userCode", "0000000000"));
//		System.out.println(JSON.parseObject(httpClient.doPost("http://192.168.20.239:8080/pdfbpoc/httpClient/user.do", parameters), PrpDuser.class).getUserName());
//		parameters.add(new BasicNameValuePair("VerifyCode", ""));
		System.out.println(httpClient.doGet("http://192.168.20.239:8080/pdfbpoc/httpClient/user.do?userCode=0000000000"));
//		System.out.println(responseBody);
	}
}