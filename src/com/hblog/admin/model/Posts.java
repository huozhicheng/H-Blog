package com.hblog.admin.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * @Description: 文章实体
 * @Author huozhicheng@gmail.com
 * @Date 2013-4-3下午9:35:45
 * @Version 1.0
 */
@Entity
public class Posts {

	private int postsId;
	private User user;
	private Date date;
	private String content;
	private String title;
	
	@Id
	@GeneratedValue
	public int getPostsId() {
		return postsId;
	}
	public void setPostsId(int postsId) {
		this.postsId = postsId;
	}
	@ManyToOne
	@JoinColumn(name="userid")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
