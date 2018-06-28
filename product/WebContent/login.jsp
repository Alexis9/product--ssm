<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>product</title>
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>css/login.css" />
<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
</head>
<body background="<%=basePath%>images/bg.jpg">
	<form action="<%=basePath%>login" method="post"
		onsubmit="return checkName()" style="text-align: center">
		<div class="main">
			<table>
				<tr>
					<td colspan="2"><h3 style="text-align: center">商品进销存系统</h3>
						<hr style="margin: 0"></td>
				</tr>
				<tr>
					<td><img class="person" src="images/username.png"> <input
						type="text" id="unumber" name="unumber" placeholder="用户名"
						class="input" maxlength="10"></td>
				</tr>
				<tr>
					<td><img class="mima" src="images/password.png"> <input
						type="password" id="upwd" name="upwd" placeholder="密码"
						class="input" maxlength="10"></td>
				</tr>
				<tr>

					<td><input type="submit" class="btn" value="登录" id="login">
						
				</tr>
			</table>
		</div>

	</form>
</body>
</html>