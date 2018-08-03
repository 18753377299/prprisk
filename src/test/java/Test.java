import ins.framework.lang.Encrypts;

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.PostMethod;

import com.alibaba.fastjson.JSON;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// System.out.println(String.class.getCanonicalName());
		// System.out.println(String.class.getName());
		// System.out.println(String.class.getSimpleName());
		System.out.println(Encrypts.md5Encrypt("txzy1234"));
		// postTest(getAccessToken());
	}

	public static String getAccessToken() {

		HttpClient client = new HttpClient();
		PostMethod postMethod = new PostMethod(
				"http://localhost:8091/platform/oauth/token?client_id=user-client&client_secret=user&grant_type=client_credentials");
		postMethod.setDoAuthentication(true);
		String result = "";
		try {
			int status = client.executeMethod(postMethod);
			System.out.println(status);
			byte[] bodydata = postMethod.getResponseBody();
			result = new String(bodydata, "UTF-8");
			System.out.println(result);
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		postMethod.releaseConnection();
		System.out.println("access_token = "
				+ JSON.parseObject(result).getString("value"));
		return JSON.parseObject(result).getString("value");
	}

	/**
	 * 
	 */
	public static void postTest(String access_token) {
		HttpClient client = new HttpClient();
		PostMethod postMethod = new PostMethod(
				"http://localhost:8091/platform/user/user/wangmi?access_token="
						+ access_token);
		postMethod.setDoAuthentication(true);
		String result = "";
		try {
			int status = client.executeMethod(postMethod);
			System.out.println(status);
			byte[] bodydata = postMethod.getResponseBody();
			result = new String(bodydata, "UTF-8");
			System.out.println(result);
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		postMethod.releaseConnection();
		System.out.println(result);
		System.out.println(JSON.parseObject(result).getString("userName"));
	}
}
