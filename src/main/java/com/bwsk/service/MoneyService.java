package com.bwsk.service;

import java.util.List;

import com.bwsk.entity.CollectionMoney;

public interface MoneyService {

	// 添加收款
	public int insertCollectionMoney(List<CollectionMoney> list);

	// 通过项目的ID查询所有的收款信息
	public List<CollectionMoney> queryCollectionMoneys(CollectionMoney collectionMoney, int type) throws Exception;
}
