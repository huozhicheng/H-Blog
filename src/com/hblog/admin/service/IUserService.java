/**
 * 
 */
package com.hblog.admin.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.hblog.admin.model.User;

/**
 * 用户管理service
 * @author huozhicheng@gmail.com
 * @date 2013-2-21下午5:09:30
 * @version 1.0
 */
public interface IUserService {

	/**
	 * 用户登录
	 * @param user 登录的用户
	 * @param session 用来保存用户信息
	 * @return
	 */
	public Map<String,Object> userLogin(User user,HttpSession session);
	
}
