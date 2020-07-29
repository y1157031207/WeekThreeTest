package com.ypf.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ypf.beans.Article;
import com.ypf.beans.Special;
import com.ypf.beans.SpecialArticle;
import com.ypf.service.SpecialService;

@Controller
public class SpecialController {

	@Resource
	private SpecialService ser;
	
	//前台专题展示
	@RequestMapping("home")
	public String home(Model model){
		List<Special> list = ser.querySpecialAll();
		model.addAttribute("list", list);
		return "home";
	}
	
	//文章列表展示
	@RequestMapping("queryArticleAll")
	public String articleList(Model model){
		List<Article> list = ser.queryArticleAll();
		model.addAttribute("list", list);
		return "article_list";
	}
	
	//专题列表展示
	@RequestMapping("querySpecial")
	public String querySpecial(Model model){
		List<Special> list = ser.querySpecial();
		model.addAttribute("list", list);
		return "special_list";
	}
	
	//查询该专题下所有文章
	@RequestMapping("queryArticleBySid")
	public String queryArticleBySid(Integer sid,Model model){
		Special special = ser.findBySid(sid);
		model.addAttribute("special", special);
		List<Article> articleList = ser.queryArticleBySid(sid);
		model.addAttribute("articleList", articleList);
		return "special_setting";
	}
	
	//专题根据Sid回显
	@RequestMapping("findBySid")
	public String findBySid(Integer sid,Model model){
		Special special = ser.findBySid(sid);
		model.addAttribute("special", special);
		return "special_edit";
	}
	
	//添加或修改专题
	@RequestMapping("SaveOrUpdate")
	@ResponseBody
	public boolean SaveOrUpdate(Special special){
		try {
			if(special.getSid()!=null){
				ser.updateSpecial(special);
			}else{
				ser.addSpecial(special);
			}
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	//添加某专题下的文章
	@RequestMapping("addSA")
	@ResponseBody
	public int addSA(SpecialArticle specialArticle){
		int i = ser.addSA(specialArticle);
		return i;
	}
	
	//根据文章ID判断文章是否存在
	@RequestMapping("queryArticleByAid")
	public String queryArticleByAid(Integer aid,Model model){
		Article article = ser.queryArticleByAid(aid);
		model.addAttribute("article", article);
		List<Special> list = ser.querySpecialAll();
		model.addAttribute("list", list);
		return "article_edit";
	}
	
	//移除某专题下的文章
	@RequestMapping("delSA")
	@ResponseBody
	public boolean delSA(Integer aid){
		try {
			ser.delSA(aid);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	//添加文章
	@RequestMapping("addArticle")
	@ResponseBody
	public boolean addArticle(Article article){
		try {
			ser.addArticle(article);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
}
