package com.hzc.admin.action;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hzc.admin.model.User;
import com.hzc.admin.service.UserService;
import com.hzc.admin.service.WelcomeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author huozhicheng@gmail.com
 * @date 2013-2-18下午2:41:01
 * @version 1.0
 */
public class WelcomeAction extends ActionSupport {

	private static final long serialVersionUID = 2010543653959681697L;

	private WelcomeService welcomeService;
	private UserService userService;
	
	private String username;

	public String test(){
		ActionContext ac = ActionContext.getContext();
		ac.getSession().put("test_s", "我是session");
		welcomeService.test();
		return SUCCESS;
	}
	public String addUser(){
		User user = new User();
		user.setUsername(username);
		try {
			userService.addUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public void setWelcomeService(WelcomeService welcomeService) {
		this.welcomeService = welcomeService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
