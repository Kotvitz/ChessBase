<%@page import="com.chessbase.app.register.RegisterDao"%>
<jsp:useBean id="obj" class="com.chessbase.app.register.User" />

<jsp:setProperty property="*" name="obj" />

<%
	int status = RegisterDao.register(obj);
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) 
		+ request.getContextPath();
	if (status > 0)
		response.sendRedirect(baseURL);
%>
