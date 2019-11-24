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
	<form id="sign_in_form" method="post" action="main.jsp" onsubmit="">
		<div id="page_content">
			<div id="page_content_inner">
				<div id="page_middle_content">
					<div id="main_panel">
						<span id="sign_in" class="page_title">Chess base application</span>
						<div class="center_content">
							<div class="login_field">
								<span id="email_label" class="label">E-mail:<span class="req">*</span></span>
								<input name="email_input" type="text" id="text_ident" tabindex="1" required autocomplete="off"><br>
							</div>
							<div class="login_field">
								<span id="pswd_label" class="label">Password:<span class="req">*</span></span>
								<input name="txtpswd" type="password" id="txtpswd" tabindex="2" required autocomplete="off"><br>
							</div>
							<div class="login_field clear"></div>
						</div>
						<div class="center_content">
							<div id="login_button_container" class="login_button">
								<input type="submit" name="butLogin" value="Sign in" onclick="" id="butLogin" tabindex="5" class="buttonL">
							</div>
							<div id="register_link_container" class="register_link">
								<a href="signup.jsp" style="color: #125bd0;">Sign up</a>
							</div>
						</div>
						<div class="center_content">
							<div id="loginAs" class="login_as"><span id="label5" class="label" style="border-color:Transparent;">Sign in as:</span>
								<table id="who" size="10" border="0">
									<tbody>
										<tr>
											<td>
												<input id="who_0" type="radio" name="who" value="user" checked="checked" tabindex="3">
												<label for="who_0">user</label>
											</td>
											<td>
												<input id="who_1" type="radio" name="who" value="admin" tabindex="3">
												<label for="who_1">admin</label>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>	
</body>
</html>