<%@page import="com.chessbase.app.game.GameDao"%>
<jsp:useBean id="obj" class="com.chessbase.app.game.Game" />

<jsp:setProperty property="*" name="obj" />

<%
	GameDao.deleteGame(obj);
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath();
	String p = baseURL + "/delete_game.jsp";
	response.sendRedirect(p);
%>