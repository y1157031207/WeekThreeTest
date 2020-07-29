package com.ypf.beans;

public class Article {

	private Integer aid;
	private String title;
	private String content;
	private String created;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public Article(Integer aid, String title, String content, String created) {
		super();
		this.aid = aid;
		this.title = title;
		this.content = content;
		this.created = created;
	}
	public Article() {
		super();
	}
	@Override
	public String toString() {
		return "Article [aid=" + aid + ", title=" + title + ", content=" + content + ", created=" + created + "]";
	}
	
}
