<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<link rel="stylesheet" href="<%=basePath %>css/index.css" type="text/css">
</head>
<body background="<%=basePath %>images/bg.jpg">
	<div class=index>
	<a href="addProduct.jsp">添加商品</a><br><br>
	<a href="showProduct">所有商品</a>
	</div>
</body>
</html>