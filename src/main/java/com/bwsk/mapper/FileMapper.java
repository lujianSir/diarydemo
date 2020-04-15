package com.bwsk.mapper;

import org.springframework.stereotype.Repository;

import com.bwsk.entity.FileInfo;

@Repository
public interface FileMapper {

	// 添加文件信息
	public void insertFileInfo(FileInfo fileInfo);

	// 删除文件信息
	public void fileinfoDelete(String id);

	// 根据名称查询信息
	public FileInfo queryFileInfoByName(String fvirtualurl);

	// 通过ID删除文件信息
	public void deleteFileInfoById(int id);
}
