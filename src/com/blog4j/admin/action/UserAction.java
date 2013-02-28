package com.blog4j.admin.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.blog4j.admin.model.User;
import com.blog4j.admin.service.IUserService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 用户管理Action
 * @author huozhicheng@gmail.com
 * @date 2013-2-25上午10:20:03
 * @version 1.0
 */
public class UserAction extends ActionSupport {
	private static final long serialVersionUID = -3690511690957925008L;
	private IUserService userService;
	private User user;
	private String tips;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	public String getTips() {
		return tips;
	}
	/**
	 * 登录
	 * @return
	 */
	public String login(){
		Map<String,Object> map = userService.userLogin(user,ServletActionContext.getRequest().getSession());
		if((Boolean)map.get("isLogin")){
			return SUCCESS;
		}else{
			tips = (String) map.get("tips");
			return LOGIN;
		}
	}
	
	public String add(){
		try {
			userService.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
