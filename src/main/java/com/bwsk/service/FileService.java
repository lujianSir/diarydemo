package com.bwsk.service;

import org.springframework.web.multipart.MultipartFile;

import com.bwsk.util.Result;

public interface FileService {

	// 文件信息上传
	public String fileUpload(MultipartFile file, int kind);

	// 根据虚拟路径删除文件
	public Result<?> fileinfoDelete(String fvirtualurl);
}
