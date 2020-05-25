<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update a game data</title>
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
		<form method="post" action="update_form.jsp">
			<div id="page_content">
				<div id="page_content_inner">
					<div id="page_middle_content">
						<div id="base_form_panel">
							<span id="sign_up" class="page_title">Enter a ID of the game whose details you want to update:</span>
							<div class="center_content">
								<div class="base_form_row">
									<span id="site_label" class="label">ID:</span> <input
										name="site" type="text" id="=text_ident" tabindex="1" required><br>
								</div>
								<div class="base_form_row clear"></div>
							</div>
							<div class="center_content">
								<div id="update_button_container" class="update_button">
									<input type="submit" value="OK" id="butUpdate" tabindex="5"
										class="buttonU">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%
		}
	%>
</body>
</html>