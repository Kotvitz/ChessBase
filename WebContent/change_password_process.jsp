<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.chessbase.app.db.ConnectionProvider"%>

<%
	String newPassword = request.getParameter("password");
	out.println(newPassword);
	String login = session.getAttribute("login").toString();
	out.println(login);
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("UPDATE user SET password=? WHERE login=?;");
	ps.setString(1, newPassword);
	ps.setString(2, login);
	ps.execute();
	
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath();
	String p = baseURL + "/user_profile.jsp";
	response.sendRedirect(p);
%>