<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Browse a game</title>
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
		<form method="post" action="browse_result.jsp">
			<div id="page_content">
				<div id="page_content_inner">
					<div id="page_middle_content">
						<div id="browser_panel">
							<span id="sign_up" class="page_title">Browse chess base
								data</span>
							<div class="center_content">
								<div class="browser_row">
									<span id="site_label" class="label">Site:</span> <input
										name="site" type="text" id="=text_ident" tabindex="1"><br>
								</div>
								<div class="browser_row">
									<span id="date_label" class="label">Date:</span> <input
										name="date" type="text" id="=text_ident" tabindex="1"><br>
								</div>
								<div class="browser_row">
									<span id="email_label" class="label">White:</span> <input
										name="white" type="text" id="=text_ident" tabindex="1"><br>
								</div>
								<div class="browser_row">
									<span id="black_label" class="label">Black:</span> <input
										name="black" type="text" id="=text_ident" tabindex="1"><br>
								</div>
								<div class="browser_row">
									<span id="result_label" class="label">Result:</span> <input
										name="result" type="text" id="=text_ident" tabindex="1"><br>
								</div>
								<div class="browser_row">
									<span id="moves_label" class="label">Moves:</span> <input
										name="moves" type="text" id="=text_ident" tabindex="1"><br>
								</div>
								<div class="browser_row clear"></div>
							</div>
							<div class="center_content">
								<div id="browse_button_container" class="browse_button">
									<input type="submit" value="Browse" id="butBrowse" tabindex="5"
										class="buttonB">
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