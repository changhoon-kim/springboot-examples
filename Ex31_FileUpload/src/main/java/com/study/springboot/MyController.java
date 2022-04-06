package com.study.springboot;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class MyController {
	@RequestMapping("/")
	public String root() throws Exception {
		return "FileUpload";
	}
	
	@RequestMapping("/uploadForm")
	public String uploadForm() {
		return "fileForm";
	}
	
	@RequestMapping("/uploadOk")
	public @ResponseBody String uploadOk(HttpServletRequest request) {
		int size = 1024 * 1024 * 10; // 10M
		String file = "";
		String oriFile = "";
		
		JSONObject obj = new JSONObject();
		
		try {
			String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
			
			MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
			
			System.out.println("11111");
			Enumeration files = multi.getFileNames();
			String str = (String)files.nextElement();
			
			file = multi.getFilesystemName(str);
			oriFile = multi.getOriginalFileName(str);
			
			obj.put("success", new Integer(1));
			obj.put("desc", "upload success");
		} catch (Exception e) {
			e.printStackTrace();
			obj.put("success", new Integer(0));
			obj.put("desc", "upload fail");
		}
		
		return obj.toJSONString();
	}
}