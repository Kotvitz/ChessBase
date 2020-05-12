<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Base</title>
<link rel="stylesheet" href="css/base_style.css">
<link rel="stylesheet" href="css/home_style.css">
<link rel="stylesheet" href="css/any_form_style.css">
<link rel="stylesheet" href="css/global_style.css">
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
					<li class="rmItem rmFirst"><a
						href="/ChessBase/user_profile.jsp"
						title="Displays the user profile and allows you to modify it."
						class="rmLink rmRootLink"><span class="rmText">Your
								profile</span></a></li>
					<li class="rmItem "><a href="/ChessBase/base.jsp"
						title="Go to the chess database." class="rmLink rmRootLink"><span
							class="rmText">Base</span></a></li>
					<li class="rmItem rmLast"><a href="/ChessBase/logout.jsp"
						title="Logs the user out of the system." class="rmLink rmRootLink"><span
							class="rmText">Log out</span></a></li>
				</ul>
			</div>
		</div>
		<div id="page_content">
			<div id="page_content_inner">
				<span class="page_title">Choose what you want to do:</span>
				<div id="base_panel">
					<%
						boolean isAdmin = Boolean.FALSE == session.getAttribute("admin");
							if (isAdmin) {
					%>
					<ul>
						<li><a href="browse_data.jsp">Browse data</a></li>
						<li><a href="delete_game.jsp">Delete a game</a></li>
						<li><a href="update_data.jsp">Update data</a></li>
						<li><a href="add_new_game.jsp">Add a new game</a></li>
					</ul>
					<%
						} else {
					%>
					<ul>
						<li><a href="browse_data.jsp">Browse data</a></li>
					</ul>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>