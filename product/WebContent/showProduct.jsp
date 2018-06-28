<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showProduct</title>
<link rel="stylesheet" href="<%=basePath%>css/showProduct.css" type="text/css">
</head>
<body>
	<center>

		<br>
		<table>
			<tr >
				<td colspan="4">
					<div id="box">
							<input type="text" name="pname" placeholder="请输入商品名称">
							<input type="button" value="搜索" class="search" name="pname"
							onclick="window.location.href='getProductByName?pname=${pname}'">
					</div>
				</td>
				<td colspan="4"><a href="addProduct.jsp">添加商品</a></td>
			</tr>
			<tr>
				<td>pid</td>
				<td>名字</td>
				<td>价格</td>
				<td>数量</td>
				<td>状态</td>
				<td>描述</td>
				<td colspan="2" align="center">操作</td>
			</tr>

			<c:forEach items="${plist}" var="p">
				<tr>
					<td>${p.pid }</td>
					<td>${p.pname }</td>
					<td>${p.price }</td>
					<td>${p.pnum}</td>
					<td>${p.pstatus}</td>
					<td>${p.pdescribe}</td>
					<td><a href="selectOneProduct?pid=${p.pid }">修改</a></td>
					<td><a href="delProduct?pid=${p.pid }">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>