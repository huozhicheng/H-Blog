/**
 * 
 */
package com.hzc.admin.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.hzc.admin.dao.UserDao;
import com.hzc.admin.model.User;

/**
 * 用户管理service
 * @author huozhicheng@gmail.com
 * @date 2013-2-21下午5:09:30
 * @version 1.0
 */
public class UserService {

	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
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
