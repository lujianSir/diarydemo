package com.bwsk.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bwsk.service.FileService;
import com.bwsk.util.Result;

/**
 * 用户相关的接口
 * 
 * @author lujian
 *
 */
@Controller
@RequestMapping("/file")
public class FileController {

	@Autowired
	private FileService fileService;

	@RequestMapping("/test")
	public String test() {
		return "ceshi";
	}

	/**
	 * 实现文件上传
	 */
	@RequestMapping("/upload")
	@ResponseBody
	public String fileUpload(HttpServletRequest request,
			@RequestParam(value = "file", required = false) MultipartFile file, int kind) {
		return fileService.fileUpload(file, kind);
	}

	/**
	 * 根据虚拟文件名称删除数据
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result<?> fileinfoDelete(String fvirtualurl) {
		return fileService.fileinfoDelete(fvirtualurl);
	}
}
