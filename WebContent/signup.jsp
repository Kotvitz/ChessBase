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
						<span id="sign_up" class="page_title">Please fill in this form to create an account</span>
						<div class="center_content">
							<div class="login_field">
								<span id="login_label" class="label">E-mail:</span>
								<input name="login_input" type="text" id="=text_ident" tabindex="1"><br>
								<span id="valReqLogin" class="validator_error" style="color:Red;display:none;">Please enter your login!</span>
							</div>
							<div class="login_field">
								<span id="pswd_label" class="label">Password:</span>
								<input name="txtpswd" type="password" id="txtpswd" tabindex="2"><br>
								<span id="valReqPswd" class="validator_error" style="color:Red;display:none;">Enter a password!</span>
							</div>
							<div class="login_field">
								<span id="pswdrep_label" class="label">Repeat password:</span>
								<input name="txtpswdrep" type="password" id="txtpswdrep" tabindex="2"><br>
								<span id="valReqPswdMatch" class="validator_error" style="color:Red;display:none;">The passwords must match!</span>
							</div>
							<div class="login_field clear"></div>
						</div>
						<div class="center_content">
							<div id="sign_up_button_container" class="sign_up_button">
								<input type="submit" name="butLogin" value="Sign up" onclick="" id="butLogin" tabindex="5" class="buttonL">
							</div>
						</div>	
					</div>
				</div>
			</div>		
		</div>			
	</form>
</body>
</html>