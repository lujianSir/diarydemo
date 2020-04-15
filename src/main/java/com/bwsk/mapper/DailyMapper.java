package com.bwsk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bwsk.entity.Comment;
import com.bwsk.entity.Daily;
import com.bwsk.entity.EveryDay;
import com.bwsk.entity.ProjectInfo;
import com.bwsk.entity.Thumb;

@Repository
public interface DailyMapper {

	// 添加日报
	public int insertDaily(Daily daily);

	// 修改日报
	public int updateDaily(Daily daily);

	// 查询当前项目（模糊查询、通过ID查询）
	public List<Daily> queryDaily(Daily daily);

	// 查询当前项目（带点赞）
	public List<Daily> queryDailyThumb(Daily daily);

	// 通过当前项目下面所有天数下面所有的日报
	public List<EveryDay> queryEveryDay(@Param("daily") Daily daily, @Param("dtimes") String[] dtimes);

	// 查询当前日期每个项目下面有多少日报
	public List<ProjectInfo> queryProject(Daily daily);

	// 查询每个月的照片以及视频
	public List<EveryDay> queryEveryDayByMonth(@Param("daily") Daily daily, @Param("creatMouths") String[] creatMouths);

	// 每天凌晨3点插入
	public int insertEveryDay(EveryDay everyDay);

	// 点赞
	public int insertThumb(Thumb thumb);

	// 点赞查询
	public Thumb queryThumb(Thumb thumb);

	// 点赞删除
	public int deleteThumb(Thumb thumb);

	// 添加评论
	public int insertComment(Comment comment);

	// 根据ID以及用户ID来删除
	public int deleteCommentByCmidAndCmuid(Comment comment);

	// 根据ID以及用户ID来查询
	public Comment queryComment(Comment comment);

	// 分享日报
	public Daily queryDailyByDidAndUid(int did, int uid);

	// 通过日报ID删除日报
	public int deleteDailyByDid(int did);

	// 通过日报ID删除评论
	public void deleteCommentByDid(int did);

	// 通过日报ID删除点赞
	public void deleteThumbByDid(int did);
}
