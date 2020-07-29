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
	<h1>前台展示</h1>
	
	<c:forEach items="${list}" var="s">
		<span style="color: red;font-size: 20px">${s.title}</span>
		${s.abs}<br>
		<br>
		<ol>
		<c:forEach items="${s.articleList}" var="article">
			<a href="queryArticleByAid?aid=${article.aid}"><li>${article.title}</li></a>
		</c:forEach>
		</ol>
	</c:forEach>
</body>
<script type="text/javascript">
	
</script>
</html>