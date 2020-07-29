package com.ypf.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ypf.beans.Article;
import com.ypf.beans.Special;
import com.ypf.beans.SpecialArticle;
import com.ypf.mapper.SpecialMapper;

@Service
public class SpecialServiceImpl implements SpecialService {

	@Resource
	private SpecialMapper mapper;
	
	//前台专题展示
	public List<Special> querySpecialAll() {
		// TODO Auto-generated method stub
		return mapper.querySpecialAll();
	}
	
	//文章列表展示
	public List<Article> queryArticleAll() {
		// TODO Auto-generated method stub
		return mapper.queryArticleAll();
	}

	//专题列表展示
	public List<Special> querySpecial() {
		// TODO Auto-generated method stub
		return mapper.querySpecial();
	}
	
	//查询该专题下所有的文章
	public List<Article> queryArticleBySid(Integer sid) {
		// TODO Auto-generated method stub
		return mapper.queryArticleBySid(sid);
	}
	
	//添加专题
	public void addSpecial(Special special) {
		// TODO Auto-generated method stub
		mapper.addSpecial(special);
	}
	
	//专题根据Sid回显
	public Special findBySid(Integer sid) {
		// TODO Auto-generated method stub
		return mapper.findBySid(sid);
	}

	//修改专题
	public void updateSpecial(Special special) {
		// TODO Auto-generated method stub
		mapper.updateSpecial(special);
	}
	
	//添加某专题文章
	public int addSA(SpecialArticle specialArticle) {
		// TODO Auto-generated method stub
		Integer aid = specialArticle.getAid();
		Article article = mapper.queryArticleByAid(aid);
		if(article!=null){
			try {
				mapper.addSA(specialArticle);
				return 1;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return 2;
			}
		}else{
			return 0;
		}
	}
	
	//根据文章ID，判断文章是否存在
	public Article queryArticleByAid(Integer aid) {
		// TODO Auto-generated method stub
		return mapper.queryArticleByAid(aid);
	}

	//移除某专题下的文章
	public void delSA(Integer aid) {
		// TODO Auto-generated method stub
		mapper.delSA(aid);
	}

	//添加文章
	public void addArticle(Article article) {
		// TODO Auto-generated method stub
		mapper.addArticle(article);
	}
}
