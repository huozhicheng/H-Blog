package com.hblog.admin.dao;

import java.util.List;

import com.hblog.admin.model.Posts;

/**
 * @Description: 文章DAO
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-3下午9:55:33
 * @Version 1.0
 */
public interface IPostsDao extends IBaseDao<Posts> {

	public List<Posts> findPostsList();
}
