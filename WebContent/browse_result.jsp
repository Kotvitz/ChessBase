<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.chessbase.app.game.GameDao"%>
<%@page import="com.chessbase.app.game.Game"%>
<%@page import="java.util.List"%>
<jsp:useBean id="obj" class="com.chessbase.app.game.Game" />

<jsp:setProperty property="*" name="obj" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<link rel="stylesheet" href="css/browse_result_table_style.css">
</head>
<body>
	<%
		List<Game> games = GameDao.getGames(obj);
		String url = request.getRequestURL().toString();
		String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
				+ request.getContextPath();
		if (games.isEmpty()) {
			out.print("Nothing found.");
		} else {
	%>
	<table class="browse-result-table">
		<thead>
			<tr>
				<th>Id</th>
				<th>Site</th>
				<th>Date</th>
				<th>White</th>
				<th>Black</th>
				<th>Result</th>
				<th>Moves</th>
			</tr>
			</thead>
			<tbody>
			<%
				for (Game game : games) {
			%>
			<tr>
				<td><%=game.getId()%></td>
				<td><%=game.getSite()%></td>
				<td><%=game.getDate()%></td>
				<td><%=game.getWhite()%></td>
				<td><%=game.getBlack()%></td>
				<td><%=game.getResult()%></td>
				<td><%=game.getMoves()%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<%
		}
	%>
</body>
</html>