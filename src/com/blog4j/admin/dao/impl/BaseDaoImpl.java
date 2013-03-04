package com.blog4j.admin.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.blog4j.admin.dao.IBaseDao;

/**
 * @author huozhicheng@gmail.com
 * @date 2013-3-4下午12:44:10
 * @version 1.0
 */
@SuppressWarnings("unchecked")
public class BaseDaoImpl<T> implements IBaseDao<T> {

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/**
	 * 获得当前的session
	 * @return
	 */
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Serializable save(T o) {
		return this.getCurrentSession().save(o);
	}

	@Override
	public void delete(T o) {
		this.getCurrentSession().delete(o);
	}

	@Override
	public void update(T o) {
		this.getCurrentSession().update(o);
	}

	@Override
	public void saveOrUpdate(T o) {
		this.getCurrentSession().saveOrUpdate(o);
	}

	@Override
	public List<T> find(String hql) {
		return this.getCurrentSession().createQuery(hql).list();
	}
	@Override
	public List<T> find(String hql, Map<String, Object> param) {
		Query query = this.getCurrentSession().createQuery(hql);
		if(param != null && param.size() > 0){
			for(String key : param.keySet()){
				query.setParameter(key, param.get(key));
			}
		}
		return query.list();
	}
	@Override
	public List<T> find(String hql, Object[] param) {
		Query query = this.getCurrentSession().createQuery(hql);
		if(param != null && param.length > 0){
			for(int i=0;i<param.length;i++){
				query.setParameter(i, param[i]);
			}
		}
		return query.list();
	}
	@Override
	public List<T> find(String hql, List<Object> param) {
		Query query = this.getCurrentSession().createQuery(hql);
		if(param != null && param.size()>0){
			for(int i=0;i<param.size();i++){
				query.setParameter(i, param.get(i));
			}
		}
		return query.list();
	}
	@Override
	public T get(String hql, Object[] param) {
		List<T> list = this.find(hql, param);
		if(list != null && list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}
	@Override
	public T get(String hql, List<Object> param) {
		List<T> list = this.find(hql, param);
		if(list != null && list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}
	public T get(String hql, Map<String, Object> param){
		List<T> list = this.find(hql, param);
		if(list != null && list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}
	@Override
	public Long count(String hql) {
		Query query = this.getCurrentSession().createQuery(hql);
		return (Long)query.uniqueResult();
	}
	@Override
	public Long count(String hql, Map<String, Object> param) {
		Query query = this.getCurrentSession().createQuery(hql);
		if(param != null && param.size() > 0){
			for(String key : param.keySet()){
				query.setParameter(key, param.get(key));
			}
		}
		return (Long)query.uniqueResult();
	}
	@Override
	public Integer executeHql(String hql) {
		Query query = this.getCurrentSession().createQuery(hql);
		return query.executeUpdate();
	}
	@Override
	public Integer executeHql(String hql, Object[] param) {
		Query query = this.getCurrentSession().createQuery(hql);
		if(param != null && param.length >0){
			for(int i=0; i<param.length; i++){
				query.setParameter(i, param[i]);
			}
		}
		return query.executeUpdate();
	}
	@Override
	public Integer executeHql(String hql, Map<String, Object> param) {
		Query query = this.getCurrentSession().createQuery(hql);
		if(param != null && param.size()>0){
			for(String key : param.keySet()){
				query.setParameter(key, param.get(key));
			}
		}
		return query.executeUpdate();
	}

}
