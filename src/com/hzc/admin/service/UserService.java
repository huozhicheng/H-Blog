/**
 * 
 */
package com.hzc.admin.service;

import com.hzc.admin.dao.UserDao;
import com.hzc.admin.model.User;

/**
 * @author huozhicheng@gmail.com
 * @date 2013-2-21下午5:09:30
 * @version 1.0
 */
public class UserService {

	private UserDao userDao;
	public void addUser(User user){
		userDao.addUser(user);
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
}
