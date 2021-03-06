package com.bwsk.service;

import java.util.List;

import com.bwsk.entity.Company;
import com.bwsk.util.Result;

public interface CompanyService {

	// 通过用户ID或者公司ID查询所有的公司信息
	public List<Company> queryCompanyByUidOrCid(Company company);

	// 添加或者修改公司信息
	Result<?> insertOrUpdateCompany(Company company);

	// 通过企业的ID删除企业
	public int deleteCompanyByCid(int cid);

}
