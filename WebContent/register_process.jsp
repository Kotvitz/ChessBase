<%@page import="com.chessbase.app.register.RegisterDao"%>
<jsp:useBean id="obj" class="com.chessbase.app.register.User" />

<jsp:setProperty property="*" name="obj" />

<%
	int status = RegisterDao.register(obj);
	if (status > 0)
		response.sendRedirect("http://localhost:8080/ChessBase");
%>
