package com.ypf.beans;

import java.util.List;

public class Special {

	private Integer sid;
	private String title;
	private String abs;
	private String created;
	
	private Integer acount;
	
	private List<Article> articleList;

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAbs() {
		return abs;
	}

	public void setAbs(String abs) {
		this.abs = abs;
	}

	public String getCreated() {
		return created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public Integer getAcount() {
		return acount;
	}

	public void setAcount(Integer acount) {
		this.acount = acount;
	}

	public List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}

	public Special(Integer sid, String title, String abs, String created, Integer acount) {
		super();
		this.sid = sid;
		this.title = title;
		this.abs = abs;
		this.created = created;
		this.acount = acount;
	}

	public Special() {
		super();
	}

	@Override
	public String toString() {
		return "Special [sid=" + sid + ", title=" + title + ", abs=" + abs + ", created=" + created + ", acount="
				+ acount + ", articleList=" + articleList + "]";
	}
	
	
}
