package com.bwsk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bwsk.entity.Project;
import com.bwsk.entity.User;
import com.bwsk.service.ProjectService;
import com.bwsk.service.UserService;
import com.bwsk.util.AesCbcUtil;
import com.bwsk.util.HttpRequest;
import com.bwsk.util.Result;

import net.sf.json.JSONObject;

/**
 * 用户相关的接口
 * 
 * @author lujian
 *
 */
@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private ProjectService projectService;

	/**
	 * 添加或者修改用户信息
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/insertOrUpdateUser")
	public Result<?> insertOrUpdateUser(User user) {
		int row = userService.insertOrUpdateUser(user);
		if (row > 0) {
			return Result.success("操作成功");
		} else {
			return Result.error(500, "服务端错误");
		}
	}

	/**
	 * 通过微信ID或者用户ID查询关联的信息
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/queryUserByWxIdOrUid")
	public Result<?> queryUserByWxIdOrUid(User user) {
		User u = userService.queryUserByWxIdOrUid(user);
		if (u == null) {
			u = new User();
			System.out.println(user.getUsername());
			u.setUsername(user.getUsername());
			u.setUpic(user.getUpic());
			u.setWxid(user.getWxid());
			userService.insertOrUpdateUser(u);// 不存在则添加
		}
		return Result.success(u);

	}

	/**
	 * 通过项目ID以及用户ID查询用户
	 * 
	 * @param uid
	 * @param pid
	 * @return
	 */
	@RequestMapping("/queryUserByUidAndPid")
	public Result<?> queryUserByUidAndPid(int uid, int pid) {
		List<User> list = userService.queryUserByUidAndPid(uid, pid);
		return Result.success(list);
	}

	/**
	 * 通过code获取openid
	 * 
	 * @param code
	 * @return
	 */
//	@RequestMapping("/getWxOpineId")
//	public Result<?> getWxOpineId(String code, User user) {
//		// 微信小程序ID
//		String appid = "wx05797fdcc1a18a71";
//		// 微信小程序秘钥
//		String secret = "f7480871036eb66ce645911630c7fa63";
//
//		// 根据小程序穿过来的code想这个url发送请求
//		String url = "https://api.weixin.qq.com/sns/jscode2session?appid=" + appid + "&secret=" + secret + "&js_code="
//				+ code + "&grant_type=authorization_code";
//		// 发送请求，返回Json字符串
//		String str = WeChatUtil.httpRequest(url, "GET", null);
//		// 转成Json对象 获取openid
//		JSONObject jsonObject = JSONObject.parseObject(str);
//
//		// 我们需要的openid，在一个小程序中，openid是唯一的
//		String openid = jsonObject.get("openid").toString();
//		user.setWxid(openid);
//		User u = userService.queryUserByWxIdOrUid(user);// 查询是否存在
//		if (u == null) {
//			userService.insertOrUpdateUser(user);// 不存在则添加
//			u = userService.queryUserByWxIdOrUid(user);
//		}
//		return Result.success(u.getUid());
//	}

	/**
	 * 解密
	 * 
	 * @param encryptedData
	 * @param iv
	 * @param code
	 * @return
	 */
	@RequestMapping(value = "/getOpenGid", method = RequestMethod.GET)
	public Map getOpenGid(String encryptedData, String iv, String code, String wxspAppid, String wxspSecret) {
		Map map = new HashMap();
		// 登录凭证不能为空
		if (code == null || code.length() == 0) {
			map.put("status", 0);
			map.put("msg", "code 不能为空");
			return map;
		}
//		// 小程序唯一标识 (在微信小程序管理后台获取)
//		String wxspAppid = "wx05797fdcc1a18a71";
//		// 小程序的 app secret (在微信小程序管理后台获取)
//		String wxspSecret = "6de53382f8d8ac8c67dcc179a59123a3";
		// 授权（必填）
		String grant_type = "authorization_code";

		//////////////// 1、向微信服务器 使用登录凭证 code 获取 session_key 和 openid ////////////////
		// 请求参数
		String params = "appid=" + wxspAppid + "&secret=" + wxspSecret + "&js_code=" + code + "&grant_type="
				+ grant_type;
		// 发送请求
		String sr = HttpRequest.sendGet("https://api.weixin.qq.com/sns/jscode2session", params);
		// 解析相应内容（转换成json对象）
		JSONObject json = JSONObject.fromObject(sr);
		// 获取会话密钥（session_key）
		String session_key = json.get("session_key").toString();
		// 用户的唯一标识（openid）
		String openid = (String) json.get("openid");

		//////////////// 2、对encryptedData加密数据进行AES解密 ////////////////
		try {
			String result = AesCbcUtil.decrypt(encryptedData, session_key, iv, "UTF-8");
			if (null != result && result.length() > 0) {
				map.put("status", 1);
				map.put("msg", "解密成功");
				JSONObject resultInfo = JSONObject.fromObject(result);
				map.put("resData", resultInfo);
				map.put("openid", openid);
				return map;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		map.put("status", 0);
		map.put("msg", "解密失败");
		return map;
	}

	/**
	 * 群聊绑定
	 * 
	 * @param pid
	 * @param openGid
	 * @param openid
	 * @return
	 */
	@RequestMapping("/insertOpenGid")
	public Result<?> insertOpenGid(int pid, String openGid, String openid) {
		Project project = projectService.queryProjecByPid(pid);
		User user = new User();
		user.setWxid(openid);
		user = userService.queryUserByWxIdOrUid(user);
		int row = 0;
		if (project.getWeixin() == null || project.getWeixin().equals("")) {
			if (project.getUid() == user.getUid()) {
				row = userService.insertOpenGid(pid, openGid, openid);
			} else {
				row = userService.insertOpenGidOther(pid, openid);
			}
		} else {
			row = userService.insertOpenGid(pid, openGid, openid);
		}

		return Result.success(row);
	}

}
