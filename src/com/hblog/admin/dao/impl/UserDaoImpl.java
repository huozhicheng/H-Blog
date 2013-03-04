package com.hblog.admin.dao.impl;

import java.util.HashMap;
import java.util.Map;

import com.hblog.admin.dao.IUserDao;
import com.hblog.admin.model.User;

/**
 * 用户管理Dao
 * @author huozhicheng@gmail.com
 * @date 2013-2-22下午3:41:36
 * @version 1.0
 */
public class UserDaoImpl extends BaseDaoImpl<User> implements IUserDao{
	
	public User findByUsername(User user){
		String hql = "from User where username=:username";
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("username", user.getUsername());
		return this.get(hql, map);
	}
	
}
