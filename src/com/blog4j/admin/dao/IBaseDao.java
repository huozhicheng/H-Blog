/**
 * 
 */
package com.blog4j.admin.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author huozhicheng@gmail.com
 * @date 2013-3-4下午12:41:56
 * @version 1.0
 */
public interface IBaseDao<T> {

	/**
	 * 保存一个对象
	 * @param o 对象
	 * @return
	 */
	public Serializable save(T o);
	/**
	 * 删除一个对象
	 * @param o
	 */
	public void delete(T o);
	/**
	 * 更新一个对象
	 * @param o
	 */
	public void update(T o);
	/**
	 * 保存或更新对象
	 * @param o
	 */
	public void saveOrUpdate(T o);
	/**
	 * 查询列表
	 * @param hql HQL语句，可以拼接非预编译参数
	 * @return
	 */
	public List<T> find(String hql);
	/**
	 * 查询列表
	 * @param hql HQL语句，HQL语句中，参数以=:key代替，如：where name=:name
	 * @param param 参数 map中的key与=:key中的key对应
	 * @return
	 */
	public List<T> find(String hql, Map<String, Object> param);
	/**
	 * 查询列表
	 * @param hql HQL语句，HQL语句中，参数以?代替
	 * @param param 参数 按HQL参数顺序
	 * @return
	 */
	public List<T> find(String hql, Object[] param);
	/**
	 * 查询列表
	 * @param hql HQL语句，HQL语句中，参数以?代替
	 * @param param 参数 按HQL参数顺序
	 * @return
	 */
	public List<T> find(String hql, List<Object> param);
	/**
	 * 查询一个对象
	 * @param hql HQL语句，HQL语句中，参数以?代替
	 * @param param 参数 按HQL参数顺序
	 * @return
	 */
	public T get(String hql, Object[] param);
	/**
	 * 查询一个对象
	 * @param hql HQL语句，HQL语句中，参数以?代替
	 * @param param 参数 按HQL参数顺序
	 * @return
	 */
	public T get(String hql, List<Object> param);
	/**
	 * 查询一个对象
	 * @param hql HQL语句，HQL语句中，参数以=:key代替，如：where name=:name
	 * @param param 参数 map中的key与=:key中的key对应
	 * @return
	 */
	public T get(String hql, Map<String, Object> param);
	/**
	 * 查询记录数  
	 * @param hql HQL语句 可以加非预编译参数
	 * @return
	 */
	public Long count(String hql);
	/**
	 * 查询记录数
	 * @param hql HQL语句 ，HQL语句中，参数以=:key代替，如：where name=:name
	 * @param param 参数 map中的key与=:key中的key对应
	 * @return
	 */
	public Long count(String hql, Map<String, Object> param);
	/**
	 * 执行HQL语句，如更新、删除等
	 * @param hql HQL语句 可以加非预编译参数，即直接拼接在HQL语句中
	 * @return
	 */
	public Integer executeHql(String hql);
	/**
	 * 执行HQL语句，如更新、删除等
	 * @param hql HQL语句 ，HQL语句中，参数以?代替
	 * @param param 参数 按HQL参数顺序
	 * @return
	 */
	public Integer executeHql(String hql, Object[] param);
	/**
	 * 执行HQL语句，如更新、删除等
	 * @param hql HQL语句 ，HQL语句中，参数以=:key代替，如：where name=:name
	 * @param param 参数 map中的key与=:key中的key对应
	 * @return
	 */
	public Integer executeHql(String hql, Map<String, Object> param);
}
