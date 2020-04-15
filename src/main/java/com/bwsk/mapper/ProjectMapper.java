package com.bwsk.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bwsk.entity.Project;
import com.bwsk.entity.ProjectUser;

@Repository
public interface ProjectMapper {

	// 添加项目
	public int insertProject(Project project);

	// 项目与用户绑定
	public int insertProjectUser(ProjectUser projectuser);

	// 查询项目是否绑定
	public Project queryProjecByPid(int pid);

	// 查询是否绑定
	public ProjectUser queryProjectUser(ProjectUser projectuser);

	// 修改项目
	public int updateProject(Project project);

	// 查询所有的项目
	public List<Project> queryProject(Project project);

	// 删除项目
	public int deleteProject(Project project);

	// 删除项目对应的日报
	public void deleteDailyByPid(Project project);

	// 删除项目对应的绑定人员
	public void deleteprojectuser(Project project);
}
