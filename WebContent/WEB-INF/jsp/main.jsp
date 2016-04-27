<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.User, model.Mutter,java.util.List" %>
<%
User loginUser = (User) session.getAttribute("loginUser");

List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>どこつぶ</title>
<link rel="stylesheet" type="text/css" href="Style.css">


</style>
</head>
<body>
	<h1>どこつぶメイン</h1>
	<p>
	<%= loginUser.getName() %>さんログイン中
	</p>
	<p><a href = "/docoTsubu/Logout">ログアウト</a></p>

	<p><a href = "/docoTsubu/Main"></a></p>
	<form action = "/docoTsubu/Main" method = "post">
	<% if (errorMsg != null) { %>
	<p style= color:red><%= errorMsg %></p>
	<% } %>
		<textarea name = "text" class=mutter></textarea><br>
		<input type = "submit" value = "つぶやく">
	</form>
	<table border =1>
		<% for(Mutter mutter : mutterList){ %>
		<p><tr><td class="name"><%=mutter.getUserName() %> : </td><td class = "text"><%=mutter.getText() %></td></tr></p>
		<%} %>
	</table>
</body>
</html>