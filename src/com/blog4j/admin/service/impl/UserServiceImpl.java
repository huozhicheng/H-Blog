/**
 * 
 */
package com.blog4j.admin.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.blog4j.admin.dao.IUserDao;
import com.blog4j.admin.model.User;
import com.blog4j.admin.service.IUserService;

/**
 * 用户管理service
 * @author huozhicheng@gmail.com
 * @date 2013-2-21下午5:09:30
 * @version 1.0
 */
public class UserServiceImpl implements IUserService{

	private IUserDao userDao;
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	public void addUser(User user){
		userDao.addUser(user);
	}
	public Map<String,Object> userLogin(User user,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		User loginUser = userDao.findByUsernameAndPassword(user);
		if(loginUser != null){
			session.setAttribute("username", loginUser.getUsername());
			map.put("isLogin", true);
		}else{
			map.put("isLogin", false);
			map.put("tips", "登录失败！");
		}
		return map;
	}
	
}
