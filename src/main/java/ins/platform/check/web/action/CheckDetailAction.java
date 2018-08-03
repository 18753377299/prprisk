package ins.platform.check.web.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ins.framework.web.AjaxResult;
import ins.framework.web.action.BaseAjaxAction;
import ins.platform.check.service.facade.CheckDetailService;
import ins.platform.vo.ImsCheckDetailVo;

@Controller
@RequestMapping("/checkDetail")
public class CheckDetailAction extends BaseAjaxAction {
	
	@Autowired
	CheckDetailService checkDetailService;
	
	@RequestMapping("/preCheckDetail")
	public ModelAndView preCheckDetail(HttpSession session){
		String type = "";
		Date workDay = new Date();
		String userCode = (String)session.getAttribute("userCode");
		ImsCheckDetailVo vo = checkDetailService.queryCheckByUserCodeAndWorkDay(userCode, workDay);
		if(vo == null){
			vo = new ImsCheckDetailVo();
			vo.setUserCode(userCode);
			vo.setWorkDay(workDay);
			type = "checkIn";
		}else{
			type = "checkOut";
		}
		ModelAndView mod = new ModelAndView();
		mod.addObject("type", type);
		mod.addObject("imsCheckDetail",vo);
		mod.setViewName("check/CheckDetail");
		return mod;
	}
	
	@RequestMapping(value = "/checkDetail/{type}/{workDay}")
	@ResponseBody
	public AjaxResult checkDetail(HttpSession session,
			HttpServletRequest request,
			@PathVariable(value="workDay") String workDay,
			@PathVariable(value="type") String type,
			@RequestParam("checkInReason") String checkInReason,
			@RequestParam("checkOutReason") String checkOutReason){
		AjaxResult ajaxResult = new AjaxResult();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String workDay2 = sdf.format(date);
		String userCode = (String)session.getAttribute("userCode");
		if(workDay2.equals(workDay)){
			ImsCheckDetailVo vo = checkDetailService.queryCheckByUserCodeAndWorkDay(userCode, date);
			if(vo == null && "checkIn".equals(type)){
				vo = new ImsCheckDetailVo();
				vo.setWorkDay(date);
				vo.setCheckInTime(date);
				vo.setCheckOutTime(null);
				vo.setUserCode(userCode);
				vo.setCheckInReason(checkInReason);
				checkDetailService.save(vo);
				request.setAttribute("imsCheckDetail", vo);
				request.setAttribute("type", type);
				ajaxResult.setData(vo.getId());
				ajaxResult.setStatusText("checkIn");
			}else if(vo != null && "checkOut".equals(type)){
				vo.setCheckOutTime(date);
				vo.setCheckOutAddress(vo.getCheckOutAddress());
				vo.setCheckOutReason(checkOutReason);
				checkDetailService.update(vo);
				request.setAttribute("imsCheckDetail", vo);
				request.setAttribute("type", type);
				ajaxResult.setData(vo.getId());
				ajaxResult.setStatusText("checkOut");
			}else{
				ajaxResult.setStatusText("false");
			}
		}else{
			ajaxResult.setStatusText("false");
		}
		return ajaxResult;
	}
	
//	@RequestMapping("/checkReason/{id}/{checkType}")
//	public ModelAndView checkReason(@PathVariable("id") String id,
//			@PathVariable("checkType") String checkType){
//		ModelAndView mod = new ModelAndView();
//		mod.addObject("checkType", checkType);
//		mod.addObject("id", id);
//		mod.setViewName("check/QueryCheck");
//		return mod;
//	}
//	
//	@RequestMapping("/addReason/{id}/{checkType}")
//	public ModelAndView addReason(@PathVariable("id") String id,
//			@PathVariable("checkType") String checkType,
//			@RequestParam("reason") String reason){
//		ModelAndView mod = new ModelAndView();
//		ImsCheckDetailVo vo = checkDetailService.findByPK(id);
//		if("checkIn".equals(checkType)){
//			vo.setCheckInReason(reason);
//		}else{
//			vo.setCheckOutReason(reason);
//		}
//		return mod;
//	}
	
	@RequestMapping("/preQueryCheck")
	public String preQueryCheck(){
		return "check/QueryCheck";
	}
	
	@RequestMapping("/preQueryCheckByMonth")
	public String preQueryCheckByMonth(){
		return "check/QueryCheckByMonth";
	}
	
	@RequestMapping("/preQueryCheckByDay")
	public String preQueryCheckByDay(){
		return "check/QueryCheckByDay";
	}
	
}
