package com.bwsk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bwsk.entity.Company;
import com.bwsk.entity.Project;
import com.bwsk.service.CompanyService;
import com.bwsk.service.ProjectService;
import com.bwsk.util.Result;

/**
 * 公司相关的接口
 * 
 * @author lujian
 *
 */
@RestController
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	private CompanyService companyService;

	@Autowired
	private ProjectService projectService;

	/**
	 * 通过公司ID或者用户ID查询公司的信息
	 *
	 * @param company
	 * @return
	 */
	@RequestMapping(value = "/queryCompanyByUidOrCid")
	public Result<?> queryCompanyByUidOrCid(Company company) {
		List<Company> list = companyService.queryCompanyByUidOrCid(company);
		return Result.success(list);
	}

	/**
	 * 添加或者修改公司信息
	 *
	 * @param company
	 * @return
	 */
	@RequestMapping(value = "/insertOrUpdateCompany")
	public Result<?> insertOrUpdateCompany(Company company) {
		return companyService.insertOrUpdateCompany(company);
	}

	/**
	 * 根据ID删除公司信息
	 *
	 * @param cid
	 * @return
	 */
	@RequestMapping(value = "/deleteCompanyByCid")
	public Result<?> deleteCompanyByCid(int cid) {
		Project project = new Project();
		project.setCid(cid);
		List<Project> list = projectService.queryProject(project);
		if (list.size() > 0) {
			return Result.error(500, "有绑定数据");
		} else {
			companyService.deleteCompanyByCid(project.getCid());
			return Result.success("删除成功");
		}
	}
}
