package ins.platform.sysuser.web.action;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.aoplog.support.LogAnnotation;
//import com.picc.aop.log.util.LogAnnotation;
import ins.framework.lang.Encrypts;
import ins.framework.mail.MailService;
import ins.framework.utils.Uuids;
import ins.framework.validate.passwordvalidate.PasswordValidate;
import ins.framework.web.AjaxResult;
import ins.platform.common.web.action.BaseAction;
import ins.platform.sdd.service.facade.SddService;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.sysuser.util.RandomUtils;
import ins.platform.sysuserproperty.service.facade.SysUserPropertyService;
import ins.platform.vo.SysUserPropertyVo;
import ins.platform.vo.SysUserVo;

/**
 * 
 * 用户管理Action
 * 
 */
@Controller
@RequestMapping("/sysusers")
public class SysUserAction extends BaseAction {
	@Autowired
	SysUserService sysUserService;
	@Autowired
	MailService mailService;
	@Autowired
	SddService sddService;
	@Autowired
	SysUserPropertyService sysUserPropertyService;

	// 查询页面
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@LogAnnotation(description = "项目列表查询")
	public String list() throws Exception {
		return "sysUser/SysUserList";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	@ResponseBody
	public String index(HttpServletRequest request) {
		// 将request的parameterMap改为HashMap，否则无法通过RPC进行传输
		String result = "";
		Map<String, String[]> paramMap = new HashMap<String, String[]>(
				request.getParameterMap());
		result = sysUserService.findForDataTables(paramMap);
		return result;

	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView _new(
			@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
		// 1.参数校验
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		SysUserVo sysUser = new SysUserVo();
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.addObject("editMode", editMode);
		mav.setViewName("sysUser/SysUserEdit");
		return mav;
	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult create(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser,
			@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
		// 1.参数校验
		// Assert.hasText(sysUser.getName(), "用户名不能为空");
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)

		sysUserService.save(sysUser);
		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText("保存成功");
		return ajaxResult;
	}

	@RequestMapping(value = "/{id}/edit/", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView edit(
			@PathVariable(value = "id") String id,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验
		// 返回处理结果
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		SysUserVo sysUser = sysUserService.findByPK(Long.parseLong(id));

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.addObject("editMode", editMode);
		mav.setViewName("sysUser/SysUserEdit");
		return mav;

	}

	@RequestMapping(value = "/{id}/update", method = RequestMethod.PUT)
	@ResponseBody
	public AjaxResult update(
			@PathVariable(value = "id") String id,
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser,
			@RequestParam(value="password")  String password,
			@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
		// 1.参数校验
		// Assert.hasText(sysUser.getName(), "用户名不能为空");
		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)
		AjaxResult ajaxResult = new AjaxResult();
//		String isValid = "";
//		isValid = PasswordValidate.validPassWord(sysUser.getPassword());
//		if (isValid.equals("1")) {
//			String message = "密码修改成功！";
		   SysUserVo vo=sysUserService.findByPK(Long.parseLong(id));
		   String password1=vo.getPassword();
            sysUser.setPassword(password1);
		   String message = "修改成功！";
			sysUserService.updateByIdNoPassword(Long.parseLong(id), sysUser);
			ajaxResult.setStatus(HttpStatus.SC_OK);
			ajaxResult.setStatusText(message);
//		} else {
//			ajaxResult.setStatus(HttpStatus.SC_BAD_REQUEST);
//			String message = isValid;
//			Map<String, Object> datas = new HashMap<String, Object>();
//			datas.put("EX_MAIN", "密码规则错误");
//			datas.put("EX_MESSAGE", message);
//			ajaxResult.setDatas(datas);
//		}

		// 4.返回处理结果
		// ajaxResult.setStatus(HttpStatus.SC_OK);
		// ajaxResult.setStatusText(sysUser.getId().toString());
		return ajaxResult;
	}

	/**
	 * 根据userCode查询该用户
	 * 
	 */
	@RequestMapping(value = "/{id}/show", method = RequestMethod.GET)
	public ModelAndView show(@PathVariable(value = "id") String id) {
		// 根据userCode查询出来该用户
		SysUserVo sysUser = sysUserService.findByPK(Long.parseLong(id));

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.setViewName("sysUser/SysUserView");
		return mav;
	}

	/**
	 * AJAX删除动作，在此针对用户不做真正意义上的删除操作，只是将用户验证状态设置未验证
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.DELETE)
	@ResponseBody
	public AjaxResult delete(@PathVariable(value = "id") String id) {
		// 1.参数校验
		// 根据ID删除用户
		sysUserService.deleteByPK(Long.parseLong(id));
		/*
		 * SysUserVo sysUser = sysUserService.findByPK(Long.parseLong(id));
		 * sysUser.setValidStatus("0");
		 * sysUserService.updateByUserCode(sysUser.getUserCode(),sysUser);
		 */
		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(id + "");
		return ajaxResult;
	}

	/**
	 * AJAX批量删除动作,假删除，只是将用户表中一个字段的值
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{ids}/batchdelete", method = RequestMethod.DELETE)
	@ResponseBody
	public AjaxResult batchDelete(@PathVariable(value = "ids") String ids) {
		// 1.参数校验
		if (!"".equals(ids)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] idArray = ids.split(",");
			for (int i = 0; i < idArray.length; i++) {
				String id = idArray[i];
				// sysUserService.deleteByPK(id);

				SysUserVo sysUser = sysUserService.findByPK(Long.parseLong(id));
				sysUser.setValidStatus("0");
				sysUserService.updateByUserCode(sysUser.getUserCode(), sysUser);
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * AJAX批量删除动作,假删除，只是将用户表中一个字段的值
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/deleteAllByUserCodes/{userCodes}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteAllByUserCodes(
			@PathVariable(value = "userCodes") String userCodes) {
		// 1.参数校验
		if (!"".equals(userCodes)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] idArray = userCodes.split(",");
			for (int i = 0; i < idArray.length; i++) {
				String userCode = idArray[i];
				// sysUserService.deleteByPK(id);

				SysUserVo sysUser = sysUserService.findByPK(Long
						.parseLong(userCode));
				sysUser.setValidStatus("0");
				sysUserService.updateByUserCode(sysUser.getUserCode(), sysUser);
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * 跳转到注册页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/preRegist")
	public String preRegist() {

		return "/sysUser/Register";
	}

	/**
	 * 跳转到找回密码页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/prePassword")
	public String preGetPassword() {

		return "/sysUser/GetPassword";
	}

	/**
	 * 跳转到个人信息页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/preProfile")
	public ModelAndView preProfile(HttpSession session) {
		String userCode = (String) session.getAttribute("userCode");
		SysUserVo sysUser = sysUserService.findByUserCode(userCode);
		// 处理结果集
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.setViewName("/sysUser/Profile");
		return mav;
	}

	/**
	 * 跳转到安全中心页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/preSecurity")
	public String preSecurity() {
		return "/sysUser/Security";
	}

	/**
	 * 注册
	 * 
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST, params = "safecode")
	public ModelAndView register(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser,
			@RequestParam("safecode") String safecode, HttpSession session) {
		// 参数校验
		Assert.hasText(sysUser.getUserCode(), "用户名不能为空");
		Assert.hasText(sysUser.getPassword(), "密码不为空");
		Assert.hasText(sysUser.getUserName(), "真实姓名不能为空");
		Assert.hasText(sysUser.getEmail(), "邮箱地址不能为空");
		String imageCode = (String) session.getAttribute("imageCode");
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		if (safecode == null || safecode.equals("")
				|| !safecode.equals(imageCode)) {
			String message = "验证码不正确，请重新输入";
			mav.addObject("message", message);
			mav.addObject("sysUser", sysUser);
			mav.setViewName("/sysUser/Register");
		} else {
			sysUserService.save(sysUser);
			mav.setViewName("/index/login");
		}

		return mav;
	}

	/**
	 * 校验注册用户是否已存在
	 * 
	 * @param userCode
	 * @return
	 */

	@RequestMapping(value = "/checkedSysUser", method = RequestMethod.GET)
	@ResponseBody
	public String checkedSysUser(
			@RequestParam(value = "userCode") String userCode) {

		Assert.hasText(userCode, "用户名不能为空");
		SysUserVo sysUser = sysUserService.findByUserCode(userCode);
		String result = null;
		if (sysUser != null) {
			result = "true";
		} else {
			result = "false";
		}
		return result;
	}

	/**
	 * 校验邮箱是否已被注册
	 * 
	 * @param email
	 * @return
	 */
	@RequestMapping(value = "/checkedEmail", method = RequestMethod.GET)
	@ResponseBody
	public String checkedEmail(@RequestParam(value = "email") String email) {

		Assert.hasText(email, "邮箱不能为空");
		SysUserVo sysUser = sysUserService.findByEmail(email);
		String result = null;
		if (sysUser != null) {
			result = "true";
		} else {
			result = "false";
		}
		return result;
	}

	@RequestMapping(value = "/authEmail", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult authEmail(@RequestParam(value = "email") String email) {
		Assert.hasText(email, "邮箱不能为空");
		SysUserVo sysUser = sysUserService.findByEmail(email);
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		if (sysUser != null) {
			ajaxResult.setStatusText("true");

		} else {
			ajaxResult.setStatusText("false");
		}
		return ajaxResult;
	}

	@RequestMapping(value = "/safeCodeCaptcha", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult safeCodeCaptcha(
			@RequestParam(value = "safeCode") String safeCode,
			@RequestParam(value = "email") String email) {
		SysUserVo sysUser = sysUserService.findByEmail(email);
		// 返回处理结果
		SysUserPropertyVo propertyVo = sysUserPropertyService
				.findByUserCode(sysUser.getUserCode());
		AjaxResult ajaxResult = new AjaxResult();
		if (propertyVo.getValue().equals(safeCode)) {
			ajaxResult.setStatusText("true");
		} else {
			ajaxResult.setStatusText("false");
		}
		return ajaxResult;
	}

	/**
	 * 跳转到重置密码页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/preResetPassword", method = RequestMethod.POST)
	public ModelAndView preResetPassword(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser) {
		SysUserVo su = sysUserService.findByEmail(sysUser.getEmail());
		// 返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", su);
		mav.setViewName("/sysUser/ResetPassword");
		return mav;
	}

	/**
	 * 重置密码
	 * 
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value = "/resetPassword", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult resetPassword(
			@RequestParam(value = "userCode") String userCode,
			@RequestParam(value = "password") String password) {
		AjaxResult ajaxResult = new AjaxResult();
		// 密码校验 2015/11/13
//		String result = "";
		String checkPassword = PasswordValidate.validPassWord(password);
		if (checkPassword.equals("1")) {
			SysUserVo su = sysUserService.findByUserCode(userCode);
			su.setPassword(Encrypts.md5Encrypt(password));
			sysUserService.updateByUserCode(userCode, su);
		}
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setData(checkPassword);
		// result = checkPassword;
		return ajaxResult;

	}

	/**
	 * 找回密码发送邮件
	 * 
	 * @param email
	 * @return
	 */
	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
	@ResponseBody
	public AjaxResult sendMail(@RequestParam(value = "email") String email) {
		// 参数校验
		Assert.hasText(email, "邮箱地址不能为空");
		SysUserVo sysUser = sysUserService.findByEmail(email);
		String from = sddService.findAppConfCodeByCode("mail.sendFrom").getValue();
		String subject = "密码找回-验证码";
		String property = RandomUtils.generateString(4);
		String text = "您的验证码是:" + property; // 生成随机的四位数字验证码
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		if (sysUser != null) {
			SysUserPropertyVo propertyVo = sysUserPropertyService
					.findByUserCode(sysUser.getUserCode());
			if (propertyVo != null) {
				propertyVo.setValue(property);
				propertyVo.setOperateTimeForHis(new Date());
				sysUserPropertyService.update(propertyVo);
			} else {
				propertyVo = new SysUserPropertyVo();
				propertyVo.setCode(Uuids.shortUuid());
				propertyVo.setUserCode(sysUser.getUserCode());
				propertyVo.setValue(property);
				propertyVo.setOperateTimeForHis(new Date());
				sysUserPropertyService.save(propertyVo);
			}
			mailService.send(from, email, subject, text);
			ajaxResult.setStatusText("true");
		} else {
			ajaxResult.setStatusText("false");
		}

		return ajaxResult;
	}

	/**
	 * 用户密码校验
	 * 
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value = "/checkedPassword", method = RequestMethod.POST)
	@ResponseBody
	public String checkedPassword(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser) {
		String password = Encrypts.md5Encrypt(sysUser.getPassword());
		String pd = sysUserService.findByUserCode(sysUser.getUserCode())
				.getPassword(); // 用户注册密码
		String result = null;
		if (password.equals(pd)) {
			result = "true";
		} else {
			result = "false";
		}
		return result;
	}

	/**
	 * 修改密码
	 * 
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public String changePassword(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser) {
		String newPassword = sysUser.getPassword();
		String userCode = sysUser.getUserCode();
		String isValid = PasswordValidate.validPassWord(newPassword);
		if (isValid.equals("1")) {
			SysUserVo su = sysUserService.findByUserCode(userCode);
			su.setPassword(Encrypts.md5Encrypt(newPassword));
			sysUserService.updateByUserCode(userCode, su);
		}
		return "/sysUser/Security";
	}

	/**
	 * 验证新邮箱
	 * 
	 * @param email
	 * @return
	 */
	@RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
	@ResponseBody
	public AjaxResult sendEmail(@RequestParam(value = "email") String email) {
		// 参数校验
		Assert.hasText(email, "邮箱地址不能为空");
		SysUserVo sysUser = sysUserService.findByEmail(email);
		String from = "duanran.1990@163.com";
		String subject = "更改邮箱-验证码";
		String text = "您的验证码是:" + RandomUtils.generateString(4); // 生成随机的四位数字验证码
		// 返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		if (sysUser == null) {
			mailService.send(from, email, subject, text);
			ajaxResult.setData(text);
			ajaxResult.setStatusText("true");

		} else {

			ajaxResult.setStatusText("false");
		}
		return ajaxResult;
	}

	/**
	 * 修改邮箱地址
	 * 
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value = "/changeEmail", method = RequestMethod.POST)
	public String changeEmail(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser) {
		String userCode = sysUser.getUserCode();
		String email = sysUser.getEmail();
		SysUserVo su = sysUserService.findByUserCode(sysUser.getUserCode());
		su.setEmail(email);
		sysUserService.updateByUserCode(userCode, su);
		return "/sysUser/Security";
	}

	/**
	 * 更新用户个人信息
	 * 
	 * @param sysUser
	 * @return
	 */
	@RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult updateProfile(
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser) {
		// 参数校验
		Assert.hasText(sysUser.getEmail(), "电子邮箱地址不能为空");

		// 组织业务数据
		String age = sysUser.getAge();
		String email = sysUser.getEmail();
		String userCode = sysUser.getUserCode();
		Date birthday = sysUser.getBirthday();
		String sex = sysUser.getSex();
		String qq = sysUser.getQq();
		String postCode = sysUser.getPostCode();
		String mobilePhone = sysUser.getMobilePhone();
		String homePhone = sysUser.getHomePhone();
		String address = sysUser.getAddress();
		SysUserVo su = sysUserService.findByUserCode(sysUser.getUserCode());
		su.setAge(age);
		su.setEmail(email);
		su.setBirthday(birthday);
		su.setSex(sex);
		su.setQq(qq);
		su.setPostCode(postCode);
		su.setMobilePhone(mobilePhone);
		su.setHomePhone(homePhone);
		su.setAddress(address);
		sysUserService.updateByUserCode(userCode, su);

		// 处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(userCode);
		ajaxResult.setData(su);
		return ajaxResult;
	}

	/**
	 * AJAX保存<br>
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/editWithUserCode/{userCode}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView editWithUserCode(
			@PathVariable(value = "userCode") String userCode,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode) {
		// 1.参数校验

		// 返回处理结果
		SysUserVo sysUser = sysUserService.findByUserCode(userCode);

		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		// mav.addObject("editMode", "update");
		mav.addObject("editMode", editMode);
		mav.setViewName("sysUser/SysUserEdit");
		return mav;
	}

	@RequestMapping("/profile")
	public ModelAndView profile(@RequestParam(value = "id") String id) {
		SysUserVo sysUser = sysUserService.findByPK(Long.parseLong(id));
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.setViewName("sysUser/Profile");
		return mav;
	}

	/*
	 * 
	 * 点击右上角，修改密码功能
	 */
	@RequestMapping(value = "/prePwdModify")
	public ModelAndView prePwdModify(HttpSession session) {
		String userCode = (String) session.getAttribute("userCode");
		SysUserVo sysUser = sysUserService.findByUserCode(userCode);
		// 处理结果集
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.setViewName("/sysUser/pwdModify");
		return mav;
	}

	@RequestMapping(value = "/preModifyPassword")
	public ModelAndView preModifyPassword(HttpSession session) {
		String userCode = (String) session.getAttribute("userCode");
		SysUserVo sysUser = sysUserService.findByUserCode(userCode);
		// 处理结果集
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.setViewName("/sysUser/ModifyPassword");
		return mav;
	}

	/**
	 * sysUserEdit页面跳转修改密码页面；
	 * 
	 */
	@RequestMapping(value = "/{id}/sysUserModifyPassword")
	public ModelAndView sysUserModifyPassword(@PathVariable(value = "id") String id
			) {
	     SysUserVo sysUser=sysUserService.findByPK(Long.parseLong(id));	
		// 处理结果集
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysUser", sysUser);
		mav.setViewName("/sysUser/SysUserPassword");
		return mav;
	}
	
	
	@RequestMapping(value = "/passwordCheck" , method=RequestMethod.POST)
	@ResponseBody
	public AjaxResult passwordConfirm(HttpServletRequest request,String userCode,String password) {
		AjaxResult ajaxResult = new AjaxResult();
		SysUserVo su = sysUserService.findByUserCode(userCode);
		String message = "";
		String passwordDb=su.getPassword();
		if(passwordDb.equals(Encrypts.md5Encrypt(password))){
		    message = "密码正确";
			ajaxResult.setStatus(HttpStatus.SC_OK);
			ajaxResult.setData(su);
			ajaxResult.setStatusText(message);
			return ajaxResult;
		}else{
			ajaxResult.setStatus(HttpStatus.SC_BAD_REQUEST);
		     message = "密码不正确";
		     Map<String, Object> datas = new HashMap<String, Object>();
				datas.put("EX_MAIN", "密码错误");
				datas.put("EX_MESSAGE", message);
				ajaxResult.setDatas(datas);
				return ajaxResult;
		}	
		
	}
	
	
	
	
	/**
	 * 修改密码
	 */
	@RequestMapping(value = "/{id}/updatePassword", method = RequestMethod.PUT)
	@ResponseBody
	public AjaxResult updatePassword(@PathVariable(value = "id") String id,
			@ModelAttribute("sysUser") @Valid SysUserVo sysUser,
			@RequestParam("newPassword") String newPassword, HttpSession session,
			@RequestParam(value = "editMode", defaultValue = "create") String editMode) {
		AjaxResult ajaxResult = new AjaxResult();
		String isValid = "";
		String userCode = sysUser.getUserCode();
		// 密码格式校验
		isValid = PasswordValidate.validPassWord(newPassword);
		if (isValid.equals("1")) {
			String message = "密码修改成功！";
			SysUserVo su = sysUserService.findByUserCode(userCode);
			su.setPassword(Encrypts.md5Encrypt(newPassword));
			sysUserService.updateByUserCode(userCode, su);
			ajaxResult.setStatus(HttpStatus.SC_OK);
			ajaxResult.setStatusText(message);

		}else {
			ajaxResult.setStatus(HttpStatus.SC_BAD_REQUEST);
			String message = isValid;
			Map<String, Object> datas = new HashMap<String, Object>();
			datas.put("EX_MAIN", "密码规则错误");
			datas.put("EX_MESSAGE", message);
			ajaxResult.setDatas(datas);
		}
		// 4.返回处理结果
		// ajaxResult.setStatus(HttpStatus.SC_OK);
		// ajaxResult.setStatusText(sysUser.getId().toString());
		return ajaxResult;
	}
		
}
