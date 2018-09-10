package com.picc.riskcontrol.common.action;

import ins.framework.dao.database.DatabaseDao;
import ins.framework.dao.database.support.QueryRule;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.picc.riskcontrol.common.schema.RiskUser;
import com.picc.riskcontrol.common.vo.RiskResponseVo;
import com.picc.riskcontrol.common.vo.RiskUserVo;
import com.picc.riskcontrol.common.vo.UserInfo;

@Controller
@RequestMapping("/login")
public class LoginAction {
	
	@Autowired
	DatabaseDao databaseDao;
	/**
	 * 用户登录
	 * 用户信息保存到useinfo中
	 * */	
	@CrossOrigin(origins = "*", maxAge = 3600)
	@RequestMapping(value="/getIntoLogin",method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody	
//	@RequestBody RiskUserVo riskUserVo
	public RiskResponseVo getIntoLogin(@RequestBody RiskUserVo riskUserVo){
		
		RiskResponseVo riskResponseVo =new RiskResponseVo();
		
		QueryRule queryRule=QueryRule.getInstance();
//		RiskUserVo riskUserVo =new RiskUserVo();
		if(null!=riskUserVo){
			String username =riskUserVo.getUsername();
			if(StringUtils.isNotBlank(username)){
				queryRule.addEqual("username", username);
			}
			String password= riskUserVo.getPassword();
			if(StringUtils.isNotBlank(password)){
				queryRule.addEqual("password", password);
			}
			RiskUser riskUser=new RiskUser();
			try {
				riskUser = databaseDao.findUnique(RiskUser.class, queryRule);
			} catch (Exception e) {
				e.printStackTrace();
			}
			UserInfo userInfo=new UserInfo();
			String token= ""; 
			if(riskUser!=null){
				if(riskUser.getStatus()!=null&& riskUser.getStatus().equals(1)){
					// 获取userInfo  (username,是否外系统，是否有效)
					userInfo = getUserInfo(username,"outSystemFlag","1");
					//获取token
					token="abc";
					riskResponseVo.setUserInfo(userInfo);
					riskResponseVo.setToken(token);
					riskResponseVo.setErrorMessage("登陆成功！");
					riskResponseVo.setStatus("1");
				}else{
					riskResponseVo.setErrorMessage("该用户尚未激活，请激活后重新登录！");
					riskResponseVo.setStatus("0");
				}
			}else {
				riskResponseVo.setErrorMessage("用户名或密码错误，请校验后重新登陆！");
				riskResponseVo.setStatus("0");
			}
		}
		return riskResponseVo;
	}
	//组织userinfo对象
	public UserInfo getUserInfo(String username,String systemFlag,String state){
		UserInfo userInfo=new UserInfo();
		// 有效
		if("1".equals(state)){
			userInfo.setUserName(username);
			userInfo.setUserCode(username);
		}
		return userInfo;				
	}
	@CrossOrigin(origins = "*", maxAge = 3600)
	@RequestMapping(value="/getIntoLogin2",method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
//	@RequestBody RiskUserVo riskUserVo
	public RiskResponseVo getIntoLogin2(@RequestParam(value="username") String username,
			@RequestParam(value="password") String password){
		RiskResponseVo riskResponseVo =new RiskResponseVo();
		QueryRule queryRule=QueryRule.getInstance();
		System.out.println("test2");
		return riskResponseVo;
	}
	
	@CrossOrigin(origins = "*", maxAge = 3600)
	@RequestMapping(value="/getIntoLogin1",method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public RiskResponseVo getIntoLoginTest(@RequestParam(value="username") String username,
			@RequestParam(value="password") String password){
		RiskResponseVo riskResponseVo =new RiskResponseVo();
		System.out.println("test success");
		QueryRule queryRule=QueryRule.getInstance();
		return  riskResponseVo;
	}
}
