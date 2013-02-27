package com.blog4j.admin.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.blog4j.admin.dao.IUserDao;
import com.blog4j.admin.model.User;

/**
 * 用户管理Dao
 * @author huozhicheng@gmail.com
 * @date 2013-2-22下午3:41:36
 * @version 1.0
 */
public class UserDaoImpl implements IUserDao{
	private final static Logger log = Logger.getLogger(UserDaoImpl.class);
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
	public User findByUsername(User user){
		Query query = this.getCurrentSession().createQuery("from User where username=:username");
		query.setParameter("username", user.getUsername());
		List<User> list = query.list();
		if(list.size()>0){
			return (User) list.get(0);
		}
		return null;
	}
	
}
