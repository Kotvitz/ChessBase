<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change your password</title>
<link rel="stylesheet" href="css/global_style.css">
<link rel="stylesheet" href="css/sign_in_up_panel_style.css">
<link rel="stylesheet" href="css/any_form_style.css">
</head>
<body>
	<form id="update_form" action="change_password_process.jsp"
		method="get">
		<div id="page_content">
			<div id="page_content_inner">
				<div id="page_middle_content">
					<div id="main_panel">
						<div class="center_content">
							<div class="input_field">
								<span id="new_password" class="label">New password:<span
									class="req">*</span></span> <input name="password" type="password"
									id="=text_ident" style="width: 320px;" tabindex="1" required><br>
							</div>
							<div class="input_field">
								<span id="new_password_rep" class="label">Repeat the new
									password:<span class="req">*</span>
								</span> <input name="password" type="password" id="=text_ident"
									style="width: 320px;" tabindex="1" required><br>
							</div>
							<div class="input_field clear"></div>
						</div>
						<div class="center_content">
							<div id="submit_button_container" class="submit_button">
								<input type="submit" value="Submit" id="butSubmit" tabindex="5"
									class="buttonS">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>