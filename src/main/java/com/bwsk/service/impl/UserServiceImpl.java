package com.bwsk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bwsk.entity.Project;
import com.bwsk.entity.ProjectUser;
import com.bwsk.entity.User;
import com.bwsk.mapper.ProjectMapper;
import com.bwsk.mapper.UserMapper;
import com.bwsk.service.UserService;
import com.bwsk.util.Utils;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private ProjectMapper projectMapper;

	@Override
	public int insertOrUpdateUser(User user) {
		// TODO Auto-generated method stub
		int row = 0;
		if (user.getUid() > 0) {// 存在 修改
			row = userMapper.updateUser(user);
		} else {// 不存在 添加
			String currentTime = Utils.getCurrent();
			user.setCreattime(currentTime);
			row = userMapper.insertUser(user);
		}
		return row;
	}

	@Override
	public User queryUserByWxIdOrUid(User user) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByWxIdOrUid(user);
	}

	@Override
	public List<User> queryUserByUidAndPid(int uid, int pid) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByUidAndPid(uid, pid);
	}

	@Override
	public int insertOpenGid(int pid, String openGid, String openid) {
		// TODO Auto-generated method stub
		int row = 0;
		Project project = new Project();
		project.setPid(pid);
		project.setWeixin(openGid);
		row = projectMapper.updateProject(project);
		User user = new User();
		user.setWxid(openid);
		User u = userMapper.queryUserByWxIdOrUid(user);
		ProjectUser projectUser = new ProjectUser();
		if (u == null) {
			String currentTime = Utils.getCurrent();
			user.setCreattime(currentTime);
			userMapper.insertUser(user);
			projectUser.setUid(user.getUid());
		} else {
			projectUser.setUid(u.getUid());
		}
		projectUser.setPid(pid);
		ProjectUser pj = projectMapper.queryProjectUser(projectUser);
		if (pj == null) {
			projectMapper.insertProjectUser(projectUser);
		}

		return row;
	}

	@Override
	public int insertOpenGidOther(int pid, String openid) {
		// TODO Auto-generated method stub
		int row = 0;
		User user = new User();
		user.setWxid(openid);
		User u = userMapper.queryUserByWxIdOrUid(user);
		ProjectUser projectUser = new ProjectUser();
		if (u == null) {
			String currentTime = Utils.getCurrent();
			user.setCreattime(currentTime);
			userMapper.insertUser(user);
			projectUser.setUid(user.getUid());
		} else {
			projectUser.setUid(u.getUid());
		}
		projectUser.setPid(pid);
		ProjectUser pj = projectMapper.queryProjectUser(projectUser);
		if (pj == null) {
			projectMapper.insertProjectUser(projectUser);
		}

		return row;
	}

}
