package com.hblog.admin.service;

import java.util.List;

import com.hblog.admin.model.Posts;

/**
 * @Description: 文章service
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-3下午10:02:11
 * @Version 1.0
 */
public interface IPostsService {

	public List<Posts> queryPostsList();
}
