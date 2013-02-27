/**
 * 
 */
package com.blog4j.admin.model;

/**
 * 用户实体
 * @author huozhicheng@gmail.com
 * @date 2013-2-21下午5:03:00
 * @version 1.0
 */
public class User {

	private int id;
	private String username;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
