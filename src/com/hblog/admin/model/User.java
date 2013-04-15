package com.hblog.admin.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 用户实体
 * @author huozhicheng@gmail.com
 * @date 2013-2-21下午5:03:00
 * @version 1.0
 */
@Entity
public class User {

	private int userId;
	private String username;
	private String password;
	@Id
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
