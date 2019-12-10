<%@page import="com.chessbase.app.login.LoginDao"%>
<jsp:useBean id="obj" class="com.chessbase.app.login.Login" />

<jsp:setProperty property="*" name="obj" />

<%
	boolean status = LoginDao.validate(obj);
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) 
			+ request.getContextPath();
	if (LoginDao.validate(obj)) {
		String p = baseURL + "/home.jsp";
		if (LoginDao.isAdmin(obj))
			p = baseURL + "/home_admin.jsp";
		response.sendRedirect(p);
	} else {
		out.print("Wrong email or password!");
	}
%>
