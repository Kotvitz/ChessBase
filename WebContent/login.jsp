<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ChessBase</title>
<link rel="stylesheet" href="css/global_style.css">
<link rel="stylesheet" href="css/sign_in_up_panel_style.css">
</head>
<body>
	<form id="sign_in_form" method="post" action="login_process.jsp">
		<div id="page_content">
			<div id="page_content_inner">
				<div id="page_middle_content">
					<div id="main_panel">
						<span id="sign_in" class="page_title">Chess base
							application</span>
						<div class="center_content">
							<div class="login_field">
								<span id="login_label" class="label">Login:<span
									class="req">*</span></span> <input name="login" type="text"
									id="text_ident" tabindex="1" required autocomplete="off"><br>
							</div>
							<div class="login_field">
								<span id="pswd_label" class="label">Password:<span
									class="req">*</span></span> <input name="password" type="password"
									id="txtpswd" tabindex="2" required autocomplete="off"><br>
							</div>
							<div class="login_field clear"></div>
						</div>
						<div class="center_content">
							<div id="login_button_container" class="login_button">
								<input type="submit" value="Sign in" id="butLogin"
									tabindex="5" class="buttonL">
							</div>
							<div id="register_link_container" class="register_link">
								<a href="signup.jsp" style="color: #125bd0;">Sign up</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>