package com.hblog.admin.dao.impl;

import java.util.List;

import com.hblog.admin.dao.IPostsDao;
import com.hblog.admin.model.Posts;

/**
 * @Description: 文章DAO
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-3下午9:56:41
 * @Version 1.0
 */
public class PostsDaoImpl extends BaseDaoImpl<Posts> implements IPostsDao {

	@Override
	public List<Posts> findPostsList() {
		
		return this.find("from Posts");
	}

	
}
