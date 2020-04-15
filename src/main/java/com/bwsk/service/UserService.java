package com.bwsk.service;

import java.util.List;

import com.bwsk.entity.User;

public interface UserService {

	// 添加用户信息
	public int insertOrUpdateUser(User user);

	// 通过微信ID或者用户ID查询关联的信息
	public User queryUserByWxIdOrUid(User user);

	// 通过项目ID以及用户ID查询用户
	public List<User> queryUserByUidAndPid(int uid, int pid);

	// 绑定群组信息
	public int insertOpenGid(int pid, String openGid, String openid);

	// 绑定群组信息
	public int insertOpenGidOther(int pid, String openid);

}
