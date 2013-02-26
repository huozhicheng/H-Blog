/**
 * 
 */
package com.hzc.admin.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hzc.admin.model.User;

/**
 * 用户管理Dao
 * @author huozhicheng@gmail.com
 * @date 2013-2-22下午3:41:36
 * @version 1.0
 */
public class UserDao {
	private final static Logger log = Logger.getLogger(UserDao.class);
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void addUser(User user){
		this.getCurrentSession().save(user);
	}
	public User findByUsernameAndPassword(User user){
		Query query = this.getCurrentSession().createQuery("from User where username = ? and password = ?");
		query.setString(0, user.getUsername());
		query.setString(1, user.getPassword());
		List<User> list = query.list();
		if(list.size()>0){
			return (User) query.list().get(0);
		}
		return null;
	}
	
}
