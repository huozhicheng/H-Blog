package com.hblog.admin.action;

import java.util.ArrayList;
import java.util.List;

import com.hblog.admin.model.Posts;
import com.hblog.admin.service.IPostsService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @Description: 文章Action
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-3下午10:10:22
 * @Version 1.0
 */
public class PostsAction extends ActionSupport{

	private static final long serialVersionUID = -1039229704661025044L;
	private List<Posts> postsList = new ArrayList<Posts>();
	
	private IPostsService postsService;
	
	public void setPostsService(IPostsService postsService) {
		this.postsService = postsService;
	}

	public List<Posts> getPostsList() {
		return postsList;
	}


	public String list(){
		postsList = postsService.queryPostsList();
		return SUCCESS;
	}
}
