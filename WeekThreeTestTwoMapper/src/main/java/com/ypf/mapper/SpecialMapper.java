package com.ypf.mapper;

import java.util.List;

import com.ypf.beans.Article;
import com.ypf.beans.Special;
import com.ypf.beans.SpecialArticle;

public interface SpecialMapper {

	//前台专题展示
	public List<Special> querySpecialAll();
	
	//文章列表展示
	public List<Article> queryArticleAll();
	
	//专题列表展示
	public List<Special> querySpecial();

	//查询该专题下所有的文章
	public List<Article> queryArticleBySid(Integer sid);
	
	//添加专题
	public void addSpecial(Special special);
	
	//专题根据Sid回显
	public Special findBySid(Integer sid);
	
	//修改专题
	public void updateSpecial(Special special);
	
	//添加某专题文章
	void addSA(SpecialArticle specialArticle);
	
	//根据文章ID，判断文章是否存在
	Article queryArticleByAid(Integer aid);
	
	//移除某专题下的文章
	void delSA(Integer aid);
	
	//添加文章
	void addArticle(Article article);
}
