<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.User" %>
<%
User loginUser = (User) session.getAttribute("loginUser");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>どこつぶ</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>
	<div class = outer>
		<div class = inner>
			<h1>どこつぶログイン</h1>
			<% if(loginUser != null){ %>
				<p>ログインに成功しました！</p>
				<p>ようこそ<%= loginUser.getName() %>さん</p>
				<p><a href = "/docoTsubu/Main">つぶやき投稿・閲覧画面へ</a></p>
			<% } else { %>
				<p>ログインに失敗しました。</p>
				<a href = "/docoTsubu/">TOPへ</a>
			<% } %>
		</div>
	</div>
</body>
</html>