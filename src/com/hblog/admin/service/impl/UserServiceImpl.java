/**
 * 
 */
package com.hblog.admin.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import com.hblog.admin.dao.IUserDao;
import com.hblog.admin.model.User;
import com.hblog.admin.service.IUserService;

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
	
	public Map<String,Object> userLogin(User user,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();
		User loginUser = userDao.findByUsername(user);
		
		if(loginUser != null){
			String md5password = DigestUtils.md5Hex(user.getPassword());
			if(md5password.equals(loginUser.getPassword())){
				session.setAttribute("username", loginUser.getUsername());
				map.put("isLogin", true);
			}else{
				map.put("isLogin", false);
				map.put("tips", "密码错误！");
			}
		}else{
			map.put("isLogin", false);
			map.put("tips", "此用户不存在！");
		}
		return map;
	}
	
}
