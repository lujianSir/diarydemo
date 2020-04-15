package com.bwsk.service;

import java.util.List;

import com.bwsk.entity.Material;

public interface MaterialService {

	// 添加材料
	public int insertMaterial(List<Material> list);

	// 通过项目的ID查询所有的材料信息
	public List<Material> queryMaterials(Material material, int type) throws Exception;
}
