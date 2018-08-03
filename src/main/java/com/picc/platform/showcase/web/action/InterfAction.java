package com.picc.platform.showcase.web.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import ins.framework.web.AjaxResult;
import ins.platform.interf.service.facade.WeatherClientByHttpService;
import ins.platform.interf.vo.JuheWeatherDayVo;
import ins.platform.interf.vo.JuheWeatherVo;

@Controller
@RequestMapping("/showcase/interf")
public class InterfAction {
	
	@Autowired
	WeatherClientByHttpService weatherClientByHttpService;
	
	@RequestMapping("/findWeather")
	public String findWeather(){
		return "showcase/interf/FindWeather";
	}
	
	@ResponseBody
	@RequestMapping("/weather/{model}")
	public AjaxResult weatherByHttp(HttpServletRequest request,
			String cityName,
			@PathVariable("model") String model){
		
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
//		String json = "";
		JuheWeatherVo vo = null;
		List<JuheWeatherDayVo> weatherDay = new ArrayList<JuheWeatherDayVo>();
		
		if(model.equals("http")){
//			json = weatherClientByHttpService.findWeatherJsonByCityName(cityName);
			vo = weatherClientByHttpService.findWeatherByCityName(cityName);
			if(vo == null){
				ajaxResult.setStatus(100);
				ajaxResult.setStatusText("查询出错！");
				return ajaxResult;
			}
		}
		
		for(Map.Entry<String, JuheWeatherDayVo> entry : vo.getFuture().entrySet()){
			weatherDay.add(entry.getValue());
		}

		Map<String, Object> map = new HashMap<String,Object>();
		map.put("sk", vo.getSk());
		map.put("today",vo.getToday());
		map.put("days", weatherDay);
		ajaxResult.setDatas(map);
		
		return ajaxResult;
	}
	
}
