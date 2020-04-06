<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.chessbase.app.db.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ChessBase - user profile</title>
<link rel="stylesheet" href="css/home_style.css">
<link rel="stylesheet" href="css/global_style.css">
<link rel="stylesheet" href="css/user_profile_style.css">
</head>
<body>
	<%
		if (session == null || session.getAttribute("login") == null)
			out.print("You are not logged in!");
		else {
	%>
	<div class="main-wrapper">
		<div id="page_header" class="pl-PL"></div>
		<div id="page_top_menu" class="pl-PL">
			<div id="top_menu" class="RadMenu">
				<ul class="rmRootGroup rmHorizontal">
					<li class="rmItem rmFirst"><a href=""
						title="Displays the user profile and allows you to modify it."
						class="rmLink rmRootLink"><span class="rmText">Your
								profile</span></a></li>
					<li class="rmItem "><a href=""
						title="Go to the chess database." class="rmLink rmRootLink"><span
							class="rmText">Base</span></a></li>
					<li class="rmItem rmLast"><a href=""
						title="Logs the user out of the system." class="rmLink rmRootLink"><span
							class="rmText">Log out</span></a></li>
				</ul>
			</div>
		</div>
		<%
			String login = session.getAttribute("login").toString();
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user where login=?");
			ps.setString(1, login);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
		%>
		<div id="user-profile">
			<table id="user-profile-table">
				<tr>
					<td>Name:</td>
					<td><%=rs.getString(2)%></td>
				</tr>
				<tr>
					<td>Surname:</td>
					<td><%=rs.getString(3)%></td>
				</tr>
				<tr>
					<td>Login:</td>
					<td><%=rs.getString(4)%></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><%=rs.getString(5)%></td>
				</tr>
				<tr>
					<td>Role:</td>
					<td>
						<%
							int role = rs.getInt(7);
								if (role == 1)
									out.println("admin");
								else
									out.println("user");
						%>
					</td>
				</tr>
			</table>
			<div id="chpass_button_container" class="chpass_button">
				<button id="butChpass" type="button">Change password</button>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<%
		}
	%>
</body>
</html>