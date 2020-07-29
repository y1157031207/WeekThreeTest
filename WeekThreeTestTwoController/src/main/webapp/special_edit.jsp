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
	<h1>专题编辑</h1>
	
	<form action="#">
		<input type="hidden" name="sid" value="${special.sid}">
		专题标题:<input type="text" name="title" value="${special.title}"><br><br>
		专题摘要:<textarea rows="5" cols="80" name="abs">${special.abs}</textarea><br><br>
		<input type="button" value="保存" onclick="SaveOrUpdate()">
		<a href="querySpecial"><input type="button" value="取消专题编辑"></a>
	</form>
</body>
<script type="text/javascript">
	function SaveOrUpdate() {
		$.post("SaveOrUpdate",$("form").serialize(),function(data){
			if(data){
				alert("保存成功")
				location.href="querySpecial"
			}else{
				alert("保存失败")
			}
		})
	}
</script>
</html>