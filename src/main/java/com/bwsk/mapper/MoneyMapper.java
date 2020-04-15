package com.bwsk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bwsk.entity.CollectionMoney;

@Repository
public interface MoneyMapper {

	// 添加收款
	public int insertCollectionMoney(List<CollectionMoney> list);

	// 删除所有的数据
	public void deleteCollectionMoney();

	// 通过项目的ID查询所有的收款信息
	public List<CollectionMoney> queryCollectionMoneys(@Param("collectionMoney") CollectionMoney collectionMoney,
			@Param("type") int type);
}
