package com.bwsk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bwsk.entity.User;

@Repository
public interface UserMapper {

	// 添加用户信息
	public int insertUser(User user);

	// 修改用户信息
	public int updateUser(User user);

	// 通过微信ID或者用户ID查询关联的信息
	public User queryUserByWxIdOrUid(User user);

	// 通过项目ID以及用户ID查询用户
	public List<User> queryUserByUidAndPid(@Param("uid") int uid, @Param("pid") int pid);

}
