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
	<h1>专题文章设置</h1>
	
	专题名称:${special.title}<br>
	专题摘要:${special.abs}<br>
	专题文章:<br>
	<table>
		<tr>
			<td>文章ID</td>
			<td>文章标题</td>
			<td>文章发布时间</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${articleList}" var="a">
			<tr>
				<td>${a.aid}</td>
				<td>${a.title}</td>
				<td>${a.created}</td>
				<td>
					<input type="button" value="移除" onclick="del('${a.aid}')">
				</td>
			</tr>
		</c:forEach>
	</table>
	<input type="text" placeholder="文章ID" id="aid">
	<input type="button" value="添加文章" onclick="addSA('${special.sid}')">
	<a href="querySpecial"><input type="button" value="返回专题文章管理页面"></a>
</body>
<script type="text/javascript">
	function addSA(sid) {
		var aid = $("#aid").val()
		
		$.post("addSA",{"sid":sid,"aid":aid},function(data){
			if(data==1){
				alert("添加成功")
				location.reload()
			}else if(data==2){
				alert("添加失败")
			}else if(data==0){
				alert("文章ID不存在,请重新输入...")
			}
		})
	}
	
	function del(aid) {
		$.post("delSA",{"aid":aid},function(data){
			if(data){
				alert("删除成功")
				location.reload()
			}else{
				alert("删除失败")
			}
		})
	}
</script>
</html>