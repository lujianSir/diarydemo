package com.bwsk.service;

import java.util.List;

import com.bwsk.entity.Comment;
import com.bwsk.entity.Daily;
import com.bwsk.entity.EveryDay;
import com.bwsk.entity.ProjectInfo;
import com.bwsk.entity.Thumb;

public interface DailyService {

	// 添加获取修改日报
	public int insertOrUpdateDaily(Daily daily);

	// 查询日报
	public List<Daily> queryDaily(Daily daily);

	// 查询当前项目（带点赞）
	public List<Daily> queryDailyThumb(Daily daily);

	// 通过日期排序查询
	public List<EveryDay> queryEveryDay(Daily daily, String[] dtimes);

	// 查询当前日期每个项目下面有多少日报
	public List<ProjectInfo> queryProject(Daily daily);

	// 查询每个月的照片以及视频
	public List<EveryDay> queryEveryDayByMonth(Daily daily, String[] creatMouths);

	// 每天凌晨3点插入
	public int insertEveryDay(EveryDay everyDay);

	// 点赞
	public int insertThumb(Thumb thumb);

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

}
