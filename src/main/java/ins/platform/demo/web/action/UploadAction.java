package ins.platform.demo.web.action;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ins.framework.exception.BusinessException;
import ins.framework.web.action.BaseAjaxAction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping("/upload")
public class UploadAction extends BaseAjaxAction {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(UploadAction.class);

	@RequestMapping(value = "/preUpload")
	public String preUpload() {
		return "demo/upload/Upload";
	}

	/**
	 * 单个文件上传
	 * 
	 * @return
	 */
	@RequestMapping(value = "/upload")
	public ModelAndView upload(HttpServletRequest request,
			@RequestParam(value = "file") MultipartFile file) {
		ModelAndView mav = new ModelAndView();
		// 基于file创建一个文件输入流
		InputStream is = null;
		String uploadPath = request.getSession().getServletContext()
				.getRealPath("/")
				+ File.separator + "upload" + File.separator;
		File toFile;
		if (file.getSize() >= 0) {
			if (file.getSize() > 1024 * 1024 * 10) {
				throw new BusinessException("文件过大，只能上传10M以下文件", false);
			}
			try {
				is = file.getInputStream();

				// 设置上传文件目录
				// 设置目标文件 不存在是创建
				File pathFile = new File(uploadPath);
				if (!pathFile.exists()) {
					pathFile.mkdir();
				}
				toFile = new File(uploadPath, file.getOriginalFilename());
				file.transferTo(toFile);
				List<String> paths = new ArrayList<String>();
				paths.add(toFile.getAbsolutePath());
				mav.addObject("paths", paths);
			} catch (FileNotFoundException e) {

				LOGGER.error(e.getMessage(), e);

			} catch (IOException e) {

				LOGGER.error(e.getMessage(), e);

			} finally {
				try {
					// 关闭输入流
					if (null != is) {
						is.close();
					}
				} catch (IOException e) {
					// e.printStackTrace();
					LOGGER.error(e.getMessage(), e);
				}
			}
		}
		mav.setViewName("demo/upload/Success");
		return mav;
	}

	/**
	 * 批量文件上传
	 * 
	 * @return
	 */
	@RequestMapping(value = "/uploadFiles")
	public ModelAndView uploadFiles(HttpServletRequest request,
			@RequestParam(value = "files") MultipartFile[] files) {
		ModelAndView mav = new ModelAndView();
		List<String> paths = new ArrayList<String>();
		if (files.length > 0) {
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				String fileFileName = files[i].getOriginalFilename();
				if (file.getSize() > 1024 * 1024 * 10) {
					throw new BusinessException("文件过大，只能上传10M以下文件", false);
				}
				// 基于file创建一个文件输入流
				InputStream is = null;
				try {
					is = file.getInputStream();

					// 设置上传文件目录
					String uploadPath = request.getSession()
							.getServletContext().getRealPath("/")
							+ File.separator + "upload" + File.separator;
					// 设置目标文件 不存在是创建
					File pathFile = new File(uploadPath);
					if (!pathFile.exists()) {
						pathFile.mkdir();
					}
					File toFile = new File(uploadPath, fileFileName);
					file.transferTo(toFile);
					paths.add(toFile.getAbsolutePath());
				} catch (FileNotFoundException e) {
					LOGGER.error(e.getMessage(), e);
				} catch (IOException e) {
					LOGGER.error(e.getMessage(), e);
				} finally {
					try {
						if (null != is) {
							// 关闭输入流
							is.close();
						}
					} catch (IOException e) {
						LOGGER.error(e.getMessage(), e);
					}
				}
			}
			mav.addObject("paths", paths);
		}
		mav.setViewName("demo/upload/Success");
		return mav;
	}
}
