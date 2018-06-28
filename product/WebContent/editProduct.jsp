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
<title>editProduct</title>
<link rel="stylesheet" href="<%=basePath%>css/addProduct.css"
	type="text/css">
</head>
<body background="<%=basePath%>images/bg.jpg">
	<center>
		<form action="updateProduct" method="post">
			<table>
				<tr>
					<td>pid</td>
					<td><input type="text" name="pid" value="${p.pid }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>pname</td>
					<td><input type="text" name="pname" value=${p.pname }></td>
				</tr>
				<tr>
					<td>price</td>
					<td><input type="text" name="price" value=${p.price }></td>
				</tr>
				<tr>
					<td>pnum</td>
					<td><input type="text" name="pnum" value=${p.pnum }></td>
				</tr>
				<tr>
					<td>pstatus</td>
					<td><input type="text" name="pstatus" value=${p.pstatus }></td>
				</tr>
				<tr>
					<td>pdescribe</td>
					<td><input type="text" name="pdescribe" value=${p.pdescribe }></td>
				</tr>
				<td colspan=2><input type="submit" value="完成"></td>
			</table>
		</form>
	</center>
</body>
</html>