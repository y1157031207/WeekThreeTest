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
	<h1>专题文章管理</h1>
	
	<a href="special_edit.jsp"><input type="button" value="添加专题"></a>
	<a href="queryArticleAll"><input type="button" value="查看所有文章"></a>
	<a href="article_add.jsp"><input type="button" value="编写文章"></a>
	<table>
		<tr>
			<td>专题标题</td>
			<td>专题文章数量</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list}" var="s">
			<tr>
				<td>${s.title}</td>
				<td>${s.acount}</td>
				<td>
					<a href="queryArticleBySid?sid=${s.sid}"><input type="button" value="追加文章"></a>
					<a href="findBySid?sid=${s.sid}"><input type="button" value="修改专题"></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
<script type="text/javascript">
	
</script>
</html>