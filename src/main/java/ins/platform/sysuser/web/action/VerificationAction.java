package ins.platform.sysuser.web.action;

import ins.platform.sysuser.util.ImageCodeUtil;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * 
 * 生成验证码图片
 *
 */
@Controller
@RequestMapping("/verification")
public class VerificationAction {
	private static final Logger LOGGER = LoggerFactory.getLogger(VerificationAction.class);
	@RequestMapping(value="/imageCode")
	public String imageCode(HttpServletResponse response,HttpSession session){
	
		//图片的大小
		BufferedImage bi=ImageCodeUtil.getImage(70,20);
		//产生随机验证码的四个值
		String r=ImageCodeUtil.getCode();
		//获取输出流，向网页输出图片字符流
		try {
			ImageIO.write(bi, "jpeg", response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			LOGGER.error(e.getMessage(),e);
		}
		
		
		//把随机生成的验证码存入session中，用于之后验证验证码是否输入正确
		session.setAttribute("imageCode", r);
		
		return null;
	}
}
