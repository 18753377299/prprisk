package ins.platform.staletter.web.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.http.HttpStatus;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.framework.web.util.ResponseUtils;
import ins.platform.staletter.service.facade.StaLetterService;
import ins.platform.sysuser.service.facade.SysUserService;
import ins.platform.vo.StaLetterVo;
import ins.platform.vo.SysUserVo;

/**
 * 用户管理Action
 */
@Controller
@RequestMapping("/staLetter")
public class StaLetterAction extends BaseAjaxAction {
	/**
	 * 注入需要使用的Service
	 */
	@Autowired
	StaLetterService staLetterService; // 注解这项是非常关键的
	
	@Autowired
	SysUserService sysUserService;


	/**
	 * 进入查询页面 ——————————————————————————————/list
	 */
	@RequestMapping("/list")
	public String list() {
		System.out.println("sdfsjflsdjflsjflj");
		return "staLetter/StaLetterReceiveList";
	}

	/**
	 * 进入查询发信件页面 ——————————————————————————————/list
	 */
	@RequestMapping("/sentList")
	public String sentList() {
		return "staLetter/StaLetterSentList";
	}

	/**
	 * AJAX查询动作 ——————————————————————收信件
	 */
	@RequestMapping(value = "/search")
	@ResponseBody
	public String search(HttpServletRequest request) { 
		List<StaLetterVo> page = staLetterService.findStaLettersRec(super.getCurrentUserCode());// 对于收件箱要过滤，发件箱不要

		String result = ResponseUtils.toDataTableJson(page, "id", "sender",
				"theme", "receiveTime", "readFlag");

		return result;
	}

	/**
	 * AJAX查询动作 ——————————————————————查询已发送
	 */
	@RequestMapping(value = "/sentSearch")
	@ResponseBody
	public String sent(HttpServletRequest request) { 

		List<StaLetterVo> page = staLetterService.findStaLettersSent();

		String result = ResponseUtils.toDataTableJson(page, "id", "receiver",
				"theme", "sendTime");
		return result;
	}

	/**
	 * ——————————————————————————————————整个发送信件能成功，是 因为这里和下面的save 进入信件编辑页面<br>
	 * ——————————————————————————————————btn-create
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 */
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(
			@PathVariable(value = "id") String id,
			@RequestParam(value = "editMode", defaultValue = "forward") String editMode) {
		// 1.参数校验

		// 2.组织业务数据（包括处理主子表关系）
		String userCode = SecurityUtils.getSubject().getPrincipal().toString();
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			StaLetterVo staLetter = new StaLetterVo(); 
			staLetter.setUserCode(userCode);
			// 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject("staLetter", staLetter);
			mav.addObject("editMode", editMode);
			mav.setViewName("staLetter/StaLetterEdit");
			return mav;
		}
		if ("forward".equalsIgnoreCase(editMode)) {
			StaLetterVo staLetter   = staLetterService.findByPK(id);
 
			staLetter.setUserCode(userCode);

			staLetter.setTheme("转发:" + staLetter.getTheme());
			staLetter.setContent("\r\n" + "转发来自" + staLetter.getSender()
					+ "的信件：" + "\r\n" + staLetter.getContent()); 
			// staLetter.setReceiver(staLetter.getSender());
			staLetter.setSender(userCode);
			// 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject("staLetter", staLetter);
			mav.addObject("editMode", editMode);
			mav.setViewName("staLetter/StaLetterForward");
			return mav;
		}
		if ("reply".equalsIgnoreCase(editMode)) {
			StaLetterVo staLetter = staLetterService.findByPK(id);
 
			staLetter.setUserCode(userCode);

			staLetter.setTheme("回复:" + staLetter.getTheme());
			staLetter.setContent("\r\n" + "回复来自" + staLetter.getSender()
					+ "的信件：" + "\r\n" + staLetter.getContent()); 
			staLetter.setSender(userCode);
			// 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject("staLetter", staLetter);
			mav.addObject("editMode", editMode);
			mav.setViewName("staLetter/StaLetterRelpy");
			return mav;
		} else {
			// sysUser = userService.findByPK(userCode);
			// sysUser.setPrpDcompany(sysUser.getPrpDcompany());
			StaLetterVo staLetter = new StaLetterVo();
			// staLetter =
			// staLetterService.findByPK(id); // 防止报错
			// // 3.返回处理结果
			ModelAndView mav = new ModelAndView();
			mav.addObject("staLetter", staLetter);
			mav.addObject("editMode", editMode);
			mav.setViewName("staLetter/StaLetterEdit");
			return mav;
		}

	}

	/**
	 * AJAX保存<br>
	 * ——————————— 保存很重要，这里相当于是send，没有它就无法send
	 * editMode用于区分是新增(create)还是修改(update)，默认修改
	 * 
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult save(
			@ModelAttribute("staLetter") @Valid StaLetterVo staLetter,
			@RequestParam(value = "editMode", defaultValue = "update") String editMode)
			throws Exception {
		// 1.参数校验

		// 2.组织业务数据（包括处理主子表关系）
		// 3.一次交易处理保存操作（查询可多次）
		// 识别编辑模式是新增(create)还是修改(update)
		if ("create".equalsIgnoreCase(editMode)) {
			Date now = Calendar.getInstance().getTime();
			// user_Code = (String) getSession().getAttribute("UserCode");
			String user_Code = super.getCurrentUserCode();
			SysUserVo sysUser = sysUserService.findByUserCode(user_Code);
			if (sysUser != null) {
				staLetter.setSender(user_Code);
				staLetter.setReadFlag("0");
				staLetter.setValidFlagRec("1");
				staLetter.setValidFlagSend("1");
				// 之后从getSession.setAttribute("UserCode", userCode);
				// staLetter.setSender("admin");
				staLetter.setSendTime(now);
				staLetter.setReceiveTime(now);
				staLetterService.save(staLetter);

				 

			} else {
				throw new Exception("当前用户不存在，不能发送邮件。");
			}
		}
		if ("forward".equalsIgnoreCase(editMode)) {
			Date now = Calendar.getInstance().getTime(); 
			String user_Code = super.getCurrentUserCode();
			SysUserVo sysUser = sysUserService.findByUserCode(user_Code);
			if (sysUser != null) {
				staLetter.setSender(user_Code);
				staLetter.setReadFlag("0");
				staLetter.setValidFlagRec("1");
				staLetter.setValidFlagSend("1");
				// 之后从getSession.setAttribute("UserCode", userCode);
				// staLetter.setSender("admin");
				staLetter.setSendTime(now);
				staLetter.setReceiveTime(now);
				staLetterService.save(staLetter);
			} else {
				throw new Exception("当前用户不存在，不能发送邮件。");
			}
		}
		if ("reply".equalsIgnoreCase(editMode)) {
			Date now = Calendar.getInstance().getTime(); 
			String user_Code = super.getCurrentUserCode();
			SysUserVo sysUser = sysUserService.findByUserCode(user_Code);
			if (sysUser != null) {
				staLetter.setSender(user_Code);
				staLetter.setReadFlag("0");
				staLetter.setValidFlagRec("1");
				staLetter.setValidFlagSend("1");
				// 之后从getSession.setAttribute("UserCode", userCode);
				// staLetter.setSender("admin");
				staLetter.setSendTime(now);
				staLetter.setReceiveTime(now);
				staLetterService.save(staLetter);
			} else {
				throw new Exception("当前用户不存在，不能发送邮件。");
			}
		}
		// else {
		// // userService.update(sysUser.getUserCode(), sysUser);
		// }

		// 4.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(staLetter.getUserCode()); 
		return ajaxResult;

	}

	/**
	 * 进入信件显示页面，这是从收件箱点进去的，可以回复和转发
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/receiveView/{id}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.组织业务数据（包括处理主子表关系）
		StaLetterVo staLetter =  staLetterService.findByPK(id);
		staLetter.setReadFlag("1");
		staLetterService.save(staLetter);
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("staLetter", staLetter);
		mav.setViewName("staLetter/StaLetterReceiveView");
		return mav;
	}

	/**
	 * 进入信件显示页面，这是从发件箱点进去的，只可以转发
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/sentView/{id}", method = RequestMethod.GET)
	public ModelAndView view2(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.组织业务数据（包括处理主子表关系）
		StaLetterVo staLetter  = staLetterService.findByPK(id);
		staLetter.setReadFlag("1");
		staLetterService.save(staLetter);
		// 3.返回处理结果
		ModelAndView mav = new ModelAndView();
		mav.addObject("staLetter", staLetter);
		mav.setViewName("staLetter/StaLetterSentView");
		return mav;
	}

	/**
	 * AJAX删除动作————从收件箱删除
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/deleteFromReceive/{id}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteFromReceive(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		// userService.deleteByPK(userCode);
		staLetterService.deleteRec(id);

		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(id);
		return ajaxResult;
	}

	/**
	 * AJAX删除动作————从发件箱删除
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/deleteFromSent/{id}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteFromSent(@PathVariable(value = "id") String id) {
		// 1.参数校验

		// 2.一次交易处理保存操作（查询可多次）
		// userService.deleteByPK(userCode);
		staLetterService.deleteSend(id);

		// 3.返回处理结果
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		ajaxResult.setStatusText(id);
		return ajaxResult;
	}

	/**
	 * AJAX批量删除动作（收件箱）
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/deleteAll/{checkCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteAll(
			@PathVariable(value = "checkCode") String checkCode) {
		// 1.参数校验
		if (!"".equals(checkCode)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] staLetterCodeArray = checkCode.split(",");
			for (int i = 0; i < staLetterCodeArray.length; i++) {
				String staLetterCode = staLetterCodeArray[i];
				staLetterService.deleteRec(staLetterCode);
				// userService.deleteByPK(userCode);
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * AJAX批量删除动作（发件箱）
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/deleteAllSent/{checkCode}", method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult deleteAllSent(
			@PathVariable(value = "checkCode") String checkCode) {
		// 1.参数校验
		if (!"".equals(checkCode)) {
			// 2.一次交易处理保存操作（查询可多次）
			String[] staLetterCodeArray = checkCode.split(",");
			for (int i = 0; i < staLetterCodeArray.length; i++) {
				String staLetterCode = staLetterCodeArray[i];
				staLetterService.deleteSend(staLetterCode);
				// userService.deleteByPK(userCode);
			}
			// 3.返回处理结果
		}
		AjaxResult ajaxResult = new AjaxResult();
		ajaxResult.setStatus(HttpStatus.SC_OK);
		return ajaxResult;
	}

	/**
	 * 在撰写信件时，AJAX查询用户名是否正确
	 */
	@RequestMapping(value = "/checkUser/{userCode}", method = RequestMethod.POST)
	@ResponseBody
	public String checkUser(@PathVariable(value = "userCode") String userCode) {
		// 获取当前用户
		String msg = ""; 
		SysUserVo user = sysUserService.findByUserCode(userCode);
		if (user == null) {
			msg = "NO";
		} else if (user != null) {
			msg = "OK";
		}
		return JSON.toJSONString(msg); // 不管正确还是错误，将相应的msg值传给js
	}

	/**
	 * AJAX批量删除动作（判断是否有新的站内信）
	 * 
	 * @param userCode
	 * @return
	 */
	@RequestMapping(value = "/findNewMessage", method = RequestMethod.POST)
	@ResponseBody
	public String findNewMessage() {
		List<String> msgList = new ArrayList<String>();
		// 实时信息列表
		String msgListJson = ""; 
		String userCode = super.getCurrentUserCode();
		List<StaLetterVo> staLetterList = staLetterService
				.findStaLettersRec(userCode);// 对于收件箱要过滤，发件箱不要
		if (staLetterList.size() >= 3) {
			for (int i = 0; i < 3; i++) {
				String themeDisplay = "";
				if (staLetterList.get(staLetterList.size() - i - 1).getTheme()
						.length() > 4) {
					themeDisplay = staLetterList
							.get(staLetterList.size() - i - 1).getTheme()
							.substring(0, 3)
							+ "...";
				} else {
					themeDisplay = staLetterList.get(
							staLetterList.size() - i - 1).getTheme();
				}
				msgListJson += "<li><a href='"
						+ "/platform/staLetter/receiveView/"
						+ staLetterList.get(staLetterList.size() - i - 1)
								.getId()
						+ "'>"
						// + "发件人："
						+ "<em><strong>"
						+ staLetterList.get(staLetterList.size() - i - 1)
								.getSender() + "</em></strong>"
						+ "&nbsp&nbsp&nbsp"
						// + "主题："
						+ themeDisplay + "&nbsp&nbsp&nbsp"
						// + "发件日期："
						+ "<em style='font-size:12px;'>"
						+ staLetterList.get(staLetterList.size() - i - 1)
								.getSendTime() + "</em></font></a></li><br>";
			}
			msgListJson += "<li><a href='" + "/platform/staLetter/list/" + "'>"
					+ "<p align=" + "'center'"
					+ "><strong>Read All Messages </strong><i class="
					+ "'fa fa-angle-right'" + "></p></a></li>";
		} else if ((staLetterList.size() > 0)) {
			for (int i = staLetterList.size() - 1; i >= 0; i--) {
				String themeDisplay = "";
				if (staLetterList.get(staLetterList.size() - i - 1).getTheme()
						.length() > 4) {
					themeDisplay = staLetterList
							.get(staLetterList.size() - i - 1).getTheme()
							.substring(0, 3)
							+ "...";
				} else {
					themeDisplay = staLetterList.get(
							staLetterList.size() - i - 1).getTheme();
				}
				msgListJson += "<li><a href='"
						+ "/platform/staLetter/receiveView/"
						+ staLetterList.get(staLetterList.size() - i - 1)
								.getId()
						+ "'>"
						// + "发件人："
						+ "<em><strong>"
						+ staLetterList.get(staLetterList.size() - i - 1)
								.getSender() + "</em></strong>"
						+ "&nbsp&nbsp&nbsp"
						// + "主题："
						+ themeDisplay + "&nbsp&nbsp&nbsp"
						// + "发件日期："
						+ "<em style='font-size:12px;'>"
						+ staLetterList.get(staLetterList.size() - i - 1)
								.getSendTime() + "</em></font></a></li><br>";
			}
			msgListJson += "<li><a href='" + "/platform/staLetter/list/" + "'>"
					+ "<p align=" + "'center'"
					+ "><strong>Read All Messages </strong><i class="
					+ "'fa fa-angle-right'" + "></p></a></li>";
		}

		// 实时显示信息 
		String str = ""; 
		msgList.add(str);
		msgList.add(msgListJson);
		return JSON.toJSONString(msgList); 
	}
}

//
// /**
// * 站内信Action
// */
// @Controller
// @RequestMapping("/msg")
// public class MsgAction {
// /**
// * 注入需要使用的Service
// */
// @Autowired
// MsgService msgService;
//
// // @Autowired
// // CompanyService companyService;
//
// /**
// * 进入信件列表页面
// */
// @RequestMapping("/list")
// public String list() {
// return "msg/MsgList";
// }
//
// /**
// * 进入某个具体信件页面
// *
// * @param msgCode
// * @return
// */
// @RequestMapping(value = "/msg/msgList", method = RequestMethod.GET)
// public ModelAndView view(@PathVariable(value = "msgCode") String msgCode) {
// // 1.参数校验 //
//
// // 2.组织业务数据（包括处理主子表关系）
// Msg msg = msgService.findByMsgCode(msgCode);
//
// // 3.返回处理结果
// ModelAndView mav = new ModelAndView();
// mav.addObject("msg", msg);
// mav.setViewName("user/MsgView");
// return mav;
// }
//
// /**
// * 进入信件列表页面<br>
// * -------------editMode用于区分是新增(create)还是修改(update)，默认修改
// */
// @RequestMapping(value = "/msg/msgList", method = RequestMethod.GET)
// public ModelAndView edit(
// @PathVariable(value = "userCode") String userCode,
// @RequestParam(value = "editMode", defaultValue = "update") String editMode) {
// // 1.参数校验
//
// // 2.组织业务数据（包括处理主子表关系）
// SysUser sysUser;
// // 识别编辑模式是新增(create)还是修改(update)
// if ("create".equalsIgnoreCase(editMode)) {
// sysUser = new SysUser();
// } else {
// sysUser = userService.findByPK(userCode);
// sysUser.setPrpDcompany(sysUser.getPrpDcompany());
// }
// // 3.返回处理结果
// ModelAndView mav = new ModelAndView();
// mav.addObject("sysUser", sysUser);
// mav.addObject("editMode", editMode);
// mav.setViewName("user/UserEdit");
// return mav;
// }
//
// }
