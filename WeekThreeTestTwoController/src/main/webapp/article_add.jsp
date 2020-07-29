<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.validate.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<h1>编写文章</h1>
	
	<form action="#">
		文章标题:<input type="text" name="title"><br><br>
		文章内容:<textarea rows="5" cols="80" name="content"></textarea><br><br>
		<input type="button" value="添加" onclick="addArticle()">
		<a href="querySpecial"><input type="button" value="取消编写文章"></a>
	</form>
</body>
<script type="text/javascript">
	function addArticle() {
		$.post("addArticle",$("form").serialize(),function(data){
			if(data){
				alert("添加成功")
				location.href="queryArticleAll"
			}else{
				alert("添加失败")
			}
		})
	}
</script>
</html>