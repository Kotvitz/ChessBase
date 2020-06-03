<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.chessbase.app.game.GameDao"%>
<%@page import="com.chessbase.app.game.Game"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game update</title>
<link rel="stylesheet" href="css/global_style.css">
<link rel="stylesheet" href="css/sign_in_up_panel_style.css">
<link rel="stylesheet" href="css/any_form_style.css">
</head>
<body>
	<form id="update_form" action="update_process.jsp">
		<div id="page_content">
			<div id="page_content_inner">
				<div id="page_middle_content">
					<div id="main_panel">
						<div class="center_content">
							<%
								String id = request.getParameter("id");
								Game game = GameDao.getGameById(Long.parseLong(id));
							%>
							<div class="input_field">
								<span id="id_label" class="label">ID:</span> <input readonly
									name="id" type="text" value=<%=game.getId()%> id="=text_ident"
									tabindex="1"><br>
							</div>
							<div class="input_field">
								<span id="site_label" class="label">Site:<span
									class="req">*</span></span> <input name="site" type="text"
									value=<%=game.getSite().replace(" ", "&nbsp;")%>
									id="=text_ident" tabindex="1" required><br>
							</div>
							<div class="input_field">
								<span id="date_label" class="label">Date:<span
									class="req">*</span></span> <input name="date" type="text"
									value=<%=game.getDate().replace(" ", "&nbsp;")%>
									id="=text_ident" tabindex="1" required><br>
							</div>
							<div class="input_field">
								<span id="white_label" class="label">White:<span
									class="req">*</span></span> <input name="white" type="text"
									value=<%=game.getWhite().replace(" ", "&nbsp;")%>
									id="=text_ident" tabindex="1" required><br>
							</div>
							<div class="input_field">
								<span id="black_label" class="label">Black:<span
									class="req">*</span></span> <input name="black" type="text"
									value=<%=game.getBlack().replace(" ", "&nbsp;")%>
									id="=text_ident" tabindex="1" required><br>
							</div>
							<div class="input_field">
								<span id="result_label" class="label">Result:<span
									class="req">*</span></span> <input name="result" type="text"
									value=<%=game.getResult()%> id="=text_ident" tabindex="2"
									required><br>
							</div>
							<div class="input_field">
								<span id="moves_label" class="label">Moves:<span
									class="req">*</span></span> <input name="moves" type="text"
									value=<%=game.getMoves()%> id="=text_ident" tabindex="2"
									required><br>
							</div>
							<div class="input_field">
								<span id="course_label" class="label">Course:<span
									class="req">*</span></span> <input name="course" type="text"
									value=<%=game.getCourse().replace(" ", "&nbsp;")%>
									id="=text_ident" tabindex="2" required><br>
							</div>
							<div class="input_field clear"></div>
						</div>
						<div class="center_content">
							<div id="update_button_container" class="update_button">
								<input type="submit" value="Update" id="butUpdate" tabindex="5"
									class="buttonU">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>