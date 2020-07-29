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
	<h1>文章管理</h1>
	
	<table>
		<tr>
			<td>文章ID</td>
			<td>文章标题</td>
			<td>文章内容</td>
			<td>发布时间</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list}" var="a">
			<tr>
				<td>${a.aid}</td>
				<td>${a.title}</td>
				<td>${a.content}</td>
				<td>${a.created}</td>
				<td>
					<a href="queryArticleByAid?aid=${a.aid}">
						<input type="button" value="文章详情">
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<a href="querySpecial"><input type="button" value="返回专题文章管理页面"></a>
</body>
<script type="text/javascript">
	
</script>
</html>