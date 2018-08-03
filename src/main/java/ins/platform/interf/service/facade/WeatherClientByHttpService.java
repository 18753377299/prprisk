package ins.platform.interf.service.facade;

import ins.framework.rpc.annotation.Rpc;
import ins.platform.interf.vo.JuheWeatherVo;
@Rpc
public interface WeatherClientByHttpService {

	public String findWeatherJsonByCityName(String cityName);

	public JuheWeatherVo findWeatherByCityName(String cityName);

}
