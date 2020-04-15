package com.bwsk.entity;

/**
 * 用户实体
 * 
 * @author lujian
 *
 */
public class User {
	private int uid;// ID

	private String username;// 用户名称

	private String utelphone;// 电话

	private String uposition;// 职务

	private String upic;// 用户对应的图片

	private String wxid;// 微信ID与用户绑定

	private String creattime;// 创建的时间

	private int currentuser;// 当前用户 自己管理自己

	public int getCurrentuser() {
		return currentuser;
	}

	public void setCurrentuser(int currentuser) {
		this.currentuser = currentuser;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUtelphone() {
		return utelphone;
	}

	public void setUtelphone(String utelphone) {
		this.utelphone = utelphone;
	}

	public String getUposition() {
		return uposition;
	}

	public void setUposition(String uposition) {
		this.uposition = uposition;
	}

	public String getUpic() {
		return upic;
	}

	public void setUpic(String upic) {
		this.upic = upic;
	}

	public String getWxid() {
		return wxid;
	}

	public void setWxid(String wxid) {
		this.wxid = wxid;
	}

	public String getCreattime() {
		return creattime;
	}

	public void setCreattime(String creattime) {
		this.creattime = creattime;
	}

}
