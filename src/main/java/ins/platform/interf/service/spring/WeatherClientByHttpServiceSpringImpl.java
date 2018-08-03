package ins.platform.interf.service.spring;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;

import ins.framework.lang.Jsons;
import ins.framework.rpc.annotation.Rpc;
import ins.platform.interf.service.facade.WeatherClientByHttpService;
import ins.platform.interf.vo.JuheWeatherDayVo;
import ins.platform.interf.vo.JuheWeatherSkVo;
import ins.platform.interf.vo.JuheWeatherTodayVo;
import ins.platform.interf.vo.JuheWeatherVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
@Rpc
@Service("weatherClientByHttpService")
public class WeatherClientByHttpServiceSpringImpl implements WeatherClientByHttpService{
	private static final Logger LOGGER = LoggerFactory.getLogger(WeatherClientByHttpServiceSpringImpl.class);
	@Override
	public String findWeatherJsonByCityName(String cityName)  {
		// http://v.juhe.cn/weather/index?cityname=北京&key=a0593066e34249def0cd5a27be3e4d05

		// 创建默认的httpClient实例.
		DefaultHttpClient httpclient = new DefaultHttpClient();
		try {
			String url = "http://v.juhe.cn/weather/index";
			url += "?key=a3342b58a240cfdaae5755895e59806e&cityname=" + cityName;
			// 创建httpget.
			HttpGet httpget = new HttpGet(url);
			// 执行get请求.
			HttpResponse response = httpclient.execute(httpget);
			// 获取响应实体
			HttpEntity entity = response.getEntity();
			// System.out.println("--------------------------------------");
			// 打印响应状态
			System.out.println(response.getStatusLine());
			if (entity != null) {
				// 打印响应内容长度
				System.out.println("Response content length: "
						+ entity.getContentLength());
				String value = EntityUtils.toString(entity);
				// 打印响应内容
				System.out.println("Response content: " + value);
				return value;
			}
		} catch (ParseException e) {
			throw new IllegalStateException(e);
		} catch (IOException e) {
			throw new IllegalStateException(e);
		} finally {
			// 关闭连接,释放资源
			httpclient.getConnectionManager().shutdown();
		}

		return null;
	}

	@Override
	public JuheWeatherVo findWeatherByCityName(String cityName){
		// http://v.juhe.cn/weather/index?cityname=北京&key=a3342b58a240cfdaae5755895e59806e

		// 创建默认的httpClient实例.
		DefaultHttpClient httpclient = new DefaultHttpClient();
		try {
			String url = "http://v.juhe.cn/weather/index";
			url += "?key=a3342b58a240cfdaae5755895e59806e&cityname=" + cityName;
			String proxyHost = "proxy.piccnet.com.cn";
			int proxyPort = 3128;
			httpclient.getCredentialsProvider().setCredentials(new AuthScope(proxyHost,proxyPort), new UsernamePasswordCredentials("", ""));
			HttpHost proxy = new HttpHost(proxyHost,proxyPort);
			httpclient.getParams().setParameter(ConnRouteParams.DEFAULT_PROXY, proxy);
			// 创建httpget.
			HttpGet httpget = new HttpGet(url);
			// 执行get请求.
			HttpResponse response = httpclient.execute(httpget);
			// 获取响应实体
			HttpEntity entity = response.getEntity();
			// System.out.println("--------------------------------------");
			// 打印响应状态
			System.out.println(response.getStatusLine());
			if (entity != null) {
				// 打印响应内容长度
				System.out.println("Response content length: "
						+ entity.getContentLength());
				String value = EntityUtils.toString(entity);
				// 打印响应内容
				System.out.println("Response content: " + value);
				// return parseClaim(value);
				System.out.println("==========================");
				Map valueMap = Jsons.fromJson(value, HashMap.class);
				System.out.println(valueMap);
//				String resultcode = (String) valueMap.get("resultcode");
//				if (!resultcode.equals("200")) {
//					throw new IllegalAccessException(
//							(String) valueMap.get("reason"));
//				}
				Map resultMap = (Map) valueMap.get("result");

				JuheWeatherSkVo sk = Jsons
						.fromJson(Jsons.toJson(resultMap.get("sk")),
								JuheWeatherSkVo.class);
				JuheWeatherTodayVo today = Jsons.fromJson(
						Jsons.toJson(resultMap.get("today")),
						JuheWeatherTodayVo.class);
				JuheWeatherVo vo = new JuheWeatherVo();
				vo.setSk(sk);
				vo.setToday(today);

				@SuppressWarnings("unchecked")
				Map<String, JuheWeatherDayVo> futureMap = (Map<String, JuheWeatherDayVo>) resultMap.get("future");
				Iterator<String> iter = futureMap.keySet().iterator();

				while (iter.hasNext()) {
					String dayStr = iter.next();
					JuheWeatherDayVo day = Jsons.fromJson(
							Jsons.toJson(futureMap.get(dayStr)),
							JuheWeatherDayVo.class);
					vo.getFuture().put(dayStr, day);
				}

				return vo;
			}
		} catch (Exception e) {
			LOGGER.error(e.getMessage(),e);
			
		} finally {
			// 关闭连接,释放资源
			httpclient.getConnectionManager().shutdown();
		}

		return null;
	}

}
