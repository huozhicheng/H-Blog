/**
 * 
 */
package com.hblog.admin.dao;

import com.hblog.admin.model.User;

/**
 * 用户管理Dao
 * @author huozhicheng@gmail.com
 * @date 2013-2-22下午3:41:36
 * @version 1.0
 */
public interface IUserDao extends IBaseDao<User>{
	
	/**
	 * 根据用户名和密码，查询用户
	 * 此方法用户登录
	 * @param user
	 * @return
	 */
	public User findByUsername(User user);
	
}
