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
<title>addProduct</title>
<link rel="stylesheet" href="<%=basePath %>css/addProduct.css" type="text/css">
</head>
<body background="<%=basePath %>images/bg.jpg">
<center>
	<form action="addProduct" method="post">
    <table>
        <tr><td>pname</td>  <td><input type="text" name="pname"></td></tr>
        <tr><td>price</td>  <td><input type="text" name="price"></td></tr>
        <tr><td>pnum</td>  <td><input type="text" name="pnum"></td></tr>
        <tr><td>pstatus</td>  <td><input type="text" name="pstatus"></td></tr>
        <tr><td>pdescribe</td>  <td><input type="text" name="pdescribe"></td></tr>
        <td colspan=2><input type="submit" value="提交"></td>
    </table>
</form>
</center>
</body>
</html>