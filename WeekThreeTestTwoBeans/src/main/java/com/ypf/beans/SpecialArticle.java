package com.ypf.beans;

public class SpecialArticle {

	private Integer sid;
	private Integer aid;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public SpecialArticle(Integer sid, Integer aid) {
		super();
		this.sid = sid;
		this.aid = aid;
	}
	public SpecialArticle() {
		super();
	}
	@Override
	public String toString() {
		return "SpecialArticle [sid=" + sid + ", aid=" + aid + "]";
	}
	
}
