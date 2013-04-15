package com.hblog.admin.service.impl;

import java.util.List;

import com.hblog.admin.dao.IPostsDao;
import com.hblog.admin.model.Posts;
import com.hblog.admin.service.IPostsService;

/**
 * @Description: 文章Service
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-3下午10:05:22
 * @Version 1.0
 */
public class PostsServiceImpl implements IPostsService {

	private IPostsDao postsDao;
	
	@Override
	public List<Posts> queryPostsList() {
		
		return this.postsDao.findPostsList();
	}

	public void setPostsDao(IPostsDao postsDao) {
		this.postsDao = postsDao;
	}

}
