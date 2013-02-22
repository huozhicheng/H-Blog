/**
 * 
 */
package com.hzc.admin.dao;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hzc.admin.model.User;

/**
 * @author huozhicheng@gmail.com
 * @date 2013-2-22下午3:41:36
 * @version 1.0
 */
public class UserDao {
	private final static Logger log = Logger.getLogger(UserDao.class);
	private SessionFactory sessionFactory; 
	public void addUser(User user){
		log.info("用户名："+user.getUsername());
		//int s = 5/0;
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
